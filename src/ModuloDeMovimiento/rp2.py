#!/usr/bin/env python
# -*- coding: utf-8 -*-
import rospy
import actionlib
import json
from niryo_robot_msgs.msg import RobotState
from niryo_robot_arm_commander.msg import RobotMoveAction, RobotMoveGoal, ArmMoveCommand
from niryo_robot_msgs.srv import SetBool, SetInt

# Gripper siempre apunta recto hacia abajo
# Pitch = 1.57 rad = 90 grados = perpendicular al suelo
# Ajusta PITCH si el gripper no queda perfectamente vertical
ROLL  = 0.0
PITCH = 1.57
YAW   = 0.0

# Offset de seguridad -- cuanto sube el brazo sobre la posicion grabada
# para no rozar la mesa al viajar entre posiciones
Z_OFFSET = 0.05   # 5cm sobre la posicion grabada


def calibrate():
    rospy.wait_for_service('/niryo_robot/joints_interface/calibrate_motors')
    service = rospy.ServiceProxy(
        '/niryo_robot/joints_interface/calibrate_motors', SetInt)
    result = service(1)
    rospy.loginfo("Calibration: " + result.message)
    rospy.sleep(3)


def set_learning_mode(state):
    rospy.wait_for_service('/niryo_robot/learning_mode/activate')
    service = rospy.ServiceProxy(
        '/niryo_robot/learning_mode/activate', SetBool)
    result = service(state)
    rospy.loginfo("Learning mode: " + result.message)
    rospy.sleep(1)


def read_current_position():
    msg = rospy.wait_for_message('/niryo_robot/robot_state', RobotState)
    return {
        'x': msg.position.x,
        'y': msg.position.y,
        'z': msg.position.z
        # roll/pitch/yaw NOT saved -- we use fixed constants instead
    }


def move_to_pose(x, y, z):
    # Always uses fixed ROLL, PITCH, YAW constants
    # Gripper always points straight down
    client = actionlib.SimpleActionClient(
        '/niryo_robot_arm_commander/robot_action', RobotMoveAction)
    client.wait_for_server()

    goal = RobotMoveGoal()
    goal.cmd.cmd_type   = ArmMoveCommand.POSE
    goal.cmd.position.x = x
    goal.cmd.position.y = y
    goal.cmd.position.z = z
    goal.cmd.rpy.roll   = ROLL
    goal.cmd.rpy.pitch  = PITCH
    goal.cmd.rpy.yaw    = YAW

    rospy.loginfo("Moving to x={:.3f} y={:.3f} z={:.3f}".format(x, y, z))
    client.send_goal(goal)
    client.wait_for_result()
    return client.get_result()


def save_positions(positions, filename='/home/niryo/chess_bot/positions.json'):
    with open(filename, 'w') as f:
        json.dump(positions, f, indent=2)
    rospy.loginfo("Saved to " + filename)


def record_positions(labels):
    recorded = []
    print("Learning mode ON -- move arm by hand")
    print("Position the arm directly above each point")
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
    # For each position:
    #   1. Move to recorded Z + offset (safe hover height)
    #   2. Move to recorded Z (actual position)
    #   3. Move back up to Z + offset
    print("Engaging motors...")
    set_learning_mode(False)
    rospy.sleep(1)

    for i, position in enumerate(positions):
        print("\nMoving to {} ({} of {})".format(
            position['label'], i+1, len(positions)))

        x = position['x']
        y = position['y']
        z = position['z']

        # Hover above first
        move_to_pose(x, y, z + Z_OFFSET)
        rospy.sleep(0.5)

        # Descend to recorded position
        move_to_pose(x, y, z)
        rospy.sleep(0.5)

        # Ascend back up
        move_to_pose(x, y, z + Z_OFFSET)
        rospy.sleep(1)

    print("Playback complete.")


def main():
    rospy.init_node('position_recorder')

    print("Position Recorder")
    print("Calibrating...")
    calibrate()

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