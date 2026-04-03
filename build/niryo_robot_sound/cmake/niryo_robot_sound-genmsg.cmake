# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "niryo_robot_sound: 2 messages, 3 services")

set(MSG_I_FLAGS "-Iniryo_robot_sound:/home/niryo/catkin_ws/src/niryo_robot_sound/msg;-Iniryo_robot_msgs:/home/niryo/catkin_ws/src/niryo_robot_msgs/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(niryo_robot_sound_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_sound/srv/ManageSound.srv" NAME_WE)
add_custom_target(_niryo_robot_sound_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_sound" "/home/niryo/catkin_ws/src/niryo_robot_sound/srv/ManageSound.srv" ""
)

get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_sound/srv/PlaySound.srv" NAME_WE)
add_custom_target(_niryo_robot_sound_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_sound" "/home/niryo/catkin_ws/src/niryo_robot_sound/srv/PlaySound.srv" ""
)

get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_sound/msg/SoundList.msg" NAME_WE)
add_custom_target(_niryo_robot_sound_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_sound" "/home/niryo/catkin_ws/src/niryo_robot_sound/msg/SoundList.msg" "niryo_robot_sound/SoundObject"
)

get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_sound/srv/TextToSpeech.srv" NAME_WE)
add_custom_target(_niryo_robot_sound_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_sound" "/home/niryo/catkin_ws/src/niryo_robot_sound/srv/TextToSpeech.srv" ""
)

get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_sound/msg/SoundObject.msg" NAME_WE)
add_custom_target(_niryo_robot_sound_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_sound" "/home/niryo/catkin_ws/src/niryo_robot_sound/msg/SoundObject.msg" ""
)

#
#  langs = gencpp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(niryo_robot_sound
  "/home/niryo/catkin_ws/src/niryo_robot_sound/msg/SoundList.msg"
  "${MSG_I_FLAGS}"
  "/home/niryo/catkin_ws/src/niryo_robot_sound/msg/SoundObject.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_sound
)
_generate_msg_cpp(niryo_robot_sound
  "/home/niryo/catkin_ws/src/niryo_robot_sound/msg/SoundObject.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_sound
)

### Generating Services
_generate_srv_cpp(niryo_robot_sound
  "/home/niryo/catkin_ws/src/niryo_robot_sound/srv/ManageSound.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_sound
)
_generate_srv_cpp(niryo_robot_sound
  "/home/niryo/catkin_ws/src/niryo_robot_sound/srv/PlaySound.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_sound
)
_generate_srv_cpp(niryo_robot_sound
  "/home/niryo/catkin_ws/src/niryo_robot_sound/srv/TextToSpeech.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_sound
)

### Generating Module File
_generate_module_cpp(niryo_robot_sound
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_sound
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(niryo_robot_sound_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(niryo_robot_sound_generate_messages niryo_robot_sound_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_sound/srv/ManageSound.srv" NAME_WE)
add_dependencies(niryo_robot_sound_generate_messages_cpp _niryo_robot_sound_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_sound/srv/PlaySound.srv" NAME_WE)
add_dependencies(niryo_robot_sound_generate_messages_cpp _niryo_robot_sound_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_sound/msg/SoundList.msg" NAME_WE)
add_dependencies(niryo_robot_sound_generate_messages_cpp _niryo_robot_sound_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_sound/srv/TextToSpeech.srv" NAME_WE)
add_dependencies(niryo_robot_sound_generate_messages_cpp _niryo_robot_sound_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_sound/msg/SoundObject.msg" NAME_WE)
add_dependencies(niryo_robot_sound_generate_messages_cpp _niryo_robot_sound_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(niryo_robot_sound_gencpp)
add_dependencies(niryo_robot_sound_gencpp niryo_robot_sound_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS niryo_robot_sound_generate_messages_cpp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(niryo_robot_sound
  "/home/niryo/catkin_ws/src/niryo_robot_sound/msg/SoundList.msg"
  "${MSG_I_FLAGS}"
  "/home/niryo/catkin_ws/src/niryo_robot_sound/msg/SoundObject.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_sound
)
_generate_msg_py(niryo_robot_sound
  "/home/niryo/catkin_ws/src/niryo_robot_sound/msg/SoundObject.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_sound
)

### Generating Services
_generate_srv_py(niryo_robot_sound
  "/home/niryo/catkin_ws/src/niryo_robot_sound/srv/ManageSound.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_sound
)
_generate_srv_py(niryo_robot_sound
  "/home/niryo/catkin_ws/src/niryo_robot_sound/srv/PlaySound.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_sound
)
_generate_srv_py(niryo_robot_sound
  "/home/niryo/catkin_ws/src/niryo_robot_sound/srv/TextToSpeech.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_sound
)

### Generating Module File
_generate_module_py(niryo_robot_sound
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_sound
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(niryo_robot_sound_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(niryo_robot_sound_generate_messages niryo_robot_sound_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_sound/srv/ManageSound.srv" NAME_WE)
add_dependencies(niryo_robot_sound_generate_messages_py _niryo_robot_sound_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_sound/srv/PlaySound.srv" NAME_WE)
add_dependencies(niryo_robot_sound_generate_messages_py _niryo_robot_sound_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_sound/msg/SoundList.msg" NAME_WE)
add_dependencies(niryo_robot_sound_generate_messages_py _niryo_robot_sound_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_sound/srv/TextToSpeech.srv" NAME_WE)
add_dependencies(niryo_robot_sound_generate_messages_py _niryo_robot_sound_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_sound/msg/SoundObject.msg" NAME_WE)
add_dependencies(niryo_robot_sound_generate_messages_py _niryo_robot_sound_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(niryo_robot_sound_genpy)
add_dependencies(niryo_robot_sound_genpy niryo_robot_sound_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS niryo_robot_sound_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_sound)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_sound
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET niryo_robot_msgs_generate_messages_cpp)
  add_dependencies(niryo_robot_sound_generate_messages_cpp niryo_robot_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(niryo_robot_sound_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_sound)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_sound\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_sound
    DESTINATION ${genpy_INSTALL_DIR}
    # skip all init files
    PATTERN "__init__.py" EXCLUDE
    PATTERN "__init__.pyc" EXCLUDE
  )
  # install init files which are not in the root folder of the generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_sound
    DESTINATION ${genpy_INSTALL_DIR}
    FILES_MATCHING
    REGEX "${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_sound/.+/__init__.pyc?$"
  )
endif()
if(TARGET niryo_robot_msgs_generate_messages_py)
  add_dependencies(niryo_robot_sound_generate_messages_py niryo_robot_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(niryo_robot_sound_generate_messages_py std_msgs_generate_messages_py)
endif()
