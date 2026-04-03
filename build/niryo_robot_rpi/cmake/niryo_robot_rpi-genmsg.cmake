# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "niryo_robot_rpi: 5 messages, 8 services")

set(MSG_I_FLAGS "-Iniryo_robot_rpi:/home/niryo/catkin_ws/src/niryo_robot_rpi/msg;-Iactionlib_msgs:/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg;-Iniryo_robot_msgs:/home/niryo/catkin_ws/src/niryo_robot_msgs/msg;-Isensor_msgs:/opt/ros/kinetic/share/sensor_msgs/cmake/../msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(niryo_robot_rpi_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_rpi/srv/GetDigitalIO.srv" NAME_WE)
add_custom_target(_niryo_robot_rpi_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_rpi" "/home/niryo/catkin_ws/src/niryo_robot_rpi/srv/GetDigitalIO.srv" ""
)

get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_rpi/msg/DigitalIOState.msg" NAME_WE)
add_custom_target(_niryo_robot_rpi_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_rpi" "/home/niryo/catkin_ws/src/niryo_robot_rpi/msg/DigitalIOState.msg" "niryo_robot_rpi/DigitalIO"
)

get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_rpi/srv/SetDigitalIO.srv" NAME_WE)
add_custom_target(_niryo_robot_rpi_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_rpi" "/home/niryo/catkin_ws/src/niryo_robot_rpi/srv/SetDigitalIO.srv" ""
)

get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_rpi/msg/AnalogIO.msg" NAME_WE)
add_custom_target(_niryo_robot_rpi_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_rpi" "/home/niryo/catkin_ws/src/niryo_robot_rpi/msg/AnalogIO.msg" ""
)

get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_rpi/srv/SetAnalogIO.srv" NAME_WE)
add_custom_target(_niryo_robot_rpi_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_rpi" "/home/niryo/catkin_ws/src/niryo_robot_rpi/srv/SetAnalogIO.srv" ""
)

get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_rpi/srv/LedBlinker.srv" NAME_WE)
add_custom_target(_niryo_robot_rpi_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_rpi" "/home/niryo/catkin_ws/src/niryo_robot_rpi/srv/LedBlinker.srv" ""
)

get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_rpi/msg/AnalogIOState.msg" NAME_WE)
add_custom_target(_niryo_robot_rpi_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_rpi" "/home/niryo/catkin_ws/src/niryo_robot_rpi/msg/AnalogIOState.msg" "niryo_robot_rpi/AnalogIO"
)

get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_rpi/srv/SetIOMode.srv" NAME_WE)
add_custom_target(_niryo_robot_rpi_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_rpi" "/home/niryo/catkin_ws/src/niryo_robot_rpi/srv/SetIOMode.srv" ""
)

get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_rpi/msg/LogStatus.msg" NAME_WE)
add_custom_target(_niryo_robot_rpi_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_rpi" "/home/niryo/catkin_ws/src/niryo_robot_rpi/msg/LogStatus.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_rpi/srv/GetAnalogIO.srv" NAME_WE)
add_custom_target(_niryo_robot_rpi_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_rpi" "/home/niryo/catkin_ws/src/niryo_robot_rpi/srv/GetAnalogIO.srv" ""
)

get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_rpi/srv/ChangeMotorConfig.srv" NAME_WE)
add_custom_target(_niryo_robot_rpi_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_rpi" "/home/niryo/catkin_ws/src/niryo_robot_rpi/srv/ChangeMotorConfig.srv" ""
)

get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_rpi/msg/DigitalIO.msg" NAME_WE)
add_custom_target(_niryo_robot_rpi_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_rpi" "/home/niryo/catkin_ws/src/niryo_robot_rpi/msg/DigitalIO.msg" ""
)

get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_rpi/srv/SetPullup.srv" NAME_WE)
add_custom_target(_niryo_robot_rpi_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_rpi" "/home/niryo/catkin_ws/src/niryo_robot_rpi/srv/SetPullup.srv" ""
)

#
#  langs = gencpp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(niryo_robot_rpi
  "/home/niryo/catkin_ws/src/niryo_robot_rpi/msg/LogStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_rpi
)
_generate_msg_cpp(niryo_robot_rpi
  "/home/niryo/catkin_ws/src/niryo_robot_rpi/msg/AnalogIOState.msg"
  "${MSG_I_FLAGS}"
  "/home/niryo/catkin_ws/src/niryo_robot_rpi/msg/AnalogIO.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_rpi
)
_generate_msg_cpp(niryo_robot_rpi
  "/home/niryo/catkin_ws/src/niryo_robot_rpi/msg/DigitalIO.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_rpi
)
_generate_msg_cpp(niryo_robot_rpi
  "/home/niryo/catkin_ws/src/niryo_robot_rpi/msg/AnalogIO.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_rpi
)
_generate_msg_cpp(niryo_robot_rpi
  "/home/niryo/catkin_ws/src/niryo_robot_rpi/msg/DigitalIOState.msg"
  "${MSG_I_FLAGS}"
  "/home/niryo/catkin_ws/src/niryo_robot_rpi/msg/DigitalIO.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_rpi
)

### Generating Services
_generate_srv_cpp(niryo_robot_rpi
  "/home/niryo/catkin_ws/src/niryo_robot_rpi/srv/GetDigitalIO.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_rpi
)
_generate_srv_cpp(niryo_robot_rpi
  "/home/niryo/catkin_ws/src/niryo_robot_rpi/srv/SetDigitalIO.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_rpi
)
_generate_srv_cpp(niryo_robot_rpi
  "/home/niryo/catkin_ws/src/niryo_robot_rpi/srv/SetAnalogIO.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_rpi
)
_generate_srv_cpp(niryo_robot_rpi
  "/home/niryo/catkin_ws/src/niryo_robot_rpi/srv/LedBlinker.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_rpi
)
_generate_srv_cpp(niryo_robot_rpi
  "/home/niryo/catkin_ws/src/niryo_robot_rpi/srv/SetIOMode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_rpi
)
_generate_srv_cpp(niryo_robot_rpi
  "/home/niryo/catkin_ws/src/niryo_robot_rpi/srv/GetAnalogIO.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_rpi
)
_generate_srv_cpp(niryo_robot_rpi
  "/home/niryo/catkin_ws/src/niryo_robot_rpi/srv/ChangeMotorConfig.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_rpi
)
_generate_srv_cpp(niryo_robot_rpi
  "/home/niryo/catkin_ws/src/niryo_robot_rpi/srv/SetPullup.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_rpi
)

### Generating Module File
_generate_module_cpp(niryo_robot_rpi
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_rpi
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(niryo_robot_rpi_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(niryo_robot_rpi_generate_messages niryo_robot_rpi_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_rpi/srv/GetDigitalIO.srv" NAME_WE)
add_dependencies(niryo_robot_rpi_generate_messages_cpp _niryo_robot_rpi_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_rpi/msg/DigitalIOState.msg" NAME_WE)
add_dependencies(niryo_robot_rpi_generate_messages_cpp _niryo_robot_rpi_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_rpi/srv/SetDigitalIO.srv" NAME_WE)
add_dependencies(niryo_robot_rpi_generate_messages_cpp _niryo_robot_rpi_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_rpi/msg/AnalogIO.msg" NAME_WE)
add_dependencies(niryo_robot_rpi_generate_messages_cpp _niryo_robot_rpi_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_rpi/srv/SetAnalogIO.srv" NAME_WE)
add_dependencies(niryo_robot_rpi_generate_messages_cpp _niryo_robot_rpi_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_rpi/srv/LedBlinker.srv" NAME_WE)
add_dependencies(niryo_robot_rpi_generate_messages_cpp _niryo_robot_rpi_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_rpi/msg/AnalogIOState.msg" NAME_WE)
add_dependencies(niryo_robot_rpi_generate_messages_cpp _niryo_robot_rpi_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_rpi/srv/SetIOMode.srv" NAME_WE)
add_dependencies(niryo_robot_rpi_generate_messages_cpp _niryo_robot_rpi_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_rpi/msg/LogStatus.msg" NAME_WE)
add_dependencies(niryo_robot_rpi_generate_messages_cpp _niryo_robot_rpi_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_rpi/srv/GetAnalogIO.srv" NAME_WE)
add_dependencies(niryo_robot_rpi_generate_messages_cpp _niryo_robot_rpi_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_rpi/srv/ChangeMotorConfig.srv" NAME_WE)
add_dependencies(niryo_robot_rpi_generate_messages_cpp _niryo_robot_rpi_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_rpi/msg/DigitalIO.msg" NAME_WE)
add_dependencies(niryo_robot_rpi_generate_messages_cpp _niryo_robot_rpi_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_rpi/srv/SetPullup.srv" NAME_WE)
add_dependencies(niryo_robot_rpi_generate_messages_cpp _niryo_robot_rpi_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(niryo_robot_rpi_gencpp)
add_dependencies(niryo_robot_rpi_gencpp niryo_robot_rpi_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS niryo_robot_rpi_generate_messages_cpp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(niryo_robot_rpi
  "/home/niryo/catkin_ws/src/niryo_robot_rpi/msg/LogStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_rpi
)
_generate_msg_py(niryo_robot_rpi
  "/home/niryo/catkin_ws/src/niryo_robot_rpi/msg/AnalogIOState.msg"
  "${MSG_I_FLAGS}"
  "/home/niryo/catkin_ws/src/niryo_robot_rpi/msg/AnalogIO.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_rpi
)
_generate_msg_py(niryo_robot_rpi
  "/home/niryo/catkin_ws/src/niryo_robot_rpi/msg/DigitalIO.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_rpi
)
_generate_msg_py(niryo_robot_rpi
  "/home/niryo/catkin_ws/src/niryo_robot_rpi/msg/AnalogIO.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_rpi
)
_generate_msg_py(niryo_robot_rpi
  "/home/niryo/catkin_ws/src/niryo_robot_rpi/msg/DigitalIOState.msg"
  "${MSG_I_FLAGS}"
  "/home/niryo/catkin_ws/src/niryo_robot_rpi/msg/DigitalIO.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_rpi
)

### Generating Services
_generate_srv_py(niryo_robot_rpi
  "/home/niryo/catkin_ws/src/niryo_robot_rpi/srv/GetDigitalIO.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_rpi
)
_generate_srv_py(niryo_robot_rpi
  "/home/niryo/catkin_ws/src/niryo_robot_rpi/srv/SetDigitalIO.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_rpi
)
_generate_srv_py(niryo_robot_rpi
  "/home/niryo/catkin_ws/src/niryo_robot_rpi/srv/SetAnalogIO.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_rpi
)
_generate_srv_py(niryo_robot_rpi
  "/home/niryo/catkin_ws/src/niryo_robot_rpi/srv/LedBlinker.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_rpi
)
_generate_srv_py(niryo_robot_rpi
  "/home/niryo/catkin_ws/src/niryo_robot_rpi/srv/SetIOMode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_rpi
)
_generate_srv_py(niryo_robot_rpi
  "/home/niryo/catkin_ws/src/niryo_robot_rpi/srv/GetAnalogIO.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_rpi
)
_generate_srv_py(niryo_robot_rpi
  "/home/niryo/catkin_ws/src/niryo_robot_rpi/srv/ChangeMotorConfig.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_rpi
)
_generate_srv_py(niryo_robot_rpi
  "/home/niryo/catkin_ws/src/niryo_robot_rpi/srv/SetPullup.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_rpi
)

### Generating Module File
_generate_module_py(niryo_robot_rpi
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_rpi
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(niryo_robot_rpi_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(niryo_robot_rpi_generate_messages niryo_robot_rpi_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_rpi/srv/GetDigitalIO.srv" NAME_WE)
add_dependencies(niryo_robot_rpi_generate_messages_py _niryo_robot_rpi_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_rpi/msg/DigitalIOState.msg" NAME_WE)
add_dependencies(niryo_robot_rpi_generate_messages_py _niryo_robot_rpi_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_rpi/srv/SetDigitalIO.srv" NAME_WE)
add_dependencies(niryo_robot_rpi_generate_messages_py _niryo_robot_rpi_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_rpi/msg/AnalogIO.msg" NAME_WE)
add_dependencies(niryo_robot_rpi_generate_messages_py _niryo_robot_rpi_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_rpi/srv/SetAnalogIO.srv" NAME_WE)
add_dependencies(niryo_robot_rpi_generate_messages_py _niryo_robot_rpi_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_rpi/srv/LedBlinker.srv" NAME_WE)
add_dependencies(niryo_robot_rpi_generate_messages_py _niryo_robot_rpi_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_rpi/msg/AnalogIOState.msg" NAME_WE)
add_dependencies(niryo_robot_rpi_generate_messages_py _niryo_robot_rpi_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_rpi/srv/SetIOMode.srv" NAME_WE)
add_dependencies(niryo_robot_rpi_generate_messages_py _niryo_robot_rpi_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_rpi/msg/LogStatus.msg" NAME_WE)
add_dependencies(niryo_robot_rpi_generate_messages_py _niryo_robot_rpi_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_rpi/srv/GetAnalogIO.srv" NAME_WE)
add_dependencies(niryo_robot_rpi_generate_messages_py _niryo_robot_rpi_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_rpi/srv/ChangeMotorConfig.srv" NAME_WE)
add_dependencies(niryo_robot_rpi_generate_messages_py _niryo_robot_rpi_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_rpi/msg/DigitalIO.msg" NAME_WE)
add_dependencies(niryo_robot_rpi_generate_messages_py _niryo_robot_rpi_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_rpi/srv/SetPullup.srv" NAME_WE)
add_dependencies(niryo_robot_rpi_generate_messages_py _niryo_robot_rpi_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(niryo_robot_rpi_genpy)
add_dependencies(niryo_robot_rpi_genpy niryo_robot_rpi_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS niryo_robot_rpi_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_rpi)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_rpi
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(niryo_robot_rpi_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()
if(TARGET niryo_robot_msgs_generate_messages_cpp)
  add_dependencies(niryo_robot_rpi_generate_messages_cpp niryo_robot_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(niryo_robot_rpi_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(niryo_robot_rpi_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_rpi)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_rpi\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_rpi
    DESTINATION ${genpy_INSTALL_DIR}
    # skip all init files
    PATTERN "__init__.py" EXCLUDE
    PATTERN "__init__.pyc" EXCLUDE
  )
  # install init files which are not in the root folder of the generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_rpi
    DESTINATION ${genpy_INSTALL_DIR}
    FILES_MATCHING
    REGEX "${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_rpi/.+/__init__.pyc?$"
  )
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(niryo_robot_rpi_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
if(TARGET niryo_robot_msgs_generate_messages_py)
  add_dependencies(niryo_robot_rpi_generate_messages_py niryo_robot_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(niryo_robot_rpi_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(niryo_robot_rpi_generate_messages_py std_msgs_generate_messages_py)
endif()
