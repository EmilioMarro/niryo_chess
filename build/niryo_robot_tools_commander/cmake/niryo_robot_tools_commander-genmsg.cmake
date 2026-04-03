# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "niryo_robot_tools_commander: 9 messages, 1 services")

set(MSG_I_FLAGS "-Iniryo_robot_tools_commander:/home/niryo/catkin_ws/src/niryo_robot_tools_commander/msg;-Iniryo_robot_tools_commander:/home/niryo/catkin_ws/devel/share/niryo_robot_tools_commander/msg;-Iactionlib_msgs:/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Iniryo_robot_msgs:/home/niryo/catkin_ws/src/niryo_robot_msgs/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(niryo_robot_tools_commander_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/niryo/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolResult.msg" NAME_WE)
add_custom_target(_niryo_robot_tools_commander_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_tools_commander" "/home/niryo/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolResult.msg" ""
)

get_filename_component(_filename "/home/niryo/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolActionResult.msg" NAME_WE)
add_custom_target(_niryo_robot_tools_commander_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_tools_commander" "/home/niryo/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolActionResult.msg" "niryo_robot_tools_commander/ToolResult:actionlib_msgs/GoalID:std_msgs/Header:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/niryo/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolAction.msg" NAME_WE)
add_custom_target(_niryo_robot_tools_commander_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_tools_commander" "/home/niryo/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolAction.msg" "std_msgs/Header:niryo_robot_tools_commander/ToolActionResult:niryo_robot_tools_commander/ToolFeedback:niryo_robot_tools_commander/ToolCommand:niryo_robot_tools_commander/ToolActionFeedback:niryo_robot_tools_commander/ToolActionGoal:actionlib_msgs/GoalID:niryo_robot_tools_commander/ToolResult:niryo_robot_tools_commander/ToolGoal:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_tools_commander/msg/ToolCommand.msg" NAME_WE)
add_custom_target(_niryo_robot_tools_commander_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_tools_commander" "/home/niryo/catkin_ws/src/niryo_robot_tools_commander/msg/ToolCommand.msg" ""
)

get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_tools_commander/srv/SetTCP.srv" NAME_WE)
add_custom_target(_niryo_robot_tools_commander_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_tools_commander" "/home/niryo/catkin_ws/src/niryo_robot_tools_commander/srv/SetTCP.srv" "geometry_msgs/Quaternion:niryo_robot_msgs/RPY:geometry_msgs/Point"
)

get_filename_component(_filename "/home/niryo/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolFeedback.msg" NAME_WE)
add_custom_target(_niryo_robot_tools_commander_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_tools_commander" "/home/niryo/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolFeedback.msg" ""
)

get_filename_component(_filename "/home/niryo/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolActionFeedback.msg" NAME_WE)
add_custom_target(_niryo_robot_tools_commander_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_tools_commander" "/home/niryo/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolActionFeedback.msg" "actionlib_msgs/GoalID:std_msgs/Header:niryo_robot_tools_commander/ToolFeedback:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/niryo/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolActionGoal.msg" NAME_WE)
add_custom_target(_niryo_robot_tools_commander_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_tools_commander" "/home/niryo/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolActionGoal.msg" "actionlib_msgs/GoalID:niryo_robot_tools_commander/ToolCommand:std_msgs/Header:niryo_robot_tools_commander/ToolGoal"
)

get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_tools_commander/msg/TCP.msg" NAME_WE)
add_custom_target(_niryo_robot_tools_commander_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_tools_commander" "/home/niryo/catkin_ws/src/niryo_robot_tools_commander/msg/TCP.msg" "geometry_msgs/Quaternion:niryo_robot_msgs/RPY:geometry_msgs/Point"
)

get_filename_component(_filename "/home/niryo/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolGoal.msg" NAME_WE)
add_custom_target(_niryo_robot_tools_commander_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_tools_commander" "/home/niryo/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolGoal.msg" "niryo_robot_tools_commander/ToolCommand"
)

#
#  langs = gencpp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(niryo_robot_tools_commander
  "/home/niryo/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_tools_commander
)
_generate_msg_cpp(niryo_robot_tools_commander
  "/home/niryo/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/niryo/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_tools_commander
)
_generate_msg_cpp(niryo_robot_tools_commander
  "/home/niryo/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/niryo/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_tools_commander
)
_generate_msg_cpp(niryo_robot_tools_commander
  "/home/niryo/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/niryo/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolActionResult.msg;/home/niryo/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolFeedback.msg;/home/niryo/catkin_ws/src/niryo_robot_tools_commander/msg/ToolCommand.msg;/home/niryo/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolActionFeedback.msg;/home/niryo/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolActionGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/niryo/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolResult.msg;/home/niryo/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_tools_commander
)
_generate_msg_cpp(niryo_robot_tools_commander
  "/home/niryo/catkin_ws/src/niryo_robot_tools_commander/msg/ToolCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_tools_commander
)
_generate_msg_cpp(niryo_robot_tools_commander
  "/home/niryo/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/niryo/catkin_ws/src/niryo_robot_tools_commander/msg/ToolCommand.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_tools_commander
)
_generate_msg_cpp(niryo_robot_tools_commander
  "/home/niryo/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_tools_commander
)
_generate_msg_cpp(niryo_robot_tools_commander
  "/home/niryo/catkin_ws/src/niryo_robot_tools_commander/msg/TCP.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/niryo/catkin_ws/src/niryo_robot_msgs/msg/RPY.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_tools_commander
)
_generate_msg_cpp(niryo_robot_tools_commander
  "/home/niryo/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/niryo/catkin_ws/src/niryo_robot_tools_commander/msg/ToolCommand.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/niryo/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_tools_commander
)

### Generating Services
_generate_srv_cpp(niryo_robot_tools_commander
  "/home/niryo/catkin_ws/src/niryo_robot_tools_commander/srv/SetTCP.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/niryo/catkin_ws/src/niryo_robot_msgs/msg/RPY.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_tools_commander
)

### Generating Module File
_generate_module_cpp(niryo_robot_tools_commander
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_tools_commander
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(niryo_robot_tools_commander_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(niryo_robot_tools_commander_generate_messages niryo_robot_tools_commander_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/niryo/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolResult.msg" NAME_WE)
add_dependencies(niryo_robot_tools_commander_generate_messages_cpp _niryo_robot_tools_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolActionResult.msg" NAME_WE)
add_dependencies(niryo_robot_tools_commander_generate_messages_cpp _niryo_robot_tools_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolAction.msg" NAME_WE)
add_dependencies(niryo_robot_tools_commander_generate_messages_cpp _niryo_robot_tools_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_tools_commander/msg/ToolCommand.msg" NAME_WE)
add_dependencies(niryo_robot_tools_commander_generate_messages_cpp _niryo_robot_tools_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_tools_commander/srv/SetTCP.srv" NAME_WE)
add_dependencies(niryo_robot_tools_commander_generate_messages_cpp _niryo_robot_tools_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolFeedback.msg" NAME_WE)
add_dependencies(niryo_robot_tools_commander_generate_messages_cpp _niryo_robot_tools_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolActionFeedback.msg" NAME_WE)
add_dependencies(niryo_robot_tools_commander_generate_messages_cpp _niryo_robot_tools_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolActionGoal.msg" NAME_WE)
add_dependencies(niryo_robot_tools_commander_generate_messages_cpp _niryo_robot_tools_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_tools_commander/msg/TCP.msg" NAME_WE)
add_dependencies(niryo_robot_tools_commander_generate_messages_cpp _niryo_robot_tools_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolGoal.msg" NAME_WE)
add_dependencies(niryo_robot_tools_commander_generate_messages_cpp _niryo_robot_tools_commander_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(niryo_robot_tools_commander_gencpp)
add_dependencies(niryo_robot_tools_commander_gencpp niryo_robot_tools_commander_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS niryo_robot_tools_commander_generate_messages_cpp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(niryo_robot_tools_commander
  "/home/niryo/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_tools_commander
)
_generate_msg_py(niryo_robot_tools_commander
  "/home/niryo/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/niryo/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_tools_commander
)
_generate_msg_py(niryo_robot_tools_commander
  "/home/niryo/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/niryo/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_tools_commander
)
_generate_msg_py(niryo_robot_tools_commander
  "/home/niryo/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/niryo/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolActionResult.msg;/home/niryo/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolFeedback.msg;/home/niryo/catkin_ws/src/niryo_robot_tools_commander/msg/ToolCommand.msg;/home/niryo/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolActionFeedback.msg;/home/niryo/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolActionGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/niryo/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolResult.msg;/home/niryo/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_tools_commander
)
_generate_msg_py(niryo_robot_tools_commander
  "/home/niryo/catkin_ws/src/niryo_robot_tools_commander/msg/ToolCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_tools_commander
)
_generate_msg_py(niryo_robot_tools_commander
  "/home/niryo/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/niryo/catkin_ws/src/niryo_robot_tools_commander/msg/ToolCommand.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_tools_commander
)
_generate_msg_py(niryo_robot_tools_commander
  "/home/niryo/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_tools_commander
)
_generate_msg_py(niryo_robot_tools_commander
  "/home/niryo/catkin_ws/src/niryo_robot_tools_commander/msg/TCP.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/niryo/catkin_ws/src/niryo_robot_msgs/msg/RPY.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_tools_commander
)
_generate_msg_py(niryo_robot_tools_commander
  "/home/niryo/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/niryo/catkin_ws/src/niryo_robot_tools_commander/msg/ToolCommand.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/niryo/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_tools_commander
)

### Generating Services
_generate_srv_py(niryo_robot_tools_commander
  "/home/niryo/catkin_ws/src/niryo_robot_tools_commander/srv/SetTCP.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/niryo/catkin_ws/src/niryo_robot_msgs/msg/RPY.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_tools_commander
)

### Generating Module File
_generate_module_py(niryo_robot_tools_commander
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_tools_commander
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(niryo_robot_tools_commander_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(niryo_robot_tools_commander_generate_messages niryo_robot_tools_commander_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/niryo/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolResult.msg" NAME_WE)
add_dependencies(niryo_robot_tools_commander_generate_messages_py _niryo_robot_tools_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolActionResult.msg" NAME_WE)
add_dependencies(niryo_robot_tools_commander_generate_messages_py _niryo_robot_tools_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolAction.msg" NAME_WE)
add_dependencies(niryo_robot_tools_commander_generate_messages_py _niryo_robot_tools_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_tools_commander/msg/ToolCommand.msg" NAME_WE)
add_dependencies(niryo_robot_tools_commander_generate_messages_py _niryo_robot_tools_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_tools_commander/srv/SetTCP.srv" NAME_WE)
add_dependencies(niryo_robot_tools_commander_generate_messages_py _niryo_robot_tools_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolFeedback.msg" NAME_WE)
add_dependencies(niryo_robot_tools_commander_generate_messages_py _niryo_robot_tools_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolActionFeedback.msg" NAME_WE)
add_dependencies(niryo_robot_tools_commander_generate_messages_py _niryo_robot_tools_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolActionGoal.msg" NAME_WE)
add_dependencies(niryo_robot_tools_commander_generate_messages_py _niryo_robot_tools_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_tools_commander/msg/TCP.msg" NAME_WE)
add_dependencies(niryo_robot_tools_commander_generate_messages_py _niryo_robot_tools_commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolGoal.msg" NAME_WE)
add_dependencies(niryo_robot_tools_commander_generate_messages_py _niryo_robot_tools_commander_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(niryo_robot_tools_commander_genpy)
add_dependencies(niryo_robot_tools_commander_genpy niryo_robot_tools_commander_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS niryo_robot_tools_commander_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_tools_commander)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_tools_commander
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(niryo_robot_tools_commander_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(niryo_robot_tools_commander_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET niryo_robot_msgs_generate_messages_cpp)
  add_dependencies(niryo_robot_tools_commander_generate_messages_cpp niryo_robot_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(niryo_robot_tools_commander_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_tools_commander)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_tools_commander\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_tools_commander
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(niryo_robot_tools_commander_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(niryo_robot_tools_commander_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET niryo_robot_msgs_generate_messages_py)
  add_dependencies(niryo_robot_tools_commander_generate_messages_py niryo_robot_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(niryo_robot_tools_commander_generate_messages_py std_msgs_generate_messages_py)
endif()
