#!/usr/bin/env python
# -*- coding: utf-8 -*-

import rospy
import actionlib
from niryo_robot_msgs.msg import RobotState
from niryo_robot_arm_commander.msg import RobotMoveAction, RobotMoveGoal, ArmMoveCommand
from niryo_robot_msgs.srv import SetBool, SetInt
from tools_interface.srv import ToolCommand
from niryo_robot_msgs.srv import Trigger


def calibrate_motors():
    rospy.wait_for_service('/niryo_robot/joints_interface/calibrate_motors') #espera inicialización de servicio. Se podría agregar timeount: (service, timeout=x)

    service = rospy.ServiceProxy('/niryo_robot/joints_interface/calibrate_motors', SetInt) #crea objeto llamable (como crear una función de un service), (service, typ. dato)

    result = service(1) #llama a service con valor uno, equivalente a rosservice call --- "value: 1"

    rospy.loginfo("Calibration: " + result.message)
    rospy.sleep(3)


def set_learning_mode(state):
    rospy.wait_for_service('/niryo_robot/learning_mode/activate')
    service = rospy.ServiceProxy('/niryo_robot/learning_mode/activate', SetBool)
    result = service(state)
    rospy.loginfo("Learning mode: " + result.message)
    rospy.sleep(1)


def read_position():
    msg = rospy.wait_for_message('/niryo_robot/robot_state', RobotState)
    return {
        'x':     msg.position.x,
        'y':     msg.position.y,
        'z':     msg.position.z,
        'roll':  msg.rpy.roll,
        'pitch': msg.rpy.pitch,
        'yaw':   msg.rpy.yaw
    }


def register_tool():
    rospy.wait_for_service('/niryo_robot_tools_commander/update_tool')
    update = rospy.ServiceProxy(
        '/niryo_robot_tools_commander/update_tool', Trigger)
    update()
    rospy.sleep(0.5)


def open_gripper():
    register_tool()
    rospy.wait_for_service('/niryo_robot/tools/open_gripper')
    gripper = rospy.ServiceProxy('/niryo_robot/tools/open_gripper', ToolCommand)
    gripper(id=13, position=600, speed=300, hold_torque=128, max_torque=1023)


def close_gripper():
    register_tool()
    rospy.wait_for_service('/niryo_robot/tools/close_gripper')
    gripper = rospy.ServiceProxy('/niryo_robot/tools/close_gripper', ToolCommand)
    gripper(id=13, position=230, speed=300, hold_torque=128, max_torque=1023)


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
    rospy.loginfo("Moving to x={:.3f} y={:.3f} z={:.3f}".format(x, y, z))
    client.send_goal(goal)
    client.wait_for_result()


def pick(x, y, z_hover, z_grip, roll, pitch, yaw):
    move_to_pose(x, y, z_hover, roll, pitch, yaw)
    open_gripper()
    move_to_pose(x, y, z_grip,  roll, pitch, yaw)
    close_gripper()
    move_to_pose(x, y, z_hover, roll, pitch, yaw)


def place(x, y, z_hover, z_grip, roll, pitch, yaw):
    move_to_pose(x, y, z_hover, roll, pitch, yaw)
    move_to_pose(x, y, z_grip,  roll, pitch, yaw)
    open_gripper()
    move_to_pose(x, y, z_hover, roll, pitch, yaw)


def main():
    rospy.init_node('pick_and_place')

    print("Pick and Place")
    calibrate_motors()
    set_learning_mode(True)

    # Step 1 - Z heights
    print("\nMove arm above object at safe travel height")
    raw_input("Press Enter to record Z_HOVER...")
    z_hover = read_position()['z']
    print("Z_HOVER: {:.4f}".format(z_hover))

    print("\nLower arm until gripper can grab the object")
    raw_input("Press Enter to record Z_GRIP...")
    grip    = read_position()
    z_grip  = grip['z']
    roll    = grip['roll']
    pitch   = grip['pitch']
    yaw     = grip['yaw']
    print("Z_GRIP: {:.4f}".format(z_grip))

    # Step 2 - XY positions
    print("\nMove arm above pick position")
    raw_input("Press Enter to record Position A...")
    pos_a = read_position()
    print("A: x={:.3f} y={:.3f}".format(pos_a['x'], pos_a['y']))

    print("\nMove arm above place position")
    raw_input("Press Enter to record Position B...")
    pos_b = read_position()
    print("B: x={:.3f} y={:.3f}".format(pos_b['x'], pos_b['y']))

    # Step 3 - Execute
    raw_input("\nPress Enter to execute pick and place...")
    set_learning_mode(False)

    print("Picking from A...")
    pick(pos_a['x'], pos_a['y'], z_hover, z_grip, roll, pitch, yaw)

    print("Placing at B...")
    place(pos_b['x'], pos_b['y'], z_hover, z_grip, roll, pitch, yaw)

    print("Done.")


if __name__ == '__main__':
    main()