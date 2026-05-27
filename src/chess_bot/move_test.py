#!/usr/bin/env python

import rospy
import actionlib
from niryo_robot_arm_commander.msg import RobotMoveAction, RobotMoveGoal, ArmMoveCommand

def calibrate():
    from niryo_robot_msgs.srv import SetInt as SetIntSrv
    rospy.wait_for_service('/niryo_robot/joints_interface/calibrate_motors')
    calibrate_service = rospy.ServiceProxy(
        '/niryo_robot/joints_interface/calibrate_motors', SetIntSrv)
    result = calibrate_service(1)
    rospy.loginfo("Calibration: %s", result.message)
    rospy.sleep(3)  # wait for calibration to finish

def set_learning_mode(state):
    from niryo_robot_msgs.srv import SetBool as SetBoolSrv
    rospy.wait_for_service('/niryo_robot/learning_mode/activate')
    learning_mode_service = rospy.ServiceProxy(
        '/niryo_robot/learning_mode/activate', SetBoolSrv)
    result = learning_mode_service(state)
    rospy.loginfo("Learning mode: %s", result.message)
    rospy.sleep(1)

def move_joints(j1, j2, j3, j4, j5, j6):
    client = actionlib.SimpleActionClient(
        '/niryo_robot_arm_commander/robot_action', RobotMoveAction)
    
    rospy.loginfo("Waiting for action server...")
    client.wait_for_server()
    
    # Build the goal
    goal = RobotMoveGoal()
    goal.cmd.cmd_type = ArmMoveCommand.JOINTS
    goal.cmd.joints = [j1, j2, j3, j4, j5, j6]
    
    rospy.loginfo("Sending move command...")
    client.send_goal(goal)
    client.wait_for_result()
    
    result = client.get_result()
    rospy.loginfo("Move result: %s", result)
    return result

if __name__ == '__main__':
    rospy.init_node('chess_bot_mover')
    
    rospy.loginfo("=== Chess Bot Move Test ===")
    
    calibrate()
    set_learning_mode(False)  # motors ON
    move_joints(-1.5, 0.0, 0.0, 0.0, 1.0, 0.0)
    
    rospy.loginfo("Done.")
