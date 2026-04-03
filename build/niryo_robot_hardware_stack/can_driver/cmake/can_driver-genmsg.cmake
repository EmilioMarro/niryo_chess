# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "can_driver: 3 messages, 1 services")

set(MSG_I_FLAGS "-Ican_driver:/home/niryo/catkin_ws/src/niryo_robot_hardware_stack/can_driver/msg;-Iniryo_robot_msgs:/home/niryo/catkin_ws/src/niryo_robot_msgs/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(can_driver_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_hardware_stack/can_driver/msg/StepperMotorCommand.msg" NAME_WE)
add_custom_target(_can_driver_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "can_driver" "/home/niryo/catkin_ws/src/niryo_robot_hardware_stack/can_driver/msg/StepperMotorCommand.msg" ""
)

get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_hardware_stack/can_driver/msg/StepperArrayMotorHardwareStatus.msg" NAME_WE)
add_custom_target(_can_driver_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "can_driver" "/home/niryo/catkin_ws/src/niryo_robot_hardware_stack/can_driver/msg/StepperArrayMotorHardwareStatus.msg" "niryo_robot_msgs/MotorHeader:std_msgs/Header:can_driver/StepperMotorHardwareStatus"
)

get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_hardware_stack/can_driver/msg/StepperMotorHardwareStatus.msg" NAME_WE)
add_custom_target(_can_driver_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "can_driver" "/home/niryo/catkin_ws/src/niryo_robot_hardware_stack/can_driver/msg/StepperMotorHardwareStatus.msg" "niryo_robot_msgs/MotorHeader"
)

get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_hardware_stack/can_driver/srv/StepperCmd.srv" NAME_WE)
add_custom_target(_can_driver_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "can_driver" "/home/niryo/catkin_ws/src/niryo_robot_hardware_stack/can_driver/srv/StepperCmd.srv" ""
)

#
#  langs = gencpp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(can_driver
  "/home/niryo/catkin_ws/src/niryo_robot_hardware_stack/can_driver/msg/StepperMotorCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/can_driver
)
_generate_msg_cpp(can_driver
  "/home/niryo/catkin_ws/src/niryo_robot_hardware_stack/can_driver/msg/StepperArrayMotorHardwareStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/niryo/catkin_ws/src/niryo_robot_msgs/msg/MotorHeader.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/niryo/catkin_ws/src/niryo_robot_hardware_stack/can_driver/msg/StepperMotorHardwareStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/can_driver
)
_generate_msg_cpp(can_driver
  "/home/niryo/catkin_ws/src/niryo_robot_hardware_stack/can_driver/msg/StepperMotorHardwareStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/niryo/catkin_ws/src/niryo_robot_msgs/msg/MotorHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/can_driver
)

### Generating Services
_generate_srv_cpp(can_driver
  "/home/niryo/catkin_ws/src/niryo_robot_hardware_stack/can_driver/srv/StepperCmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/can_driver
)

### Generating Module File
_generate_module_cpp(can_driver
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/can_driver
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(can_driver_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(can_driver_generate_messages can_driver_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_hardware_stack/can_driver/msg/StepperMotorCommand.msg" NAME_WE)
add_dependencies(can_driver_generate_messages_cpp _can_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_hardware_stack/can_driver/msg/StepperArrayMotorHardwareStatus.msg" NAME_WE)
add_dependencies(can_driver_generate_messages_cpp _can_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_hardware_stack/can_driver/msg/StepperMotorHardwareStatus.msg" NAME_WE)
add_dependencies(can_driver_generate_messages_cpp _can_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_hardware_stack/can_driver/srv/StepperCmd.srv" NAME_WE)
add_dependencies(can_driver_generate_messages_cpp _can_driver_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(can_driver_gencpp)
add_dependencies(can_driver_gencpp can_driver_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS can_driver_generate_messages_cpp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(can_driver
  "/home/niryo/catkin_ws/src/niryo_robot_hardware_stack/can_driver/msg/StepperMotorCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/can_driver
)
_generate_msg_py(can_driver
  "/home/niryo/catkin_ws/src/niryo_robot_hardware_stack/can_driver/msg/StepperArrayMotorHardwareStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/niryo/catkin_ws/src/niryo_robot_msgs/msg/MotorHeader.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/niryo/catkin_ws/src/niryo_robot_hardware_stack/can_driver/msg/StepperMotorHardwareStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/can_driver
)
_generate_msg_py(can_driver
  "/home/niryo/catkin_ws/src/niryo_robot_hardware_stack/can_driver/msg/StepperMotorHardwareStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/niryo/catkin_ws/src/niryo_robot_msgs/msg/MotorHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/can_driver
)

### Generating Services
_generate_srv_py(can_driver
  "/home/niryo/catkin_ws/src/niryo_robot_hardware_stack/can_driver/srv/StepperCmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/can_driver
)

### Generating Module File
_generate_module_py(can_driver
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/can_driver
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(can_driver_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(can_driver_generate_messages can_driver_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_hardware_stack/can_driver/msg/StepperMotorCommand.msg" NAME_WE)
add_dependencies(can_driver_generate_messages_py _can_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_hardware_stack/can_driver/msg/StepperArrayMotorHardwareStatus.msg" NAME_WE)
add_dependencies(can_driver_generate_messages_py _can_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_hardware_stack/can_driver/msg/StepperMotorHardwareStatus.msg" NAME_WE)
add_dependencies(can_driver_generate_messages_py _can_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_hardware_stack/can_driver/srv/StepperCmd.srv" NAME_WE)
add_dependencies(can_driver_generate_messages_py _can_driver_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(can_driver_genpy)
add_dependencies(can_driver_genpy can_driver_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS can_driver_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/can_driver)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/can_driver
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET niryo_robot_msgs_generate_messages_cpp)
  add_dependencies(can_driver_generate_messages_cpp niryo_robot_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(can_driver_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/can_driver)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/can_driver\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/can_driver
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET niryo_robot_msgs_generate_messages_py)
  add_dependencies(can_driver_generate_messages_py niryo_robot_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(can_driver_generate_messages_py std_msgs_generate_messages_py)
endif()
