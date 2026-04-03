# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "niryo_robot_vision: 1 messages, 5 services")

set(MSG_I_FLAGS "-Iniryo_robot_vision:/home/niryo/catkin_ws/src/niryo_robot_vision/msg;-Iniryo_robot_msgs:/home/niryo/catkin_ws/src/niryo_robot_msgs/msg;-Isensor_msgs:/opt/ros/kinetic/share/sensor_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(niryo_robot_vision_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_vision/msg/ImageParameters.msg" NAME_WE)
add_custom_target(_niryo_robot_vision_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_vision" "/home/niryo/catkin_ws/src/niryo_robot_vision/msg/ImageParameters.msg" ""
)

get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_vision/srv/DebugMarkers.srv" NAME_WE)
add_custom_target(_niryo_robot_vision_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_vision" "/home/niryo/catkin_ws/src/niryo_robot_vision/srv/DebugMarkers.srv" "sensor_msgs/CompressedImage:std_msgs/Header"
)

get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_vision/srv/DebugColorDetection.srv" NAME_WE)
add_custom_target(_niryo_robot_vision_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_vision" "/home/niryo/catkin_ws/src/niryo_robot_vision/srv/DebugColorDetection.srv" "sensor_msgs/CompressedImage:std_msgs/Header"
)

get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_vision/srv/SetImageParameter.srv" NAME_WE)
add_custom_target(_niryo_robot_vision_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_vision" "/home/niryo/catkin_ws/src/niryo_robot_vision/srv/SetImageParameter.srv" ""
)

get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_vision/srv/TakePicture.srv" NAME_WE)
add_custom_target(_niryo_robot_vision_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_vision" "/home/niryo/catkin_ws/src/niryo_robot_vision/srv/TakePicture.srv" ""
)

get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_vision/srv/ObjDetection.srv" NAME_WE)
add_custom_target(_niryo_robot_vision_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_vision" "/home/niryo/catkin_ws/src/niryo_robot_vision/srv/ObjDetection.srv" "niryo_robot_msgs/ObjectPose:sensor_msgs/CompressedImage:std_msgs/Header"
)

#
#  langs = gencpp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(niryo_robot_vision
  "/home/niryo/catkin_ws/src/niryo_robot_vision/msg/ImageParameters.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_vision
)

### Generating Services
_generate_srv_cpp(niryo_robot_vision
  "/home/niryo/catkin_ws/src/niryo_robot_vision/srv/DebugColorDetection.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/CompressedImage.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_vision
)
_generate_srv_cpp(niryo_robot_vision
  "/home/niryo/catkin_ws/src/niryo_robot_vision/srv/ObjDetection.srv"
  "${MSG_I_FLAGS}"
  "/home/niryo/catkin_ws/src/niryo_robot_msgs/msg/ObjectPose.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/CompressedImage.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_vision
)
_generate_srv_cpp(niryo_robot_vision
  "/home/niryo/catkin_ws/src/niryo_robot_vision/srv/DebugMarkers.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/CompressedImage.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_vision
)
_generate_srv_cpp(niryo_robot_vision
  "/home/niryo/catkin_ws/src/niryo_robot_vision/srv/SetImageParameter.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_vision
)
_generate_srv_cpp(niryo_robot_vision
  "/home/niryo/catkin_ws/src/niryo_robot_vision/srv/TakePicture.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_vision
)

### Generating Module File
_generate_module_cpp(niryo_robot_vision
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_vision
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(niryo_robot_vision_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(niryo_robot_vision_generate_messages niryo_robot_vision_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_vision/msg/ImageParameters.msg" NAME_WE)
add_dependencies(niryo_robot_vision_generate_messages_cpp _niryo_robot_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_vision/srv/DebugMarkers.srv" NAME_WE)
add_dependencies(niryo_robot_vision_generate_messages_cpp _niryo_robot_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_vision/srv/DebugColorDetection.srv" NAME_WE)
add_dependencies(niryo_robot_vision_generate_messages_cpp _niryo_robot_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_vision/srv/SetImageParameter.srv" NAME_WE)
add_dependencies(niryo_robot_vision_generate_messages_cpp _niryo_robot_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_vision/srv/TakePicture.srv" NAME_WE)
add_dependencies(niryo_robot_vision_generate_messages_cpp _niryo_robot_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_vision/srv/ObjDetection.srv" NAME_WE)
add_dependencies(niryo_robot_vision_generate_messages_cpp _niryo_robot_vision_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(niryo_robot_vision_gencpp)
add_dependencies(niryo_robot_vision_gencpp niryo_robot_vision_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS niryo_robot_vision_generate_messages_cpp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(niryo_robot_vision
  "/home/niryo/catkin_ws/src/niryo_robot_vision/msg/ImageParameters.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_vision
)

### Generating Services
_generate_srv_py(niryo_robot_vision
  "/home/niryo/catkin_ws/src/niryo_robot_vision/srv/DebugColorDetection.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/CompressedImage.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_vision
)
_generate_srv_py(niryo_robot_vision
  "/home/niryo/catkin_ws/src/niryo_robot_vision/srv/ObjDetection.srv"
  "${MSG_I_FLAGS}"
  "/home/niryo/catkin_ws/src/niryo_robot_msgs/msg/ObjectPose.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/CompressedImage.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_vision
)
_generate_srv_py(niryo_robot_vision
  "/home/niryo/catkin_ws/src/niryo_robot_vision/srv/DebugMarkers.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/CompressedImage.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_vision
)
_generate_srv_py(niryo_robot_vision
  "/home/niryo/catkin_ws/src/niryo_robot_vision/srv/SetImageParameter.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_vision
)
_generate_srv_py(niryo_robot_vision
  "/home/niryo/catkin_ws/src/niryo_robot_vision/srv/TakePicture.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_vision
)

### Generating Module File
_generate_module_py(niryo_robot_vision
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_vision
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(niryo_robot_vision_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(niryo_robot_vision_generate_messages niryo_robot_vision_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_vision/msg/ImageParameters.msg" NAME_WE)
add_dependencies(niryo_robot_vision_generate_messages_py _niryo_robot_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_vision/srv/DebugMarkers.srv" NAME_WE)
add_dependencies(niryo_robot_vision_generate_messages_py _niryo_robot_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_vision/srv/DebugColorDetection.srv" NAME_WE)
add_dependencies(niryo_robot_vision_generate_messages_py _niryo_robot_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_vision/srv/SetImageParameter.srv" NAME_WE)
add_dependencies(niryo_robot_vision_generate_messages_py _niryo_robot_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_vision/srv/TakePicture.srv" NAME_WE)
add_dependencies(niryo_robot_vision_generate_messages_py _niryo_robot_vision_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_vision/srv/ObjDetection.srv" NAME_WE)
add_dependencies(niryo_robot_vision_generate_messages_py _niryo_robot_vision_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(niryo_robot_vision_genpy)
add_dependencies(niryo_robot_vision_genpy niryo_robot_vision_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS niryo_robot_vision_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_vision)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_vision
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET niryo_robot_msgs_generate_messages_cpp)
  add_dependencies(niryo_robot_vision_generate_messages_cpp niryo_robot_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(niryo_robot_vision_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_vision)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_vision\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_vision
    DESTINATION ${genpy_INSTALL_DIR}
    # skip all init files
    PATTERN "__init__.py" EXCLUDE
    PATTERN "__init__.pyc" EXCLUDE
  )
  # install init files which are not in the root folder of the generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_vision
    DESTINATION ${genpy_INSTALL_DIR}
    FILES_MATCHING
    REGEX "${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_vision/.+/__init__.pyc?$"
  )
endif()
if(TARGET niryo_robot_msgs_generate_messages_py)
  add_dependencies(niryo_robot_vision_generate_messages_py niryo_robot_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(niryo_robot_vision_generate_messages_py sensor_msgs_generate_messages_py)
endif()
