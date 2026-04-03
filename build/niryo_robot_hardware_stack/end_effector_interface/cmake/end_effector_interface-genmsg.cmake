# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "end_effector_interface: 2 messages, 1 services")

set(MSG_I_FLAGS "-Iend_effector_interface:/home/niryo/catkin_ws/src/niryo_robot_hardware_stack/end_effector_interface/msg;-Iniryo_robot_msgs:/home/niryo/catkin_ws/src/niryo_robot_msgs/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(end_effector_interface_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_hardware_stack/end_effector_interface/msg/EEButtonStatus.msg" NAME_WE)
add_custom_target(_end_effector_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "end_effector_interface" "/home/niryo/catkin_ws/src/niryo_robot_hardware_stack/end_effector_interface/msg/EEButtonStatus.msg" ""
)

get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_hardware_stack/end_effector_interface/msg/EEIOState.msg" NAME_WE)
add_custom_target(_end_effector_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "end_effector_interface" "/home/niryo/catkin_ws/src/niryo_robot_hardware_stack/end_effector_interface/msg/EEIOState.msg" ""
)

get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_hardware_stack/end_effector_interface/srv/SetEEDigitalOut.srv" NAME_WE)
add_custom_target(_end_effector_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "end_effector_interface" "/home/niryo/catkin_ws/src/niryo_robot_hardware_stack/end_effector_interface/srv/SetEEDigitalOut.srv" ""
)

#
#  langs = gencpp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(end_effector_interface
  "/home/niryo/catkin_ws/src/niryo_robot_hardware_stack/end_effector_interface/msg/EEButtonStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/end_effector_interface
)
_generate_msg_cpp(end_effector_interface
  "/home/niryo/catkin_ws/src/niryo_robot_hardware_stack/end_effector_interface/msg/EEIOState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/end_effector_interface
)

### Generating Services
_generate_srv_cpp(end_effector_interface
  "/home/niryo/catkin_ws/src/niryo_robot_hardware_stack/end_effector_interface/srv/SetEEDigitalOut.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/end_effector_interface
)

### Generating Module File
_generate_module_cpp(end_effector_interface
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/end_effector_interface
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(end_effector_interface_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(end_effector_interface_generate_messages end_effector_interface_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_hardware_stack/end_effector_interface/msg/EEButtonStatus.msg" NAME_WE)
add_dependencies(end_effector_interface_generate_messages_cpp _end_effector_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_hardware_stack/end_effector_interface/msg/EEIOState.msg" NAME_WE)
add_dependencies(end_effector_interface_generate_messages_cpp _end_effector_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_hardware_stack/end_effector_interface/srv/SetEEDigitalOut.srv" NAME_WE)
add_dependencies(end_effector_interface_generate_messages_cpp _end_effector_interface_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(end_effector_interface_gencpp)
add_dependencies(end_effector_interface_gencpp end_effector_interface_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS end_effector_interface_generate_messages_cpp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(end_effector_interface
  "/home/niryo/catkin_ws/src/niryo_robot_hardware_stack/end_effector_interface/msg/EEButtonStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/end_effector_interface
)
_generate_msg_py(end_effector_interface
  "/home/niryo/catkin_ws/src/niryo_robot_hardware_stack/end_effector_interface/msg/EEIOState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/end_effector_interface
)

### Generating Services
_generate_srv_py(end_effector_interface
  "/home/niryo/catkin_ws/src/niryo_robot_hardware_stack/end_effector_interface/srv/SetEEDigitalOut.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/end_effector_interface
)

### Generating Module File
_generate_module_py(end_effector_interface
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/end_effector_interface
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(end_effector_interface_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(end_effector_interface_generate_messages end_effector_interface_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_hardware_stack/end_effector_interface/msg/EEButtonStatus.msg" NAME_WE)
add_dependencies(end_effector_interface_generate_messages_py _end_effector_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_hardware_stack/end_effector_interface/msg/EEIOState.msg" NAME_WE)
add_dependencies(end_effector_interface_generate_messages_py _end_effector_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_hardware_stack/end_effector_interface/srv/SetEEDigitalOut.srv" NAME_WE)
add_dependencies(end_effector_interface_generate_messages_py _end_effector_interface_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(end_effector_interface_genpy)
add_dependencies(end_effector_interface_genpy end_effector_interface_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS end_effector_interface_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/end_effector_interface)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/end_effector_interface
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET niryo_robot_msgs_generate_messages_cpp)
  add_dependencies(end_effector_interface_generate_messages_cpp niryo_robot_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(end_effector_interface_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/end_effector_interface)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/end_effector_interface\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/end_effector_interface
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET niryo_robot_msgs_generate_messages_py)
  add_dependencies(end_effector_interface_generate_messages_py niryo_robot_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(end_effector_interface_generate_messages_py std_msgs_generate_messages_py)
endif()
