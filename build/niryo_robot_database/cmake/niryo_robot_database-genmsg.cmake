# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "niryo_robot_database: 2 messages, 7 services")

set(MSG_I_FLAGS "-Iniryo_robot_database:/home/niryo/catkin_ws/src/niryo_robot_database/msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(niryo_robot_database_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_database/srv/GetSettings.srv" NAME_WE)
add_custom_target(_niryo_robot_database_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_database" "/home/niryo/catkin_ws/src/niryo_robot_database/srv/GetSettings.srv" ""
)

get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_database/srv/RmFilePath.srv" NAME_WE)
add_custom_target(_niryo_robot_database_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_database" "/home/niryo/catkin_ws/src/niryo_robot_database/srv/RmFilePath.srv" ""
)

get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_database/msg/FilePath.msg" NAME_WE)
add_custom_target(_niryo_robot_database_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_database" "/home/niryo/catkin_ws/src/niryo_robot_database/msg/FilePath.msg" ""
)

get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_database/msg/Metric.msg" NAME_WE)
add_custom_target(_niryo_robot_database_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_database" "/home/niryo/catkin_ws/src/niryo_robot_database/msg/Metric.msg" ""
)

get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_database/srv/AddFilePath.srv" NAME_WE)
add_custom_target(_niryo_robot_database_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_database" "/home/niryo/catkin_ws/src/niryo_robot_database/srv/AddFilePath.srv" ""
)

get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_database/srv/GetAllByType.srv" NAME_WE)
add_custom_target(_niryo_robot_database_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_database" "/home/niryo/catkin_ws/src/niryo_robot_database/srv/GetAllByType.srv" "niryo_robot_database/FilePath"
)

get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_database/srv/SetMetric.srv" NAME_WE)
add_custom_target(_niryo_robot_database_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_database" "/home/niryo/catkin_ws/src/niryo_robot_database/srv/SetMetric.srv" ""
)

get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_database/srv/GetAllMetrics.srv" NAME_WE)
add_custom_target(_niryo_robot_database_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_database" "/home/niryo/catkin_ws/src/niryo_robot_database/srv/GetAllMetrics.srv" "niryo_robot_database/Metric"
)

get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_database/srv/SetSettings.srv" NAME_WE)
add_custom_target(_niryo_robot_database_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_database" "/home/niryo/catkin_ws/src/niryo_robot_database/srv/SetSettings.srv" ""
)

#
#  langs = gencpp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(niryo_robot_database
  "/home/niryo/catkin_ws/src/niryo_robot_database/msg/FilePath.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_database
)
_generate_msg_cpp(niryo_robot_database
  "/home/niryo/catkin_ws/src/niryo_robot_database/msg/Metric.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_database
)

### Generating Services
_generate_srv_cpp(niryo_robot_database
  "/home/niryo/catkin_ws/src/niryo_robot_database/srv/GetSettings.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_database
)
_generate_srv_cpp(niryo_robot_database
  "/home/niryo/catkin_ws/src/niryo_robot_database/srv/RmFilePath.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_database
)
_generate_srv_cpp(niryo_robot_database
  "/home/niryo/catkin_ws/src/niryo_robot_database/srv/AddFilePath.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_database
)
_generate_srv_cpp(niryo_robot_database
  "/home/niryo/catkin_ws/src/niryo_robot_database/srv/GetAllByType.srv"
  "${MSG_I_FLAGS}"
  "/home/niryo/catkin_ws/src/niryo_robot_database/msg/FilePath.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_database
)
_generate_srv_cpp(niryo_robot_database
  "/home/niryo/catkin_ws/src/niryo_robot_database/srv/SetMetric.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_database
)
_generate_srv_cpp(niryo_robot_database
  "/home/niryo/catkin_ws/src/niryo_robot_database/srv/GetAllMetrics.srv"
  "${MSG_I_FLAGS}"
  "/home/niryo/catkin_ws/src/niryo_robot_database/msg/Metric.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_database
)
_generate_srv_cpp(niryo_robot_database
  "/home/niryo/catkin_ws/src/niryo_robot_database/srv/SetSettings.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_database
)

### Generating Module File
_generate_module_cpp(niryo_robot_database
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_database
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(niryo_robot_database_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(niryo_robot_database_generate_messages niryo_robot_database_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_database/srv/GetSettings.srv" NAME_WE)
add_dependencies(niryo_robot_database_generate_messages_cpp _niryo_robot_database_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_database/srv/RmFilePath.srv" NAME_WE)
add_dependencies(niryo_robot_database_generate_messages_cpp _niryo_robot_database_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_database/msg/FilePath.msg" NAME_WE)
add_dependencies(niryo_robot_database_generate_messages_cpp _niryo_robot_database_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_database/msg/Metric.msg" NAME_WE)
add_dependencies(niryo_robot_database_generate_messages_cpp _niryo_robot_database_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_database/srv/AddFilePath.srv" NAME_WE)
add_dependencies(niryo_robot_database_generate_messages_cpp _niryo_robot_database_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_database/srv/GetAllByType.srv" NAME_WE)
add_dependencies(niryo_robot_database_generate_messages_cpp _niryo_robot_database_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_database/srv/SetMetric.srv" NAME_WE)
add_dependencies(niryo_robot_database_generate_messages_cpp _niryo_robot_database_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_database/srv/GetAllMetrics.srv" NAME_WE)
add_dependencies(niryo_robot_database_generate_messages_cpp _niryo_robot_database_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_database/srv/SetSettings.srv" NAME_WE)
add_dependencies(niryo_robot_database_generate_messages_cpp _niryo_robot_database_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(niryo_robot_database_gencpp)
add_dependencies(niryo_robot_database_gencpp niryo_robot_database_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS niryo_robot_database_generate_messages_cpp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(niryo_robot_database
  "/home/niryo/catkin_ws/src/niryo_robot_database/msg/FilePath.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_database
)
_generate_msg_py(niryo_robot_database
  "/home/niryo/catkin_ws/src/niryo_robot_database/msg/Metric.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_database
)

### Generating Services
_generate_srv_py(niryo_robot_database
  "/home/niryo/catkin_ws/src/niryo_robot_database/srv/GetSettings.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_database
)
_generate_srv_py(niryo_robot_database
  "/home/niryo/catkin_ws/src/niryo_robot_database/srv/RmFilePath.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_database
)
_generate_srv_py(niryo_robot_database
  "/home/niryo/catkin_ws/src/niryo_robot_database/srv/AddFilePath.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_database
)
_generate_srv_py(niryo_robot_database
  "/home/niryo/catkin_ws/src/niryo_robot_database/srv/GetAllByType.srv"
  "${MSG_I_FLAGS}"
  "/home/niryo/catkin_ws/src/niryo_robot_database/msg/FilePath.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_database
)
_generate_srv_py(niryo_robot_database
  "/home/niryo/catkin_ws/src/niryo_robot_database/srv/SetMetric.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_database
)
_generate_srv_py(niryo_robot_database
  "/home/niryo/catkin_ws/src/niryo_robot_database/srv/GetAllMetrics.srv"
  "${MSG_I_FLAGS}"
  "/home/niryo/catkin_ws/src/niryo_robot_database/msg/Metric.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_database
)
_generate_srv_py(niryo_robot_database
  "/home/niryo/catkin_ws/src/niryo_robot_database/srv/SetSettings.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_database
)

### Generating Module File
_generate_module_py(niryo_robot_database
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_database
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(niryo_robot_database_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(niryo_robot_database_generate_messages niryo_robot_database_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_database/srv/GetSettings.srv" NAME_WE)
add_dependencies(niryo_robot_database_generate_messages_py _niryo_robot_database_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_database/srv/RmFilePath.srv" NAME_WE)
add_dependencies(niryo_robot_database_generate_messages_py _niryo_robot_database_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_database/msg/FilePath.msg" NAME_WE)
add_dependencies(niryo_robot_database_generate_messages_py _niryo_robot_database_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_database/msg/Metric.msg" NAME_WE)
add_dependencies(niryo_robot_database_generate_messages_py _niryo_robot_database_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_database/srv/AddFilePath.srv" NAME_WE)
add_dependencies(niryo_robot_database_generate_messages_py _niryo_robot_database_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_database/srv/GetAllByType.srv" NAME_WE)
add_dependencies(niryo_robot_database_generate_messages_py _niryo_robot_database_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_database/srv/SetMetric.srv" NAME_WE)
add_dependencies(niryo_robot_database_generate_messages_py _niryo_robot_database_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_database/srv/GetAllMetrics.srv" NAME_WE)
add_dependencies(niryo_robot_database_generate_messages_py _niryo_robot_database_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_database/srv/SetSettings.srv" NAME_WE)
add_dependencies(niryo_robot_database_generate_messages_py _niryo_robot_database_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(niryo_robot_database_genpy)
add_dependencies(niryo_robot_database_genpy niryo_robot_database_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS niryo_robot_database_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_database)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_database
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_database)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_database\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_database
    DESTINATION ${genpy_INSTALL_DIR}
    # skip all init files
    PATTERN "__init__.py" EXCLUDE
    PATTERN "__init__.pyc" EXCLUDE
  )
  # install init files which are not in the root folder of the generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_database
    DESTINATION ${genpy_INSTALL_DIR}
    FILES_MATCHING
    REGEX "${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_database/.+/__init__.pyc?$"
  )
endif()
