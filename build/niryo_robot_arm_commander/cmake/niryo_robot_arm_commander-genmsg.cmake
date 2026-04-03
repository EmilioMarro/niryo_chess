# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "niryo_robot_arm_commander: 12 messages, 5 services")

set(MSG_I_FLAGS "-Iniryo_robot_arm_commander:/home/niryo/catkin_ws/src/niryo_robot_arm_commander/msg;-Iniryo_robot_arm_commander:/home/niryo/catkin_ws/devel/share/niryo_robot_arm_commander/msg;-Iactionlib_msgs:/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Iniryo_robot_msgs:/home/niryo/catkin_ws/src/niryo_robot_msgs/msg;-Itrajectory_msgs:/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(niryo_robot_arm_commander_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_arm_commander/msg/JointLimits.msg" NAME_WE)
add_custom_target(_niryo_robot_arm_commander_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_arm_commander" "/home/niryo/catkin_ws/src/niryo_robot_arm_commander/msg/JointLimits.msg" ""
)

get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_arm_commander/srv/GetJointLimits.srv" NAME_WE)
add_custom_target(_niryo_robot_arm_commander_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_arm_commander" "/home/niryo/catkin_ws/src/niryo_robot_arm_commander/srv/GetJointLimits.srv" "niryo_robot_arm_commander/JointLimits"
)

get_filename_component(_filename "/home/niryo/catkin_ws/devel/share/niryo_robot_arm_commander/msg/RobotMoveActionResult.msg" NAME_WE)
add_custom_target(_niryo_robot_arm_commander_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_arm_commander" "/home/niryo/catkin_ws/devel/share/niryo_robot_arm_commander/msg/RobotMoveActionResult.msg" "niryo_robot_arm_commander/RobotMoveResult:actionlib_msgs/GoalID:std_msgs/Header:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_arm_commander/srv/JogShift.srv" NAME_WE)
add_custom_target(_niryo_robot_arm_commander_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_arm_commander" "/home/niryo/catkin_ws/src/niryo_robot_arm_commander/srv/JogShift.srv" ""
)

get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_arm_commander/msg/CommandJog.msg" NAME_WE)
add_custom_target(_niryo_robot_arm_commander_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_arm_commander" "/home/niryo/catkin_ws/src/niryo_robot_arm_commander/msg/CommandJog.msg" ""
)

get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_arm_commander/msg/ShiftPose.msg" NAME_WE)
add_custom_target(_niryo_robot_arm_commander_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_arm_commander" "/home/niryo/catkin_ws/src/niryo_robot_arm_commander/msg/ShiftPose.msg" ""
)

get_filename_component(_filename "/home/niryo/catkin_ws/devel/share/niryo_robot_arm_commander/msg/RobotMoveAction.msg" NAME_WE)
add_custom_target(_niryo_robot_arm_commander_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_arm_commander" "/home/niryo/catkin_ws/devel/share/niryo_robot_arm_commander/msg/RobotMoveAction.msg" "niryo_robot_arm_commander/RobotMoveResult:niryo_robot_msgs/RPY:geometry_msgs/Pose:niryo_robot_arm_commander/RobotMoveGoal:std_msgs/Header:geometry_msgs/Twist:geometry_msgs/Quaternion:trajectory_msgs/JointTrajectoryPoint:niryo_robot_arm_commander/RobotMoveFeedback:geometry_msgs/Point:niryo_robot_arm_commander/ShiftPose:geometry_msgs/Vector3:niryo_robot_arm_commander/ArmMoveCommand:niryo_robot_arm_commander/RobotMoveActionGoal:trajectory_msgs/JointTrajectory:niryo_robot_arm_commander/RobotMoveActionResult:niryo_robot_msgs/RobotState:actionlib_msgs/GoalID:niryo_robot_arm_commander/RobotMoveActionFeedback:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_arm_commander/srv/GetIK.srv" NAME_WE)
add_custom_target(_niryo_robot_arm_commander_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_arm_commander" "/home/niryo/catkin_ws/src/niryo_robot_arm_commander/srv/GetIK.srv" "niryo_robot_msgs/RPY:niryo_robot_msgs/RobotState:geometry_msgs/Quaternion:geometry_msgs/Point:geometry_msgs/Vector3:geometry_msgs/Twist"
)

get_filename_component(_filename "/home/niryo/catkin_ws/devel/share/niryo_robot_arm_commander/msg/RobotMoveGoal.msg" NAME_WE)
add_custom_target(_niryo_robot_arm_commander_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_arm_commander" "/home/niryo/catkin_ws/devel/share/niryo_robot_arm_commander/msg/RobotMoveGoal.msg" "niryo_robot_msgs/RPY:std_msgs/Header:geometry_msgs/Quaternion:trajectory_msgs/JointTrajectoryPoint:geometry_msgs/Point:niryo_robot_arm_commander/ShiftPose:niryo_robot_arm_commander/ArmMoveCommand:trajectory_msgs/JointTrajectory:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_arm_commander/msg/ArmMoveCommand.msg" NAME_WE)
add_custom_target(_niryo_robot_arm_commander_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_arm_commander" "/home/niryo/catkin_ws/src/niryo_robot_arm_commander/msg/ArmMoveCommand.msg" "niryo_robot_msgs/RPY:std_msgs/Header:geometry_msgs/Quaternion:trajectory_msgs/JointTrajectoryPoint:geometry_msgs/Point:niryo_robot_arm_commander/ShiftPose:trajectory_msgs/JointTrajectory:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_arm_commander/srv/ComputeTrajectory.srv" NAME_WE)
add_custom_target(_niryo_robot_arm_commander_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_arm_commander" "/home/niryo/catkin_ws/src/niryo_robot_arm_commander/srv/ComputeTrajectory.srv" "std_msgs/Header:geometry_msgs/Quaternion:trajectory_msgs/JointTrajectory:geometry_msgs/Point:trajectory_msgs/JointTrajectoryPoint:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/niryo/catkin_ws/devel/share/niryo_robot_arm_commander/msg/RobotMoveActionFeedback.msg" NAME_WE)
add_custom_target(_niryo_robot_arm_commander_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_arm_commander" "/home/niryo/catkin_ws/devel/share/niryo_robot_arm_commander/msg/RobotMoveActionFeedback.msg" "niryo_robot_msgs/RPY:geometry_msgs/Twist:niryo_robot_msgs/RobotState:std_msgs/Header:geometry_msgs/Quaternion:niryo_robot_arm_commander/RobotMoveFeedback:geometry_msgs/Point:geometry_msgs/Vector3:actionlib_msgs/GoalID:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_arm_commander/srv/GetFK.srv" NAME_WE)
add_custom_target(_niryo_robot_arm_commander_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_arm_commander" "/home/niryo/catkin_ws/src/niryo_robot_arm_commander/srv/GetFK.srv" "niryo_robot_msgs/RPY:niryo_robot_msgs/RobotState:geometry_msgs/Quaternion:geometry_msgs/Point:geometry_msgs/Vector3:geometry_msgs/Twist"
)

get_filename_component(_filename "/home/niryo/catkin_ws/devel/share/niryo_robot_arm_commander/msg/RobotMoveFeedback.msg" NAME_WE)
add_custom_target(_niryo_robot_arm_commander_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_arm_commander" "/home/niryo/catkin_ws/devel/share/niryo_robot_arm_commander/msg/RobotMoveFeedback.msg" "niryo_robot_msgs/RPY:niryo_robot_msgs/RobotState:geometry_msgs/Quaternion:geometry_msgs/Point:geometry_msgs/Vector3:geometry_msgs/Twist"
)

get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_arm_commander/msg/PausePlanExecution.msg" NAME_WE)
add_custom_target(_niryo_robot_arm_commander_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_arm_commander" "/home/niryo/catkin_ws/src/niryo_robot_arm_commander/msg/PausePlanExecution.msg" ""
)

get_filename_component(_filename "/home/niryo/catkin_ws/devel/share/niryo_robot_arm_commander/msg/RobotMoveResult.msg" NAME_WE)
add_custom_target(_niryo_robot_arm_commander_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_arm_commander" "/home/niryo/catkin_ws/devel/share/niryo_robot_arm_commander/msg/RobotMoveResult.msg" ""
)

get_filename_component(_filename "/home/niryo/catkin_ws/devel/share/niryo_robot_arm_commander/msg/RobotMoveActionGoal.msg" NAME_WE)
add_custom_target(_niryo_robot_arm_commander_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_arm_commander" "/home/niryo/catkin_ws/devel/share/niryo_robot_arm_commander/msg/RobotMoveActionGoal.msg" "niryo_robot_msgs/RPY:geometry_msgs/Pose:niryo_robot_arm_commander/RobotMoveGoal:std_msgs/Header:geometry_msgs/Quaternion:trajectory_msgs/JointTrajectoryPoint:geometry_msgs/Point:niryo_robot_arm_commander/ShiftPose:niryo_robot_arm_commander/ArmMoveCommand:trajectory_msgs/JointTrajectory:actionlib_msgs/GoalID"
)

#
#  langs = gencpp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(niryo_robot_arm_commander
  "/home/niryo/catkin_ws/devel/share/niryo_robot_arm_commander/msg/RobotMoveFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/niryo/catkin_ws/src/niryo_robot_msgs/msg/RPY.msg;/home/niryo/catkin_ws/src/niryo_robot_msgs/msg/RobotState.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_arm_commander
)
_generate_msg_cpp(niryo_robot_arm_commander
  "/home/niryo/catkin_ws/devel/share/niryo_robot_arm_commander/msg/RobotMoveActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/niryo/catkin_ws/devel/share/niryo_robot_arm_commander/msg/RobotMoveResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_arm_commander
)
_generate_msg_cpp(niryo_robot_arm_commander
  "/home/niryo/catkin_ws/src/niryo_robot_arm_commander/msg/CommandJog.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_arm_commander
)
_generate_msg_cpp(niryo_robot_arm_commander
  "/home/niryo/catkin_ws/src/niryo_robot_arm_commander/msg/ShiftPose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_arm_commander
)
_generate_msg_cpp(niryo_robot_arm_commander
  "/home/niryo/catkin_ws/devel/share/niryo_robot_arm_commander/msg/RobotMoveAction.msg"
  "${MSG_I_FLAGS}"
  "/home/niryo/catkin_ws/devel/share/niryo_robot_arm_commander/msg/RobotMoveResult.msg;/home/niryo/catkin_ws/src/niryo_robot_msgs/msg/RPY.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/niryo/catkin_ws/devel/share/niryo_robot_arm_commander/msg/RobotMoveGoal.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/home/niryo/catkin_ws/devel/share/niryo_robot_arm_commander/msg/RobotMoveFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/niryo/catkin_ws/src/niryo_robot_arm_commander/msg/ShiftPose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/niryo/catkin_ws/src/niryo_robot_arm_commander/msg/ArmMoveCommand.msg;/home/niryo/catkin_ws/devel/share/niryo_robot_arm_commander/msg/RobotMoveActionGoal.msg;/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/home/niryo/catkin_ws/devel/share/niryo_robot_arm_commander/msg/RobotMoveActionResult.msg;/home/niryo/catkin_ws/src/niryo_robot_msgs/msg/RobotState.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/niryo/catkin_ws/devel/share/niryo_robot_arm_commander/msg/RobotMoveActionFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_arm_commander
)
_generate_msg_cpp(niryo_robot_arm_commander
  "/home/niryo/catkin_ws/devel/share/niryo_robot_arm_commander/msg/RobotMoveActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/niryo/catkin_ws/src/niryo_robot_msgs/msg/RPY.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/niryo/catkin_ws/devel/share/niryo_robot_arm_commander/msg/RobotMoveGoal.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/niryo/catkin_ws/src/niryo_robot_arm_commander/msg/ShiftPose.msg;/home/niryo/catkin_ws/src/niryo_robot_arm_commander/msg/ArmMoveCommand.msg;/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_arm_commander
)
_generate_msg_cpp(niryo_robot_arm_commander
  "/home/niryo/catkin_ws/devel/share/niryo_robot_arm_commander/msg/RobotMoveGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/niryo/catkin_ws/src/niryo_robot_msgs/msg/RPY.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/niryo/catkin_ws/src/niryo_robot_arm_commander/msg/ShiftPose.msg;/home/niryo/catkin_ws/src/niryo_robot_arm_commander/msg/ArmMoveCommand.msg;/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_arm_commander
)
_generate_msg_cpp(niryo_robot_arm_commander
  "/home/niryo/catkin_ws/src/niryo_robot_arm_commander/msg/ArmMoveCommand.msg"
  "${MSG_I_FLAGS}"
  "/home/niryo/catkin_ws/src/niryo_robot_msgs/msg/RPY.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/niryo/catkin_ws/src/niryo_robot_arm_commander/msg/ShiftPose.msg;/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_arm_commander
)
_generate_msg_cpp(niryo_robot_arm_commander
  "/home/niryo/catkin_ws/devel/share/niryo_robot_arm_commander/msg/RobotMoveActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/niryo/catkin_ws/src/niryo_robot_msgs/msg/RPY.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/home/niryo/catkin_ws/src/niryo_robot_msgs/msg/RobotState.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/niryo/catkin_ws/devel/share/niryo_robot_arm_commander/msg/RobotMoveFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_arm_commander
)
_generate_msg_cpp(niryo_robot_arm_commander
  "/home/niryo/catkin_ws/src/niryo_robot_arm_commander/msg/JointLimits.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_arm_commander
)
_generate_msg_cpp(niryo_robot_arm_commander
  "/home/niryo/catkin_ws/devel/share/niryo_robot_arm_commander/msg/RobotMoveResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_arm_commander
)
_generate_msg_cpp(niryo_robot_arm_commander
  "/home/niryo/catkin_ws/src/niryo_robot_arm_commander/msg/PausePlanExecution.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_arm_commander
)

### Generating Services
_generate_srv_cpp(niryo_robot_arm_commander
  "/home/niryo/catkin_ws/src/niryo_robot_arm_commander/srv/GetJointLimits.srv"
  "${MSG_I_FLAGS}"
  "/home/niryo/catkin_ws/src/niryo_robot_arm_commander/msg/JointLimits.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_arm_commander
)
_generate_srv_cpp(niryo_robot_arm_commander
  "/home/niryo/catkin_ws/src/niryo_robot_arm_commander/srv/JogShift.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_arm_commander
)
_generate_srv_cpp(niryo_robot_arm_commander
  "/home/niryo/catkin_ws/src/niryo_robot_arm_commander/srv/GetFK.srv"
  "${MSG_I_FLAGS}"
  "/home/niryo/catkin_ws/src/niryo_robot_msgs/msg/RPY.msg;/home/niryo/catkin_ws/src/niryo_robot_msgs/msg/RobotState.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_arm_commander
)
_generate_srv_cpp(niryo_robot_arm_commander
  "/home/niryo/catkin_ws/src/niryo_robot_arm_commander/srv/ComputeTrajectory.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_arm_commander
)
_generate_srv_cpp(niryo_robot_arm_commander
  "/home/niryo/catkin_ws/src/niryo_robot_arm_commander/srv/GetIK.srv"
  "${MSG_I_FLAGS}"
  "/home/niryo/catkin_ws/src/niryo_robot_msgs/msg/RPY.msg;/home/niryo/catkin_ws/src/niryo_robot_msgs/msg/RobotState.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_arm_commander
)

### Generating Module File
_generate_module_cpp(niryo_robot_arm_commander
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_arm_commander
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(niryo_robot_arm_commander_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(niryo_robot_arm_commander_generate_messages niryo_robot_arm_commander_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_arm_commander/msg/JointLimits.msg" NAME_WE)
add_dependencies(niryo_robot_arm_commander_generate_messages_cpp _niryo_robot_arm_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_arm_commander/srv/GetJointLimits.srv" NAME_WE)
add_dependencies(niryo_robot_arm_commander_generate_messages_cpp _niryo_robot_arm_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/devel/share/niryo_robot_arm_commander/msg/RobotMoveActionResult.msg" NAME_WE)
add_dependencies(niryo_robot_arm_commander_generate_messages_cpp _niryo_robot_arm_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_arm_commander/srv/JogShift.srv" NAME_WE)
add_dependencies(niryo_robot_arm_commander_generate_messages_cpp _niryo_robot_arm_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_arm_commander/msg/CommandJog.msg" NAME_WE)
add_dependencies(niryo_robot_arm_commander_generate_messages_cpp _niryo_robot_arm_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_arm_commander/msg/ShiftPose.msg" NAME_WE)
add_dependencies(niryo_robot_arm_commander_generate_messages_cpp _niryo_robot_arm_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/devel/share/niryo_robot_arm_commander/msg/RobotMoveAction.msg" NAME_WE)
add_dependencies(niryo_robot_arm_commander_generate_messages_cpp _niryo_robot_arm_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_arm_commander/srv/GetIK.srv" NAME_WE)
add_dependencies(niryo_robot_arm_commander_generate_messages_cpp _niryo_robot_arm_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/devel/share/niryo_robot_arm_commander/msg/RobotMoveGoal.msg" NAME_WE)
add_dependencies(niryo_robot_arm_commander_generate_messages_cpp _niryo_robot_arm_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_arm_commander/msg/ArmMoveCommand.msg" NAME_WE)
add_dependencies(niryo_robot_arm_commander_generate_messages_cpp _niryo_robot_arm_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_arm_commander/srv/ComputeTrajectory.srv" NAME_WE)
add_dependencies(niryo_robot_arm_commander_generate_messages_cpp _niryo_robot_arm_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/devel/share/niryo_robot_arm_commander/msg/RobotMoveActionFeedback.msg" NAME_WE)
add_dependencies(niryo_robot_arm_commander_generate_messages_cpp _niryo_robot_arm_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_arm_commander/srv/GetFK.srv" NAME_WE)
add_dependencies(niryo_robot_arm_commander_generate_messages_cpp _niryo_robot_arm_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/devel/share/niryo_robot_arm_commander/msg/RobotMoveFeedback.msg" NAME_WE)
add_dependencies(niryo_robot_arm_commander_generate_messages_cpp _niryo_robot_arm_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_arm_commander/msg/PausePlanExecution.msg" NAME_WE)
add_dependencies(niryo_robot_arm_commander_generate_messages_cpp _niryo_robot_arm_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/devel/share/niryo_robot_arm_commander/msg/RobotMoveResult.msg" NAME_WE)
add_dependencies(niryo_robot_arm_commander_generate_messages_cpp _niryo_robot_arm_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/devel/share/niryo_robot_arm_commander/msg/RobotMoveActionGoal.msg" NAME_WE)
add_dependencies(niryo_robot_arm_commander_generate_messages_cpp _niryo_robot_arm_commander_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(niryo_robot_arm_commander_gencpp)
add_dependencies(niryo_robot_arm_commander_gencpp niryo_robot_arm_commander_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS niryo_robot_arm_commander_generate_messages_cpp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(niryo_robot_arm_commander
  "/home/niryo/catkin_ws/devel/share/niryo_robot_arm_commander/msg/RobotMoveFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/niryo/catkin_ws/src/niryo_robot_msgs/msg/RPY.msg;/home/niryo/catkin_ws/src/niryo_robot_msgs/msg/RobotState.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_arm_commander
)
_generate_msg_py(niryo_robot_arm_commander
  "/home/niryo/catkin_ws/devel/share/niryo_robot_arm_commander/msg/RobotMoveActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/niryo/catkin_ws/devel/share/niryo_robot_arm_commander/msg/RobotMoveResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_arm_commander
)
_generate_msg_py(niryo_robot_arm_commander
  "/home/niryo/catkin_ws/src/niryo_robot_arm_commander/msg/CommandJog.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_arm_commander
)
_generate_msg_py(niryo_robot_arm_commander
  "/home/niryo/catkin_ws/src/niryo_robot_arm_commander/msg/ShiftPose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_arm_commander
)
_generate_msg_py(niryo_robot_arm_commander
  "/home/niryo/catkin_ws/devel/share/niryo_robot_arm_commander/msg/RobotMoveAction.msg"
  "${MSG_I_FLAGS}"
  "/home/niryo/catkin_ws/devel/share/niryo_robot_arm_commander/msg/RobotMoveResult.msg;/home/niryo/catkin_ws/src/niryo_robot_msgs/msg/RPY.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/niryo/catkin_ws/devel/share/niryo_robot_arm_commander/msg/RobotMoveGoal.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/home/niryo/catkin_ws/devel/share/niryo_robot_arm_commander/msg/RobotMoveFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/niryo/catkin_ws/src/niryo_robot_arm_commander/msg/ShiftPose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/niryo/catkin_ws/src/niryo_robot_arm_commander/msg/ArmMoveCommand.msg;/home/niryo/catkin_ws/devel/share/niryo_robot_arm_commander/msg/RobotMoveActionGoal.msg;/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/home/niryo/catkin_ws/devel/share/niryo_robot_arm_commander/msg/RobotMoveActionResult.msg;/home/niryo/catkin_ws/src/niryo_robot_msgs/msg/RobotState.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/niryo/catkin_ws/devel/share/niryo_robot_arm_commander/msg/RobotMoveActionFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_arm_commander
)
_generate_msg_py(niryo_robot_arm_commander
  "/home/niryo/catkin_ws/devel/share/niryo_robot_arm_commander/msg/RobotMoveActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/niryo/catkin_ws/src/niryo_robot_msgs/msg/RPY.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/niryo/catkin_ws/devel/share/niryo_robot_arm_commander/msg/RobotMoveGoal.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/niryo/catkin_ws/src/niryo_robot_arm_commander/msg/ShiftPose.msg;/home/niryo/catkin_ws/src/niryo_robot_arm_commander/msg/ArmMoveCommand.msg;/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_arm_commander
)
_generate_msg_py(niryo_robot_arm_commander
  "/home/niryo/catkin_ws/devel/share/niryo_robot_arm_commander/msg/RobotMoveGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/niryo/catkin_ws/src/niryo_robot_msgs/msg/RPY.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/niryo/catkin_ws/src/niryo_robot_arm_commander/msg/ShiftPose.msg;/home/niryo/catkin_ws/src/niryo_robot_arm_commander/msg/ArmMoveCommand.msg;/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_arm_commander
)
_generate_msg_py(niryo_robot_arm_commander
  "/home/niryo/catkin_ws/src/niryo_robot_arm_commander/msg/ArmMoveCommand.msg"
  "${MSG_I_FLAGS}"
  "/home/niryo/catkin_ws/src/niryo_robot_msgs/msg/RPY.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/niryo/catkin_ws/src/niryo_robot_arm_commander/msg/ShiftPose.msg;/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_arm_commander
)
_generate_msg_py(niryo_robot_arm_commander
  "/home/niryo/catkin_ws/devel/share/niryo_robot_arm_commander/msg/RobotMoveActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/niryo/catkin_ws/src/niryo_robot_msgs/msg/RPY.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/home/niryo/catkin_ws/src/niryo_robot_msgs/msg/RobotState.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/niryo/catkin_ws/devel/share/niryo_robot_arm_commander/msg/RobotMoveFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_arm_commander
)
_generate_msg_py(niryo_robot_arm_commander
  "/home/niryo/catkin_ws/src/niryo_robot_arm_commander/msg/JointLimits.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_arm_commander
)
_generate_msg_py(niryo_robot_arm_commander
  "/home/niryo/catkin_ws/devel/share/niryo_robot_arm_commander/msg/RobotMoveResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_arm_commander
)
_generate_msg_py(niryo_robot_arm_commander
  "/home/niryo/catkin_ws/src/niryo_robot_arm_commander/msg/PausePlanExecution.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_arm_commander
)

### Generating Services
_generate_srv_py(niryo_robot_arm_commander
  "/home/niryo/catkin_ws/src/niryo_robot_arm_commander/srv/GetJointLimits.srv"
  "${MSG_I_FLAGS}"
  "/home/niryo/catkin_ws/src/niryo_robot_arm_commander/msg/JointLimits.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_arm_commander
)
_generate_srv_py(niryo_robot_arm_commander
  "/home/niryo/catkin_ws/src/niryo_robot_arm_commander/srv/JogShift.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_arm_commander
)
_generate_srv_py(niryo_robot_arm_commander
  "/home/niryo/catkin_ws/src/niryo_robot_arm_commander/srv/GetFK.srv"
  "${MSG_I_FLAGS}"
  "/home/niryo/catkin_ws/src/niryo_robot_msgs/msg/RPY.msg;/home/niryo/catkin_ws/src/niryo_robot_msgs/msg/RobotState.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_arm_commander
)
_generate_srv_py(niryo_robot_arm_commander
  "/home/niryo/catkin_ws/src/niryo_robot_arm_commander/srv/ComputeTrajectory.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_arm_commander
)
_generate_srv_py(niryo_robot_arm_commander
  "/home/niryo/catkin_ws/src/niryo_robot_arm_commander/srv/GetIK.srv"
  "${MSG_I_FLAGS}"
  "/home/niryo/catkin_ws/src/niryo_robot_msgs/msg/RPY.msg;/home/niryo/catkin_ws/src/niryo_robot_msgs/msg/RobotState.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_arm_commander
)

### Generating Module File
_generate_module_py(niryo_robot_arm_commander
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_arm_commander
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(niryo_robot_arm_commander_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(niryo_robot_arm_commander_generate_messages niryo_robot_arm_commander_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_arm_commander/msg/JointLimits.msg" NAME_WE)
add_dependencies(niryo_robot_arm_commander_generate_messages_py _niryo_robot_arm_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_arm_commander/srv/GetJointLimits.srv" NAME_WE)
add_dependencies(niryo_robot_arm_commander_generate_messages_py _niryo_robot_arm_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/devel/share/niryo_robot_arm_commander/msg/RobotMoveActionResult.msg" NAME_WE)
add_dependencies(niryo_robot_arm_commander_generate_messages_py _niryo_robot_arm_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_arm_commander/srv/JogShift.srv" NAME_WE)
add_dependencies(niryo_robot_arm_commander_generate_messages_py _niryo_robot_arm_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_arm_commander/msg/CommandJog.msg" NAME_WE)
add_dependencies(niryo_robot_arm_commander_generate_messages_py _niryo_robot_arm_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_arm_commander/msg/ShiftPose.msg" NAME_WE)
add_dependencies(niryo_robot_arm_commander_generate_messages_py _niryo_robot_arm_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/devel/share/niryo_robot_arm_commander/msg/RobotMoveAction.msg" NAME_WE)
add_dependencies(niryo_robot_arm_commander_generate_messages_py _niryo_robot_arm_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_arm_commander/srv/GetIK.srv" NAME_WE)
add_dependencies(niryo_robot_arm_commander_generate_messages_py _niryo_robot_arm_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/devel/share/niryo_robot_arm_commander/msg/RobotMoveGoal.msg" NAME_WE)
add_dependencies(niryo_robot_arm_commander_generate_messages_py _niryo_robot_arm_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_arm_commander/msg/ArmMoveCommand.msg" NAME_WE)
add_dependencies(niryo_robot_arm_commander_generate_messages_py _niryo_robot_arm_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_arm_commander/srv/ComputeTrajectory.srv" NAME_WE)
add_dependencies(niryo_robot_arm_commander_generate_messages_py _niryo_robot_arm_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/devel/share/niryo_robot_arm_commander/msg/RobotMoveActionFeedback.msg" NAME_WE)
add_dependencies(niryo_robot_arm_commander_generate_messages_py _niryo_robot_arm_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_arm_commander/srv/GetFK.srv" NAME_WE)
add_dependencies(niryo_robot_arm_commander_generate_messages_py _niryo_robot_arm_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/devel/share/niryo_robot_arm_commander/msg/RobotMoveFeedback.msg" NAME_WE)
add_dependencies(niryo_robot_arm_commander_generate_messages_py _niryo_robot_arm_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_arm_commander/msg/PausePlanExecution.msg" NAME_WE)
add_dependencies(niryo_robot_arm_commander_generate_messages_py _niryo_robot_arm_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/devel/share/niryo_robot_arm_commander/msg/RobotMoveResult.msg" NAME_WE)
add_dependencies(niryo_robot_arm_commander_generate_messages_py _niryo_robot_arm_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/devel/share/niryo_robot_arm_commander/msg/RobotMoveActionGoal.msg" NAME_WE)
add_dependencies(niryo_robot_arm_commander_generate_messages_py _niryo_robot_arm_commander_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(niryo_robot_arm_commander_genpy)
add_dependencies(niryo_robot_arm_commander_genpy niryo_robot_arm_commander_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS niryo_robot_arm_commander_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_arm_commander)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_arm_commander
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(niryo_robot_arm_commander_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(niryo_robot_arm_commander_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET niryo_robot_msgs_generate_messages_cpp)
  add_dependencies(niryo_robot_arm_commander_generate_messages_cpp niryo_robot_msgs_generate_messages_cpp)
endif()
if(TARGET trajectory_msgs_generate_messages_cpp)
  add_dependencies(niryo_robot_arm_commander_generate_messages_cpp trajectory_msgs_generate_messages_cpp)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_arm_commander)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_arm_commander\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_arm_commander
    DESTINATION ${genpy_INSTALL_DIR}
    # skip all init files
    PATTERN "__init__.py" EXCLUDE
    PATTERN "__init__.pyc" EXCLUDE
  )
  # install init files which are not in the root folder of the generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_arm_commander
    DESTINATION ${genpy_INSTALL_DIR}
    FILES_MATCHING
    REGEX "${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_arm_commander/.+/__init__.pyc?$"
  )
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(niryo_robot_arm_commander_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(niryo_robot_arm_commander_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET niryo_robot_msgs_generate_messages_py)
  add_dependencies(niryo_robot_arm_commander_generate_messages_py niryo_robot_msgs_generate_messages_py)
endif()
if(TARGET trajectory_msgs_generate_messages_py)
  add_dependencies(niryo_robot_arm_commander_generate_messages_py trajectory_msgs_generate_messages_py)
endif()
