#!/usr/bin/env python
# -*- coding: utf-8 -*-

import rospy # type: ignore
import actionlib # type: ignore
import json

from niryo_robot_arm_commander.msg import RobotMoveAction, RobotMoveGoal, ArmMoveCommand #type: ignore
from niryo_robot_msgs.srv import SetBool, SetInt #type: ignore

BOARD_MAP_FILE = '/home/niryo/chess_bot/board_map.json'
Z_HOVER_OFFSET = 0.08   # 8cm above board surface


def calibrate():
    rospy.wait_for_service('/niryo_robot/joints_interface/calibrate_motors')
    service = rospy.ServiceProxy('/niryo_robot/joints_interface/calibrate_motors', SetInt)
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


def move_to_pose(x, y, z, roll, pitch, yaw):
    client = actionlib.SimpleActionClient(
        '/niryo_robot_arm_commander/robot_action', RobotMoveAction)
    client.wait_for_server()

    goal = RobotMoveGoal()
    goal.cmd.cmd_type   = ArmMoveCommand.POSE
    goal.cmd.position.x = x
    goal.cmd.position.y = y
    goal.cmd.position.z = z
    goal.cmd.rpy.roll   = roll
    goal.cmd.rpy.pitch  = pitch
    goal.cmd.rpy.yaw    = yaw

    rospy.loginfo("Moving to x={:.4f} y={:.4f} z={:.4f}".format(x, y, z))
    client.send_goal(goal)
    client.wait_for_result()
    return client.get_result()


def go_to_square(square, board, hover=True):
    # Moves arm to a chess square
    # hover=True  -> stops at hover height above square
    # hover=False -> descends to board surface level
    if square not in board:
        print("Unknown square: " + square)
        return

    pose = board[square]
    x     = pose['x']
    y     = pose['y']
    z     = pose['z']
    roll  = pose['roll']
    pitch = pose['pitch']
    yaw   = pose['yaw']

    if hover:
        print("Hovering over " + square.upper())
        move_to_pose(x, y, z + Z_HOVER_OFFSET, roll, pitch, yaw)
    else:
        print("Moving to " + square.upper() + " surface level")
        # hover first then descend
        move_to_pose(x, y, z + Z_HOVER_OFFSET, roll, pitch, yaw)
        move_to_pose(x, y, z, roll, pitch, yaw)


def load_board():
    with open(BOARD_MAP_FILE, 'r') as f:
        return json.load(f)


def main():
    rospy.init_node('board_navigator')

    print("Board Navigator")
    print("Calibrating...")
    calibrate()
    set_learning_mode(False)

    board = load_board()

    print("\nBoard loaded -- {} squares available".format(len(board)))
    print("Commands:")
    print("  e4        -> hover above e4")
    print("  e4 d      -> descend to e4 surface")
    print("  q         -> quit")

    while not rospy.is_shutdown():
        raw = raw_input("\nSquare: ").strip().lower() #type: ignore

        if raw == 'q':
            break

        parts = raw.split()
        if len(parts) == 0:
            continue

        square = parts[0]
        descend = len(parts) > 1 and parts[1] == 'd'

        # Validate input
        if len(square) != 2:
            print("Invalid square -- use format like e4, a1, h8")
            continue
        if square[0] not in 'abcdefgh':
            print("Invalid column -- use a through h")
            continue
        if square[1] not in '12345678':
            print("Invalid row -- use 1 through 8")
            continue

        go_to_square(square, board, hover=not descend)


if __name__ == '__main__':
    main()