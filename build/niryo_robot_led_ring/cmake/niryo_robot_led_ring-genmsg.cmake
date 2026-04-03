# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "niryo_robot_led_ring: 3 messages, 2 services")

set(MSG_I_FLAGS "-Iniryo_robot_led_ring:/home/niryo/catkin_ws/src/niryo_robot_led_ring/msg;-Iniryo_robot_msgs:/home/niryo/catkin_ws/src/niryo_robot_msgs/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Ivisualization_msgs:/opt/ros/kinetic/share/visualization_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(niryo_robot_led_ring_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_led_ring/msg/LedRingStatus.msg" NAME_WE)
add_custom_target(_niryo_robot_led_ring_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_led_ring" "/home/niryo/catkin_ws/src/niryo_robot_led_ring/msg/LedRingStatus.msg" "std_msgs/ColorRGBA:niryo_robot_led_ring/LedRingAnimation"
)

get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_led_ring/srv/LedUser.srv" NAME_WE)
add_custom_target(_niryo_robot_led_ring_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_led_ring" "/home/niryo/catkin_ws/src/niryo_robot_led_ring/srv/LedUser.srv" "std_msgs/ColorRGBA:niryo_robot_led_ring/LedRingAnimation"
)

get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_led_ring/msg/LedRingAnimation.msg" NAME_WE)
add_custom_target(_niryo_robot_led_ring_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_led_ring" "/home/niryo/catkin_ws/src/niryo_robot_led_ring/msg/LedRingAnimation.msg" ""
)

get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_led_ring/msg/LedRingCurrentState.msg" NAME_WE)
add_custom_target(_niryo_robot_led_ring_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_led_ring" "/home/niryo/catkin_ws/src/niryo_robot_led_ring/msg/LedRingCurrentState.msg" "std_msgs/ColorRGBA:std_msgs/Header"
)

get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_led_ring/srv/SetLedColor.srv" NAME_WE)
add_custom_target(_niryo_robot_led_ring_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_led_ring" "/home/niryo/catkin_ws/src/niryo_robot_led_ring/srv/SetLedColor.srv" "std_msgs/ColorRGBA"
)

#
#  langs = gencpp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(niryo_robot_led_ring
  "/home/niryo/catkin_ws/src/niryo_robot_led_ring/msg/LedRingStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/home/niryo/catkin_ws/src/niryo_robot_led_ring/msg/LedRingAnimation.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_led_ring
)
_generate_msg_cpp(niryo_robot_led_ring
  "/home/niryo/catkin_ws/src/niryo_robot_led_ring/msg/LedRingAnimation.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_led_ring
)
_generate_msg_cpp(niryo_robot_led_ring
  "/home/niryo/catkin_ws/src/niryo_robot_led_ring/msg/LedRingCurrentState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_led_ring
)

### Generating Services
_generate_srv_cpp(niryo_robot_led_ring
  "/home/niryo/catkin_ws/src/niryo_robot_led_ring/srv/SetLedColor.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/ColorRGBA.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_led_ring
)
_generate_srv_cpp(niryo_robot_led_ring
  "/home/niryo/catkin_ws/src/niryo_robot_led_ring/srv/LedUser.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/home/niryo/catkin_ws/src/niryo_robot_led_ring/msg/LedRingAnimation.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_led_ring
)

### Generating Module File
_generate_module_cpp(niryo_robot_led_ring
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_led_ring
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(niryo_robot_led_ring_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(niryo_robot_led_ring_generate_messages niryo_robot_led_ring_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_led_ring/msg/LedRingStatus.msg" NAME_WE)
add_dependencies(niryo_robot_led_ring_generate_messages_cpp _niryo_robot_led_ring_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_led_ring/srv/LedUser.srv" NAME_WE)
add_dependencies(niryo_robot_led_ring_generate_messages_cpp _niryo_robot_led_ring_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_led_ring/msg/LedRingAnimation.msg" NAME_WE)
add_dependencies(niryo_robot_led_ring_generate_messages_cpp _niryo_robot_led_ring_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_led_ring/msg/LedRingCurrentState.msg" NAME_WE)
add_dependencies(niryo_robot_led_ring_generate_messages_cpp _niryo_robot_led_ring_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_led_ring/srv/SetLedColor.srv" NAME_WE)
add_dependencies(niryo_robot_led_ring_generate_messages_cpp _niryo_robot_led_ring_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(niryo_robot_led_ring_gencpp)
add_dependencies(niryo_robot_led_ring_gencpp niryo_robot_led_ring_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS niryo_robot_led_ring_generate_messages_cpp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(niryo_robot_led_ring
  "/home/niryo/catkin_ws/src/niryo_robot_led_ring/msg/LedRingStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/home/niryo/catkin_ws/src/niryo_robot_led_ring/msg/LedRingAnimation.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_led_ring
)
_generate_msg_py(niryo_robot_led_ring
  "/home/niryo/catkin_ws/src/niryo_robot_led_ring/msg/LedRingAnimation.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_led_ring
)
_generate_msg_py(niryo_robot_led_ring
  "/home/niryo/catkin_ws/src/niryo_robot_led_ring/msg/LedRingCurrentState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_led_ring
)

### Generating Services
_generate_srv_py(niryo_robot_led_ring
  "/home/niryo/catkin_ws/src/niryo_robot_led_ring/srv/SetLedColor.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/ColorRGBA.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_led_ring
)
_generate_srv_py(niryo_robot_led_ring
  "/home/niryo/catkin_ws/src/niryo_robot_led_ring/srv/LedUser.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/home/niryo/catkin_ws/src/niryo_robot_led_ring/msg/LedRingAnimation.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_led_ring
)

### Generating Module File
_generate_module_py(niryo_robot_led_ring
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_led_ring
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(niryo_robot_led_ring_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(niryo_robot_led_ring_generate_messages niryo_robot_led_ring_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_led_ring/msg/LedRingStatus.msg" NAME_WE)
add_dependencies(niryo_robot_led_ring_generate_messages_py _niryo_robot_led_ring_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_led_ring/srv/LedUser.srv" NAME_WE)
add_dependencies(niryo_robot_led_ring_generate_messages_py _niryo_robot_led_ring_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_led_ring/msg/LedRingAnimation.msg" NAME_WE)
add_dependencies(niryo_robot_led_ring_generate_messages_py _niryo_robot_led_ring_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_led_ring/msg/LedRingCurrentState.msg" NAME_WE)
add_dependencies(niryo_robot_led_ring_generate_messages_py _niryo_robot_led_ring_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_led_ring/srv/SetLedColor.srv" NAME_WE)
add_dependencies(niryo_robot_led_ring_generate_messages_py _niryo_robot_led_ring_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(niryo_robot_led_ring_genpy)
add_dependencies(niryo_robot_led_ring_genpy niryo_robot_led_ring_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS niryo_robot_led_ring_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_led_ring)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_led_ring
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET niryo_robot_msgs_generate_messages_cpp)
  add_dependencies(niryo_robot_led_ring_generate_messages_cpp niryo_robot_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(niryo_robot_led_ring_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET visualization_msgs_generate_messages_cpp)
  add_dependencies(niryo_robot_led_ring_generate_messages_cpp visualization_msgs_generate_messages_cpp)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_led_ring)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_led_ring\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_led_ring
    DESTINATION ${genpy_INSTALL_DIR}
    # skip all init files
    PATTERN "__init__.py" EXCLUDE
    PATTERN "__init__.pyc" EXCLUDE
  )
  # install init files which are not in the root folder of the generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_led_ring
    DESTINATION ${genpy_INSTALL_DIR}
    FILES_MATCHING
    REGEX "${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_led_ring/.+/__init__.pyc?$"
  )
endif()
if(TARGET niryo_robot_msgs_generate_messages_py)
  add_dependencies(niryo_robot_led_ring_generate_messages_py niryo_robot_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(niryo_robot_led_ring_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET visualization_msgs_generate_messages_py)
  add_dependencies(niryo_robot_led_ring_generate_messages_py visualization_msgs_generate_messages_py)
endif()
