# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "tools_interface: 1 messages, 2 services")

set(MSG_I_FLAGS "-Itools_interface:/home/niryo/catkin_ws/src/niryo_robot_hardware_stack/tools_interface/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(tools_interface_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_hardware_stack/tools_interface/srv/ToolCommand.srv" NAME_WE)
add_custom_target(_tools_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tools_interface" "/home/niryo/catkin_ws/src/niryo_robot_hardware_stack/tools_interface/srv/ToolCommand.srv" ""
)

get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_hardware_stack/tools_interface/srv/PingDxlTool.srv" NAME_WE)
add_custom_target(_tools_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tools_interface" "/home/niryo/catkin_ws/src/niryo_robot_hardware_stack/tools_interface/srv/PingDxlTool.srv" "tools_interface/Tool"
)

get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_hardware_stack/tools_interface/msg/Tool.msg" NAME_WE)
add_custom_target(_tools_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tools_interface" "/home/niryo/catkin_ws/src/niryo_robot_hardware_stack/tools_interface/msg/Tool.msg" ""
)

#
#  langs = gencpp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(tools_interface
  "/home/niryo/catkin_ws/src/niryo_robot_hardware_stack/tools_interface/msg/Tool.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tools_interface
)

### Generating Services
_generate_srv_cpp(tools_interface
  "/home/niryo/catkin_ws/src/niryo_robot_hardware_stack/tools_interface/srv/PingDxlTool.srv"
  "${MSG_I_FLAGS}"
  "/home/niryo/catkin_ws/src/niryo_robot_hardware_stack/tools_interface/msg/Tool.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tools_interface
)
_generate_srv_cpp(tools_interface
  "/home/niryo/catkin_ws/src/niryo_robot_hardware_stack/tools_interface/srv/ToolCommand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tools_interface
)

### Generating Module File
_generate_module_cpp(tools_interface
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tools_interface
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(tools_interface_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(tools_interface_generate_messages tools_interface_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_hardware_stack/tools_interface/srv/ToolCommand.srv" NAME_WE)
add_dependencies(tools_interface_generate_messages_cpp _tools_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_hardware_stack/tools_interface/srv/PingDxlTool.srv" NAME_WE)
add_dependencies(tools_interface_generate_messages_cpp _tools_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_hardware_stack/tools_interface/msg/Tool.msg" NAME_WE)
add_dependencies(tools_interface_generate_messages_cpp _tools_interface_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tools_interface_gencpp)
add_dependencies(tools_interface_gencpp tools_interface_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tools_interface_generate_messages_cpp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(tools_interface
  "/home/niryo/catkin_ws/src/niryo_robot_hardware_stack/tools_interface/msg/Tool.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tools_interface
)

### Generating Services
_generate_srv_py(tools_interface
  "/home/niryo/catkin_ws/src/niryo_robot_hardware_stack/tools_interface/srv/PingDxlTool.srv"
  "${MSG_I_FLAGS}"
  "/home/niryo/catkin_ws/src/niryo_robot_hardware_stack/tools_interface/msg/Tool.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tools_interface
)
_generate_srv_py(tools_interface
  "/home/niryo/catkin_ws/src/niryo_robot_hardware_stack/tools_interface/srv/ToolCommand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tools_interface
)

### Generating Module File
_generate_module_py(tools_interface
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tools_interface
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(tools_interface_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(tools_interface_generate_messages tools_interface_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_hardware_stack/tools_interface/srv/ToolCommand.srv" NAME_WE)
add_dependencies(tools_interface_generate_messages_py _tools_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_hardware_stack/tools_interface/srv/PingDxlTool.srv" NAME_WE)
add_dependencies(tools_interface_generate_messages_py _tools_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_hardware_stack/tools_interface/msg/Tool.msg" NAME_WE)
add_dependencies(tools_interface_generate_messages_py _tools_interface_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tools_interface_genpy)
add_dependencies(tools_interface_genpy tools_interface_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tools_interface_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tools_interface)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tools_interface
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(tools_interface_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tools_interface)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tools_interface\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tools_interface
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(tools_interface_generate_messages_py std_msgs_generate_messages_py)
endif()
