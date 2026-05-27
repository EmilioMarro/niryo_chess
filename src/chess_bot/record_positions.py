#!/usr/bin/env python
# -*- coding: utf-8 -*-

# POSITION RECORDER AND PLAYBACK
# -----------------------------------------------------------------------
# Records arm positions by hand and plays them back to verify accuracy.
# Used to map chess board corners for coordinate calibration.
#
# How to use:
#   1. Run: python record_positions.py
#   2. Wait for calibration to finish
#   3. When prompted, move arm by hand to each corner and press Enter
#   4. After recording, press Enter to watch the arm replay each position
#   5. Positions are saved to chess_bot/positions.json when done
# -----------------------------------------------------------------------

import rospy
import actionlib
import json

from niryo_robot_msgs.msg import RobotState
from niryo_robot_arm_commander.msg import RobotMoveAction, RobotMoveGoal, ArmMoveCommand
from niryo_robot_msgs.srv import SetBool, SetInt


def calibrate():
    # Runs the motor calibration routine on startup.
    # The robot does not know where its joints are until calibrated.
    # Must be called once every time the robot is powered on.
    rospy.wait_for_service('/niryo_robot/joints_interface/calibrate_motors')
    service = rospy.ServiceProxy(
        '/niryo_robot/joints_interface/calibrate_motors', SetInt)
    result = service(1)
    rospy.loginfo("Calibration: " + result.message)
    rospy.sleep(3)


def set_learning_mode(state):
    # Controls whether the motors are powered.
    # True  -> motors OFF, arm is loose, you can move it by hand
    # False -> motors ON, arm holds position and executes commands
    rospy.wait_for_service('/niryo_robot/learning_mode/activate')
    service = rospy.ServiceProxy(
        '/niryo_robot/learning_mode/activate', SetBool)
    result = service(state)
    rospy.loginfo("Learning mode: " + result.message)
    rospy.sleep(1)


def read_current_position():
    # Reads a single snapshot of where the arm currently is in space.
    # Returns a dictionary with x, y, z (position) and
    # roll, pitch, yaw (orientation of the gripper).
    # Uses wait_for_message() which grabs one message and stops --
    # no need for a continuous subscriber, we just need one reading.
    msg = rospy.wait_for_message('/niryo_robot/robot_state', RobotState)
    return {
        'x':     msg.position.x,
        'y':     msg.position.y,
        'z':     msg.position.z,
        'roll':  msg.rpy.roll,
        'pitch': msg.rpy.pitch,
        'yaw':   msg.rpy.yaw
    }


def move_to_pose(position):
    # Sends the arm to a specific position in space using XYZ + RPY.
    # MoveIt handles the math of figuring out which joint angles
    # are needed to reach that point -- we just specify where to go.
    # Takes a position dictionary as returned by read_current_position().
    client = actionlib.SimpleActionClient(
        '/niryo_robot_arm_commander/robot_action', RobotMoveAction)
    client.wait_for_server()

    goal = RobotMoveGoal()
    goal.cmd.cmd_type   = ArmMoveCommand.POSE
    goal.cmd.position.x = position['x']
    goal.cmd.position.y = position['y']
    goal.cmd.position.z = position['z']
    goal.cmd.rpy.roll   = position['roll']
    goal.cmd.rpy.pitch  = position['pitch']
    goal.cmd.rpy.yaw    = position['yaw']

    rospy.loginfo("Moving to: x={:.3f} y={:.3f} z={:.3f}".format(
        position['x'], position['y'], position['z']))

    client.send_goal(goal)
    client.wait_for_result()
    return client.get_result()


def save_positions(positions, filename='/home/niryo/chess_bot/positions.json'):
    # Saves all recorded positions to a JSON file on disk.
    # JSON is a human-readable format -- open the file in any
    # text editor to see the exact coordinates that were recorded.
    # This file is later used to calculate all 64 board squares.
    with open(filename, 'w') as f:
        json.dump(positions, f, indent=2)
    rospy.loginfo("Saved to " + filename)


def record_positions(labels):
    # Turns motors off and waits for the user to manually position
    # the arm at each location. Pressing Enter records the current
    # position and moves on to the next one.
    # labels is a list of strings describing each position.
    recorded = []
    print("Learning mode ON -- move the arm by hand")
    set_learning_mode(True)

    for i, label in enumerate(labels):
        print("\n{} of {} -- move arm to: {}".format(
            i+1, len(labels), label))
        raw_input("Press Enter to record...")

        position = read_current_position()
        position['label'] = label
        recorded.append(position)

        print("Recorded: x={:.3f} y={:.3f} z={:.3f}".format(
            position['x'], position['y'], position['z']))

    print("All positions recorded.")
    return recorded


def playback_positions(positions):
    # Re-engages the motors and moves the arm to each recorded
    # position in order. Used to verify the recorded coordinates
    # are accurate before saving them permanently.
    print("Engaging motors...")
    set_learning_mode(False)
    rospy.sleep(1)

    for i, position in enumerate(positions):
        print("\nMoving to {} ({} of {})".format(
            position['label'], i+1, len(positions)))
        move_to_pose(position)
        rospy.sleep(1)

    print("Playback complete.")


def main():
    rospy.init_node('position_recorder')

    print("Position Recorder")
    print("Calibrating...")
    calibrate()

    # The 3 board corners needed to mathematically derive all 64 squares.
    # A1 and H1 define the near edge. A1 and A8 define the left edge.
    # Every other square is interpolated from these 3 points.
    labels = [
        "A1 - near left corner",
        "H1 - near right corner",
        "A8 - far left corner"
    ]

    positions = record_positions(labels)

    raw_input("\nPress Enter to start playback...")
    playback_positions(positions)

    save_positions(positions)
    print("Done. Saved to ~/chess_bot/positions.json")


if __name__ == '__main__':
    main()