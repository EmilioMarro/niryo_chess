# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "niryo_robot_poses_handlers: 3 messages, 8 services")

set(MSG_I_FLAGS "-Iniryo_robot_poses_handlers:/home/niryo/catkin_ws/src/niryo_robot_poses_handlers/msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Imoveit_msgs:/opt/ros/kinetic/share/moveit_msgs/cmake/../msg;-Iniryo_robot_msgs:/home/niryo/catkin_ws/src/niryo_robot_msgs/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/kinetic/share/sensor_msgs/cmake/../msg;-Itrajectory_msgs:/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg;-Ishape_msgs:/opt/ros/kinetic/share/shape_msgs/cmake/../msg;-Iobject_recognition_msgs:/opt/ros/kinetic/share/object_recognition_msgs/cmake/../msg;-Ioctomap_msgs:/opt/ros/kinetic/share/octomap_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(niryo_robot_poses_handlers_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_poses_handlers/srv/GetPose.srv" NAME_WE)
add_custom_target(_niryo_robot_poses_handlers_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_poses_handlers" "/home/niryo/catkin_ws/src/niryo_robot_poses_handlers/srv/GetPose.srv" "niryo_robot_poses_handlers/NiryoPose:geometry_msgs/Quaternion:niryo_robot_msgs/RPY:geometry_msgs/Point"
)

get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_poses_handlers/srv/GetTargetPose.srv" NAME_WE)
add_custom_target(_niryo_robot_poses_handlers_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_poses_handlers" "/home/niryo/catkin_ws/src/niryo_robot_poses_handlers/srv/GetTargetPose.srv" "niryo_robot_msgs/RPY:niryo_robot_msgs/RobotState:geometry_msgs/Quaternion:geometry_msgs/Point:geometry_msgs/Vector3:geometry_msgs/Twist"
)

get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_poses_handlers/srv/ManageWorkspace.srv" NAME_WE)
add_custom_target(_niryo_robot_poses_handlers_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_poses_handlers" "/home/niryo/catkin_ws/src/niryo_robot_poses_handlers/srv/ManageWorkspace.srv" "niryo_robot_msgs/RPY:niryo_robot_msgs/RobotState:geometry_msgs/Quaternion:geometry_msgs/Point:geometry_msgs/Vector3:niryo_robot_poses_handlers/Workspace:geometry_msgs/Twist"
)

get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_poses_handlers/srv/GetWorkspaceRobotPoses.srv" NAME_WE)
add_custom_target(_niryo_robot_poses_handlers_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_poses_handlers" "/home/niryo/catkin_ws/src/niryo_robot_poses_handlers/srv/GetWorkspaceRobotPoses.srv" "niryo_robot_msgs/RPY:niryo_robot_msgs/RobotState:geometry_msgs/Quaternion:geometry_msgs/Point:geometry_msgs/Vector3:geometry_msgs/Twist"
)

get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_poses_handlers/srv/GetTrajectory.srv" NAME_WE)
add_custom_target(_niryo_robot_poses_handlers_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_poses_handlers" "/home/niryo/catkin_ws/src/niryo_robot_poses_handlers/srv/GetTrajectory.srv" "geometry_msgs/Quaternion:geometry_msgs/Pose:geometry_msgs/Point"
)

get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_poses_handlers/srv/ManageTrajectory.srv" NAME_WE)
add_custom_target(_niryo_robot_poses_handlers_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_poses_handlers" "/home/niryo/catkin_ws/src/niryo_robot_poses_handlers/srv/ManageTrajectory.srv" "geometry_msgs/Quaternion:geometry_msgs/Pose:geometry_msgs/Point"
)

get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_poses_handlers/srv/GetWorkspaceRatio.srv" NAME_WE)
add_custom_target(_niryo_robot_poses_handlers_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_poses_handlers" "/home/niryo/catkin_ws/src/niryo_robot_poses_handlers/srv/GetWorkspaceRatio.srv" ""
)

get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_poses_handlers/msg/Workspace.msg" NAME_WE)
add_custom_target(_niryo_robot_poses_handlers_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_poses_handlers" "/home/niryo/catkin_ws/src/niryo_robot_poses_handlers/msg/Workspace.msg" "niryo_robot_msgs/RPY:niryo_robot_msgs/RobotState:geometry_msgs/Quaternion:geometry_msgs/Point:geometry_msgs/Vector3:geometry_msgs/Twist"
)

get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_poses_handlers/msg/NiryoPose.msg" NAME_WE)
add_custom_target(_niryo_robot_poses_handlers_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_poses_handlers" "/home/niryo/catkin_ws/src/niryo_robot_poses_handlers/msg/NiryoPose.msg" "geometry_msgs/Quaternion:niryo_robot_msgs/RPY:geometry_msgs/Point"
)

get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_poses_handlers/srv/ManagePose.srv" NAME_WE)
add_custom_target(_niryo_robot_poses_handlers_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_poses_handlers" "/home/niryo/catkin_ws/src/niryo_robot_poses_handlers/srv/ManagePose.srv" "niryo_robot_poses_handlers/NiryoPose:geometry_msgs/Quaternion:niryo_robot_msgs/RPY:geometry_msgs/Point"
)

get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_poses_handlers/msg/Trajectory.msg" NAME_WE)
add_custom_target(_niryo_robot_poses_handlers_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_poses_handlers" "/home/niryo/catkin_ws/src/niryo_robot_poses_handlers/msg/Trajectory.msg" "geometry_msgs/Quaternion:geometry_msgs/Pose:geometry_msgs/Point"
)

#
#  langs = gencpp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(niryo_robot_poses_handlers
  "/home/niryo/catkin_ws/src/niryo_robot_poses_handlers/msg/Trajectory.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_poses_handlers
)
_generate_msg_cpp(niryo_robot_poses_handlers
  "/home/niryo/catkin_ws/src/niryo_robot_poses_handlers/msg/Workspace.msg"
  "${MSG_I_FLAGS}"
  "/home/niryo/catkin_ws/src/niryo_robot_msgs/msg/RPY.msg;/home/niryo/catkin_ws/src/niryo_robot_msgs/msg/RobotState.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_poses_handlers
)
_generate_msg_cpp(niryo_robot_poses_handlers
  "/home/niryo/catkin_ws/src/niryo_robot_poses_handlers/msg/NiryoPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/niryo/catkin_ws/src/niryo_robot_msgs/msg/RPY.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_poses_handlers
)

### Generating Services
_generate_srv_cpp(niryo_robot_poses_handlers
  "/home/niryo/catkin_ws/src/niryo_robot_poses_handlers/srv/GetPose.srv"
  "${MSG_I_FLAGS}"
  "/home/niryo/catkin_ws/src/niryo_robot_poses_handlers/msg/NiryoPose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/niryo/catkin_ws/src/niryo_robot_msgs/msg/RPY.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_poses_handlers
)
_generate_srv_cpp(niryo_robot_poses_handlers
  "/home/niryo/catkin_ws/src/niryo_robot_poses_handlers/srv/GetTargetPose.srv"
  "${MSG_I_FLAGS}"
  "/home/niryo/catkin_ws/src/niryo_robot_msgs/msg/RPY.msg;/home/niryo/catkin_ws/src/niryo_robot_msgs/msg/RobotState.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_poses_handlers
)
_generate_srv_cpp(niryo_robot_poses_handlers
  "/home/niryo/catkin_ws/src/niryo_robot_poses_handlers/srv/ManageWorkspace.srv"
  "${MSG_I_FLAGS}"
  "/home/niryo/catkin_ws/src/niryo_robot_msgs/msg/RPY.msg;/home/niryo/catkin_ws/src/niryo_robot_msgs/msg/RobotState.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/niryo/catkin_ws/src/niryo_robot_poses_handlers/msg/Workspace.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_poses_handlers
)
_generate_srv_cpp(niryo_robot_poses_handlers
  "/home/niryo/catkin_ws/src/niryo_robot_poses_handlers/srv/GetWorkspaceRobotPoses.srv"
  "${MSG_I_FLAGS}"
  "/home/niryo/catkin_ws/src/niryo_robot_msgs/msg/RPY.msg;/home/niryo/catkin_ws/src/niryo_robot_msgs/msg/RobotState.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_poses_handlers
)
_generate_srv_cpp(niryo_robot_poses_handlers
  "/home/niryo/catkin_ws/src/niryo_robot_poses_handlers/srv/GetTrajectory.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_poses_handlers
)
_generate_srv_cpp(niryo_robot_poses_handlers
  "/home/niryo/catkin_ws/src/niryo_robot_poses_handlers/srv/ManageTrajectory.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_poses_handlers
)
_generate_srv_cpp(niryo_robot_poses_handlers
  "/home/niryo/catkin_ws/src/niryo_robot_poses_handlers/srv/GetWorkspaceRatio.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_poses_handlers
)
_generate_srv_cpp(niryo_robot_poses_handlers
  "/home/niryo/catkin_ws/src/niryo_robot_poses_handlers/srv/ManagePose.srv"
  "${MSG_I_FLAGS}"
  "/home/niryo/catkin_ws/src/niryo_robot_poses_handlers/msg/NiryoPose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/niryo/catkin_ws/src/niryo_robot_msgs/msg/RPY.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_poses_handlers
)

### Generating Module File
_generate_module_cpp(niryo_robot_poses_handlers
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_poses_handlers
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(niryo_robot_poses_handlers_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(niryo_robot_poses_handlers_generate_messages niryo_robot_poses_handlers_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_poses_handlers/srv/GetPose.srv" NAME_WE)
add_dependencies(niryo_robot_poses_handlers_generate_messages_cpp _niryo_robot_poses_handlers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_poses_handlers/srv/GetTargetPose.srv" NAME_WE)
add_dependencies(niryo_robot_poses_handlers_generate_messages_cpp _niryo_robot_poses_handlers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_poses_handlers/srv/ManageWorkspace.srv" NAME_WE)
add_dependencies(niryo_robot_poses_handlers_generate_messages_cpp _niryo_robot_poses_handlers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_poses_handlers/srv/GetWorkspaceRobotPoses.srv" NAME_WE)
add_dependencies(niryo_robot_poses_handlers_generate_messages_cpp _niryo_robot_poses_handlers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_poses_handlers/srv/GetTrajectory.srv" NAME_WE)
add_dependencies(niryo_robot_poses_handlers_generate_messages_cpp _niryo_robot_poses_handlers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_poses_handlers/srv/ManageTrajectory.srv" NAME_WE)
add_dependencies(niryo_robot_poses_handlers_generate_messages_cpp _niryo_robot_poses_handlers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_poses_handlers/srv/GetWorkspaceRatio.srv" NAME_WE)
add_dependencies(niryo_robot_poses_handlers_generate_messages_cpp _niryo_robot_poses_handlers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_poses_handlers/msg/Workspace.msg" NAME_WE)
add_dependencies(niryo_robot_poses_handlers_generate_messages_cpp _niryo_robot_poses_handlers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_poses_handlers/msg/NiryoPose.msg" NAME_WE)
add_dependencies(niryo_robot_poses_handlers_generate_messages_cpp _niryo_robot_poses_handlers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_poses_handlers/srv/ManagePose.srv" NAME_WE)
add_dependencies(niryo_robot_poses_handlers_generate_messages_cpp _niryo_robot_poses_handlers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_poses_handlers/msg/Trajectory.msg" NAME_WE)
add_dependencies(niryo_robot_poses_handlers_generate_messages_cpp _niryo_robot_poses_handlers_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(niryo_robot_poses_handlers_gencpp)
add_dependencies(niryo_robot_poses_handlers_gencpp niryo_robot_poses_handlers_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS niryo_robot_poses_handlers_generate_messages_cpp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(niryo_robot_poses_handlers
  "/home/niryo/catkin_ws/src/niryo_robot_poses_handlers/msg/Trajectory.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_poses_handlers
)
_generate_msg_py(niryo_robot_poses_handlers
  "/home/niryo/catkin_ws/src/niryo_robot_poses_handlers/msg/Workspace.msg"
  "${MSG_I_FLAGS}"
  "/home/niryo/catkin_ws/src/niryo_robot_msgs/msg/RPY.msg;/home/niryo/catkin_ws/src/niryo_robot_msgs/msg/RobotState.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_poses_handlers
)
_generate_msg_py(niryo_robot_poses_handlers
  "/home/niryo/catkin_ws/src/niryo_robot_poses_handlers/msg/NiryoPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/niryo/catkin_ws/src/niryo_robot_msgs/msg/RPY.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_poses_handlers
)

### Generating Services
_generate_srv_py(niryo_robot_poses_handlers
  "/home/niryo/catkin_ws/src/niryo_robot_poses_handlers/srv/GetPose.srv"
  "${MSG_I_FLAGS}"
  "/home/niryo/catkin_ws/src/niryo_robot_poses_handlers/msg/NiryoPose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/niryo/catkin_ws/src/niryo_robot_msgs/msg/RPY.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_poses_handlers
)
_generate_srv_py(niryo_robot_poses_handlers
  "/home/niryo/catkin_ws/src/niryo_robot_poses_handlers/srv/GetTargetPose.srv"
  "${MSG_I_FLAGS}"
  "/home/niryo/catkin_ws/src/niryo_robot_msgs/msg/RPY.msg;/home/niryo/catkin_ws/src/niryo_robot_msgs/msg/RobotState.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_poses_handlers
)
_generate_srv_py(niryo_robot_poses_handlers
  "/home/niryo/catkin_ws/src/niryo_robot_poses_handlers/srv/ManageWorkspace.srv"
  "${MSG_I_FLAGS}"
  "/home/niryo/catkin_ws/src/niryo_robot_msgs/msg/RPY.msg;/home/niryo/catkin_ws/src/niryo_robot_msgs/msg/RobotState.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/niryo/catkin_ws/src/niryo_robot_poses_handlers/msg/Workspace.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_poses_handlers
)
_generate_srv_py(niryo_robot_poses_handlers
  "/home/niryo/catkin_ws/src/niryo_robot_poses_handlers/srv/GetWorkspaceRobotPoses.srv"
  "${MSG_I_FLAGS}"
  "/home/niryo/catkin_ws/src/niryo_robot_msgs/msg/RPY.msg;/home/niryo/catkin_ws/src/niryo_robot_msgs/msg/RobotState.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_poses_handlers
)
_generate_srv_py(niryo_robot_poses_handlers
  "/home/niryo/catkin_ws/src/niryo_robot_poses_handlers/srv/GetTrajectory.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_poses_handlers
)
_generate_srv_py(niryo_robot_poses_handlers
  "/home/niryo/catkin_ws/src/niryo_robot_poses_handlers/srv/ManageTrajectory.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_poses_handlers
)
_generate_srv_py(niryo_robot_poses_handlers
  "/home/niryo/catkin_ws/src/niryo_robot_poses_handlers/srv/GetWorkspaceRatio.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_poses_handlers
)
_generate_srv_py(niryo_robot_poses_handlers
  "/home/niryo/catkin_ws/src/niryo_robot_poses_handlers/srv/ManagePose.srv"
  "${MSG_I_FLAGS}"
  "/home/niryo/catkin_ws/src/niryo_robot_poses_handlers/msg/NiryoPose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/niryo/catkin_ws/src/niryo_robot_msgs/msg/RPY.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_poses_handlers
)

### Generating Module File
_generate_module_py(niryo_robot_poses_handlers
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_poses_handlers
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(niryo_robot_poses_handlers_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(niryo_robot_poses_handlers_generate_messages niryo_robot_poses_handlers_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_poses_handlers/srv/GetPose.srv" NAME_WE)
add_dependencies(niryo_robot_poses_handlers_generate_messages_py _niryo_robot_poses_handlers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_poses_handlers/srv/GetTargetPose.srv" NAME_WE)
add_dependencies(niryo_robot_poses_handlers_generate_messages_py _niryo_robot_poses_handlers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_poses_handlers/srv/ManageWorkspace.srv" NAME_WE)
add_dependencies(niryo_robot_poses_handlers_generate_messages_py _niryo_robot_poses_handlers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_poses_handlers/srv/GetWorkspaceRobotPoses.srv" NAME_WE)
add_dependencies(niryo_robot_poses_handlers_generate_messages_py _niryo_robot_poses_handlers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_poses_handlers/srv/GetTrajectory.srv" NAME_WE)
add_dependencies(niryo_robot_poses_handlers_generate_messages_py _niryo_robot_poses_handlers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_poses_handlers/srv/ManageTrajectory.srv" NAME_WE)
add_dependencies(niryo_robot_poses_handlers_generate_messages_py _niryo_robot_poses_handlers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_poses_handlers/srv/GetWorkspaceRatio.srv" NAME_WE)
add_dependencies(niryo_robot_poses_handlers_generate_messages_py _niryo_robot_poses_handlers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_poses_handlers/msg/Workspace.msg" NAME_WE)
add_dependencies(niryo_robot_poses_handlers_generate_messages_py _niryo_robot_poses_handlers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_poses_handlers/msg/NiryoPose.msg" NAME_WE)
add_dependencies(niryo_robot_poses_handlers_generate_messages_py _niryo_robot_poses_handlers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_poses_handlers/srv/ManagePose.srv" NAME_WE)
add_dependencies(niryo_robot_poses_handlers_generate_messages_py _niryo_robot_poses_handlers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_poses_handlers/msg/Trajectory.msg" NAME_WE)
add_dependencies(niryo_robot_poses_handlers_generate_messages_py _niryo_robot_poses_handlers_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(niryo_robot_poses_handlers_genpy)
add_dependencies(niryo_robot_poses_handlers_genpy niryo_robot_poses_handlers_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS niryo_robot_poses_handlers_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_poses_handlers)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_poses_handlers
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(niryo_robot_poses_handlers_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET moveit_msgs_generate_messages_cpp)
  add_dependencies(niryo_robot_poses_handlers_generate_messages_cpp moveit_msgs_generate_messages_cpp)
endif()
if(TARGET niryo_robot_msgs_generate_messages_cpp)
  add_dependencies(niryo_robot_poses_handlers_generate_messages_cpp niryo_robot_msgs_generate_messages_cpp)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_poses_handlers)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_poses_handlers\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_poses_handlers
    DESTINATION ${genpy_INSTALL_DIR}
    # skip all init files
    PATTERN "__init__.py" EXCLUDE
    PATTERN "__init__.pyc" EXCLUDE
  )
  # install init files which are not in the root folder of the generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_poses_handlers
    DESTINATION ${genpy_INSTALL_DIR}
    FILES_MATCHING
    REGEX "${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_poses_handlers/.+/__init__.pyc?$"
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(niryo_robot_poses_handlers_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET moveit_msgs_generate_messages_py)
  add_dependencies(niryo_robot_poses_handlers_generate_messages_py moveit_msgs_generate_messages_py)
endif()
if(TARGET niryo_robot_msgs_generate_messages_py)
  add_dependencies(niryo_robot_poses_handlers_generate_messages_py niryo_robot_msgs_generate_messages_py)
endif()
