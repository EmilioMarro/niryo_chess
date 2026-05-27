#!/usr/bin/env python
# -*- coding: utf-8 -*-
import rospy #type: ignore
import json 
import os
from niryo_robot_msgs.srv import GetNameDescriptionList          #type: ignore
from niryo_robot_poses_handlers.srv import GetPose               #type: ignore

OUTPUT = '/home/niryo/chess_bot/board_map.json'

def main():
    rospy.init_node('pose_extractor')

    rospy.wait_for_service('/niryo_robot_poses_handlers/get_pose_list')
    rospy.wait_for_service('/niryo_robot_poses_handlers/get_pose')

    list_srv = rospy.ServiceProxy('/niryo_robot_poses_handlers/get_pose_list', GetNameDescriptionList)
    pose_srv = rospy.ServiceProxy('/niryo_robot_poses_handlers/get_pose', GetPose)

    # Carga el JSON existente si existe — preserva casillas anteriores
    if os.path.exists(OUTPUT):
        with open(OUTPUT) as f:
            board = json.load(f)
        print("Loaded existing board_map ({} squares)".format(len(board)))
    else:
        board = {}
        print("Starting new board_map")

    # Lee todas las poses guardadas en Niryo Studio
    pose_list = list_srv()
    names     = pose_list.name_list
    print("Found {} poses in Niryo Studio".format(len(names)))

    updated = []  # casillas que se actualizaron en esta ejecucion

    for name in names:
        name_lower = name.lower()

        if ' hov' not in name_lower and ' cont' not in name_lower:
            continue

        square = name_lower.replace(' hov', '').replace(' cont', '')

        if square not in board:
            board[square] = {}

        result = pose_srv(name)
        joints = list(result.pose.joints)

        if ' hov' in name_lower:
            board[square]['hover']   = joints
        else:
            board[square]['contact'] = joints

        if square not in updated:
            updated.append(square)

    # Verifica integridad
    incomplete = [sq for sq, data in board.items()
                  if 'hover' not in data or 'contact' not in data]

    if incomplete:
        print("WARNING: incomplete squares (missing hover or contact): {}".format(incomplete))

    with open(OUTPUT, 'w') as f:
        json.dump(board, f, indent=2)

    print("Updated squares: {}".format(sorted(updated)))
    print("Total squares in board_map: {}".format(len(board)))
    print("Saved to {}".format(OUTPUT))

if __name__ == '__main__':
    main()