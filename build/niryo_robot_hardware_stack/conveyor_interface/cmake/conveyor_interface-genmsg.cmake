# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "conveyor_interface: 2 messages, 2 services")

set(MSG_I_FLAGS "-Iconveyor_interface:/home/niryo/catkin_ws/src/niryo_robot_hardware_stack/conveyor_interface/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(conveyor_interface_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_hardware_stack/conveyor_interface/msg/ConveyorFeedback.msg" NAME_WE)
add_custom_target(_conveyor_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "conveyor_interface" "/home/niryo/catkin_ws/src/niryo_robot_hardware_stack/conveyor_interface/msg/ConveyorFeedback.msg" ""
)

get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_hardware_stack/conveyor_interface/srv/SetConveyor.srv" NAME_WE)
add_custom_target(_conveyor_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "conveyor_interface" "/home/niryo/catkin_ws/src/niryo_robot_hardware_stack/conveyor_interface/srv/SetConveyor.srv" ""
)

get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_hardware_stack/conveyor_interface/msg/ConveyorFeedbackArray.msg" NAME_WE)
add_custom_target(_conveyor_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "conveyor_interface" "/home/niryo/catkin_ws/src/niryo_robot_hardware_stack/conveyor_interface/msg/ConveyorFeedbackArray.msg" "conveyor_interface/ConveyorFeedback"
)

get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_hardware_stack/conveyor_interface/srv/ControlConveyor.srv" NAME_WE)
add_custom_target(_conveyor_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "conveyor_interface" "/home/niryo/catkin_ws/src/niryo_robot_hardware_stack/conveyor_interface/srv/ControlConveyor.srv" ""
)

#
#  langs = gencpp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(conveyor_interface
  "/home/niryo/catkin_ws/src/niryo_robot_hardware_stack/conveyor_interface/msg/ConveyorFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/conveyor_interface
)
_generate_msg_cpp(conveyor_interface
  "/home/niryo/catkin_ws/src/niryo_robot_hardware_stack/conveyor_interface/msg/ConveyorFeedbackArray.msg"
  "${MSG_I_FLAGS}"
  "/home/niryo/catkin_ws/src/niryo_robot_hardware_stack/conveyor_interface/msg/ConveyorFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/conveyor_interface
)

### Generating Services
_generate_srv_cpp(conveyor_interface
  "/home/niryo/catkin_ws/src/niryo_robot_hardware_stack/conveyor_interface/srv/SetConveyor.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/conveyor_interface
)
_generate_srv_cpp(conveyor_interface
  "/home/niryo/catkin_ws/src/niryo_robot_hardware_stack/conveyor_interface/srv/ControlConveyor.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/conveyor_interface
)

### Generating Module File
_generate_module_cpp(conveyor_interface
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/conveyor_interface
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(conveyor_interface_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(conveyor_interface_generate_messages conveyor_interface_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_hardware_stack/conveyor_interface/msg/ConveyorFeedback.msg" NAME_WE)
add_dependencies(conveyor_interface_generate_messages_cpp _conveyor_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_hardware_stack/conveyor_interface/srv/SetConveyor.srv" NAME_WE)
add_dependencies(conveyor_interface_generate_messages_cpp _conveyor_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_hardware_stack/conveyor_interface/msg/ConveyorFeedbackArray.msg" NAME_WE)
add_dependencies(conveyor_interface_generate_messages_cpp _conveyor_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_hardware_stack/conveyor_interface/srv/ControlConveyor.srv" NAME_WE)
add_dependencies(conveyor_interface_generate_messages_cpp _conveyor_interface_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(conveyor_interface_gencpp)
add_dependencies(conveyor_interface_gencpp conveyor_interface_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS conveyor_interface_generate_messages_cpp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(conveyor_interface
  "/home/niryo/catkin_ws/src/niryo_robot_hardware_stack/conveyor_interface/msg/ConveyorFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/conveyor_interface
)
_generate_msg_py(conveyor_interface
  "/home/niryo/catkin_ws/src/niryo_robot_hardware_stack/conveyor_interface/msg/ConveyorFeedbackArray.msg"
  "${MSG_I_FLAGS}"
  "/home/niryo/catkin_ws/src/niryo_robot_hardware_stack/conveyor_interface/msg/ConveyorFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/conveyor_interface
)

### Generating Services
_generate_srv_py(conveyor_interface
  "/home/niryo/catkin_ws/src/niryo_robot_hardware_stack/conveyor_interface/srv/SetConveyor.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/conveyor_interface
)
_generate_srv_py(conveyor_interface
  "/home/niryo/catkin_ws/src/niryo_robot_hardware_stack/conveyor_interface/srv/ControlConveyor.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/conveyor_interface
)

### Generating Module File
_generate_module_py(conveyor_interface
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/conveyor_interface
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(conveyor_interface_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(conveyor_interface_generate_messages conveyor_interface_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_hardware_stack/conveyor_interface/msg/ConveyorFeedback.msg" NAME_WE)
add_dependencies(conveyor_interface_generate_messages_py _conveyor_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_hardware_stack/conveyor_interface/srv/SetConveyor.srv" NAME_WE)
add_dependencies(conveyor_interface_generate_messages_py _conveyor_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_hardware_stack/conveyor_interface/msg/ConveyorFeedbackArray.msg" NAME_WE)
add_dependencies(conveyor_interface_generate_messages_py _conveyor_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_hardware_stack/conveyor_interface/srv/ControlConveyor.srv" NAME_WE)
add_dependencies(conveyor_interface_generate_messages_py _conveyor_interface_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(conveyor_interface_genpy)
add_dependencies(conveyor_interface_genpy conveyor_interface_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS conveyor_interface_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/conveyor_interface)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/conveyor_interface
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(conveyor_interface_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/conveyor_interface)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/conveyor_interface\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/conveyor_interface
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(conveyor_interface_generate_messages_py std_msgs_generate_messages_py)
endif()
