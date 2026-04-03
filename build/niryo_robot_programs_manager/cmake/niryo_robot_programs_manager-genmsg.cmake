# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "niryo_robot_programs_manager: 4 messages, 6 services")

set(MSG_I_FLAGS "-Iniryo_robot_programs_manager:/home/niryo/catkin_ws/src/niryo_robot_programs_manager/msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(niryo_robot_programs_manager_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_programs_manager/msg/ProgramLanguage.msg" NAME_WE)
add_custom_target(_niryo_robot_programs_manager_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_programs_manager" "/home/niryo/catkin_ws/src/niryo_robot_programs_manager/msg/ProgramLanguage.msg" ""
)

get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_programs_manager/srv/SetProgramAutorun.srv" NAME_WE)
add_custom_target(_niryo_robot_programs_manager_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_programs_manager" "/home/niryo/catkin_ws/src/niryo_robot_programs_manager/srv/SetProgramAutorun.srv" "niryo_robot_programs_manager/ProgramLanguage"
)

get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_programs_manager/srv/ManageProgram.srv" NAME_WE)
add_custom_target(_niryo_robot_programs_manager_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_programs_manager" "/home/niryo/catkin_ws/src/niryo_robot_programs_manager/srv/ManageProgram.srv" "niryo_robot_programs_manager/ProgramLanguage"
)

get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_programs_manager/srv/GetProgramAutorunInfos.srv" NAME_WE)
add_custom_target(_niryo_robot_programs_manager_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_programs_manager" "/home/niryo/catkin_ws/src/niryo_robot_programs_manager/srv/GetProgramAutorunInfos.srv" "niryo_robot_programs_manager/ProgramLanguage"
)

get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_programs_manager/srv/GetProgramList.srv" NAME_WE)
add_custom_target(_niryo_robot_programs_manager_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_programs_manager" "/home/niryo/catkin_ws/src/niryo_robot_programs_manager/srv/GetProgramList.srv" "niryo_robot_programs_manager/ProgramLanguage:niryo_robot_programs_manager/ProgramLanguageList"
)

get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_programs_manager/msg/ProgramLanguageList.msg" NAME_WE)
add_custom_target(_niryo_robot_programs_manager_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_programs_manager" "/home/niryo/catkin_ws/src/niryo_robot_programs_manager/msg/ProgramLanguageList.msg" "niryo_robot_programs_manager/ProgramLanguage"
)

get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_programs_manager/srv/GetProgram.srv" NAME_WE)
add_custom_target(_niryo_robot_programs_manager_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_programs_manager" "/home/niryo/catkin_ws/src/niryo_robot_programs_manager/srv/GetProgram.srv" "niryo_robot_programs_manager/ProgramLanguage"
)

get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_programs_manager/msg/ProgramIsRunning.msg" NAME_WE)
add_custom_target(_niryo_robot_programs_manager_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_programs_manager" "/home/niryo/catkin_ws/src/niryo_robot_programs_manager/msg/ProgramIsRunning.msg" ""
)

get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_programs_manager/srv/ExecuteProgram.srv" NAME_WE)
add_custom_target(_niryo_robot_programs_manager_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_programs_manager" "/home/niryo/catkin_ws/src/niryo_robot_programs_manager/srv/ExecuteProgram.srv" "niryo_robot_programs_manager/ProgramLanguage"
)

get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_programs_manager/msg/ProgramList.msg" NAME_WE)
add_custom_target(_niryo_robot_programs_manager_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_programs_manager" "/home/niryo/catkin_ws/src/niryo_robot_programs_manager/msg/ProgramList.msg" "niryo_robot_programs_manager/ProgramLanguage:niryo_robot_programs_manager/ProgramLanguageList"
)

#
#  langs = gencpp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(niryo_robot_programs_manager
  "/home/niryo/catkin_ws/src/niryo_robot_programs_manager/msg/ProgramIsRunning.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_programs_manager
)
_generate_msg_cpp(niryo_robot_programs_manager
  "/home/niryo/catkin_ws/src/niryo_robot_programs_manager/msg/ProgramLanguage.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_programs_manager
)
_generate_msg_cpp(niryo_robot_programs_manager
  "/home/niryo/catkin_ws/src/niryo_robot_programs_manager/msg/ProgramLanguageList.msg"
  "${MSG_I_FLAGS}"
  "/home/niryo/catkin_ws/src/niryo_robot_programs_manager/msg/ProgramLanguage.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_programs_manager
)
_generate_msg_cpp(niryo_robot_programs_manager
  "/home/niryo/catkin_ws/src/niryo_robot_programs_manager/msg/ProgramList.msg"
  "${MSG_I_FLAGS}"
  "/home/niryo/catkin_ws/src/niryo_robot_programs_manager/msg/ProgramLanguage.msg;/home/niryo/catkin_ws/src/niryo_robot_programs_manager/msg/ProgramLanguageList.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_programs_manager
)

### Generating Services
_generate_srv_cpp(niryo_robot_programs_manager
  "/home/niryo/catkin_ws/src/niryo_robot_programs_manager/srv/ManageProgram.srv"
  "${MSG_I_FLAGS}"
  "/home/niryo/catkin_ws/src/niryo_robot_programs_manager/msg/ProgramLanguage.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_programs_manager
)
_generate_srv_cpp(niryo_robot_programs_manager
  "/home/niryo/catkin_ws/src/niryo_robot_programs_manager/srv/GetProgramAutorunInfos.srv"
  "${MSG_I_FLAGS}"
  "/home/niryo/catkin_ws/src/niryo_robot_programs_manager/msg/ProgramLanguage.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_programs_manager
)
_generate_srv_cpp(niryo_robot_programs_manager
  "/home/niryo/catkin_ws/src/niryo_robot_programs_manager/srv/GetProgramList.srv"
  "${MSG_I_FLAGS}"
  "/home/niryo/catkin_ws/src/niryo_robot_programs_manager/msg/ProgramLanguage.msg;/home/niryo/catkin_ws/src/niryo_robot_programs_manager/msg/ProgramLanguageList.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_programs_manager
)
_generate_srv_cpp(niryo_robot_programs_manager
  "/home/niryo/catkin_ws/src/niryo_robot_programs_manager/srv/GetProgram.srv"
  "${MSG_I_FLAGS}"
  "/home/niryo/catkin_ws/src/niryo_robot_programs_manager/msg/ProgramLanguage.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_programs_manager
)
_generate_srv_cpp(niryo_robot_programs_manager
  "/home/niryo/catkin_ws/src/niryo_robot_programs_manager/srv/SetProgramAutorun.srv"
  "${MSG_I_FLAGS}"
  "/home/niryo/catkin_ws/src/niryo_robot_programs_manager/msg/ProgramLanguage.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_programs_manager
)
_generate_srv_cpp(niryo_robot_programs_manager
  "/home/niryo/catkin_ws/src/niryo_robot_programs_manager/srv/ExecuteProgram.srv"
  "${MSG_I_FLAGS}"
  "/home/niryo/catkin_ws/src/niryo_robot_programs_manager/msg/ProgramLanguage.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_programs_manager
)

### Generating Module File
_generate_module_cpp(niryo_robot_programs_manager
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_programs_manager
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(niryo_robot_programs_manager_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(niryo_robot_programs_manager_generate_messages niryo_robot_programs_manager_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_programs_manager/msg/ProgramLanguage.msg" NAME_WE)
add_dependencies(niryo_robot_programs_manager_generate_messages_cpp _niryo_robot_programs_manager_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_programs_manager/srv/SetProgramAutorun.srv" NAME_WE)
add_dependencies(niryo_robot_programs_manager_generate_messages_cpp _niryo_robot_programs_manager_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_programs_manager/srv/ManageProgram.srv" NAME_WE)
add_dependencies(niryo_robot_programs_manager_generate_messages_cpp _niryo_robot_programs_manager_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_programs_manager/srv/GetProgramAutorunInfos.srv" NAME_WE)
add_dependencies(niryo_robot_programs_manager_generate_messages_cpp _niryo_robot_programs_manager_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_programs_manager/srv/GetProgramList.srv" NAME_WE)
add_dependencies(niryo_robot_programs_manager_generate_messages_cpp _niryo_robot_programs_manager_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_programs_manager/msg/ProgramLanguageList.msg" NAME_WE)
add_dependencies(niryo_robot_programs_manager_generate_messages_cpp _niryo_robot_programs_manager_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_programs_manager/srv/GetProgram.srv" NAME_WE)
add_dependencies(niryo_robot_programs_manager_generate_messages_cpp _niryo_robot_programs_manager_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_programs_manager/msg/ProgramIsRunning.msg" NAME_WE)
add_dependencies(niryo_robot_programs_manager_generate_messages_cpp _niryo_robot_programs_manager_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_programs_manager/srv/ExecuteProgram.srv" NAME_WE)
add_dependencies(niryo_robot_programs_manager_generate_messages_cpp _niryo_robot_programs_manager_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_programs_manager/msg/ProgramList.msg" NAME_WE)
add_dependencies(niryo_robot_programs_manager_generate_messages_cpp _niryo_robot_programs_manager_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(niryo_robot_programs_manager_gencpp)
add_dependencies(niryo_robot_programs_manager_gencpp niryo_robot_programs_manager_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS niryo_robot_programs_manager_generate_messages_cpp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(niryo_robot_programs_manager
  "/home/niryo/catkin_ws/src/niryo_robot_programs_manager/msg/ProgramIsRunning.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_programs_manager
)
_generate_msg_py(niryo_robot_programs_manager
  "/home/niryo/catkin_ws/src/niryo_robot_programs_manager/msg/ProgramLanguage.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_programs_manager
)
_generate_msg_py(niryo_robot_programs_manager
  "/home/niryo/catkin_ws/src/niryo_robot_programs_manager/msg/ProgramLanguageList.msg"
  "${MSG_I_FLAGS}"
  "/home/niryo/catkin_ws/src/niryo_robot_programs_manager/msg/ProgramLanguage.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_programs_manager
)
_generate_msg_py(niryo_robot_programs_manager
  "/home/niryo/catkin_ws/src/niryo_robot_programs_manager/msg/ProgramList.msg"
  "${MSG_I_FLAGS}"
  "/home/niryo/catkin_ws/src/niryo_robot_programs_manager/msg/ProgramLanguage.msg;/home/niryo/catkin_ws/src/niryo_robot_programs_manager/msg/ProgramLanguageList.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_programs_manager
)

### Generating Services
_generate_srv_py(niryo_robot_programs_manager
  "/home/niryo/catkin_ws/src/niryo_robot_programs_manager/srv/ManageProgram.srv"
  "${MSG_I_FLAGS}"
  "/home/niryo/catkin_ws/src/niryo_robot_programs_manager/msg/ProgramLanguage.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_programs_manager
)
_generate_srv_py(niryo_robot_programs_manager
  "/home/niryo/catkin_ws/src/niryo_robot_programs_manager/srv/GetProgramAutorunInfos.srv"
  "${MSG_I_FLAGS}"
  "/home/niryo/catkin_ws/src/niryo_robot_programs_manager/msg/ProgramLanguage.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_programs_manager
)
_generate_srv_py(niryo_robot_programs_manager
  "/home/niryo/catkin_ws/src/niryo_robot_programs_manager/srv/GetProgramList.srv"
  "${MSG_I_FLAGS}"
  "/home/niryo/catkin_ws/src/niryo_robot_programs_manager/msg/ProgramLanguage.msg;/home/niryo/catkin_ws/src/niryo_robot_programs_manager/msg/ProgramLanguageList.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_programs_manager
)
_generate_srv_py(niryo_robot_programs_manager
  "/home/niryo/catkin_ws/src/niryo_robot_programs_manager/srv/GetProgram.srv"
  "${MSG_I_FLAGS}"
  "/home/niryo/catkin_ws/src/niryo_robot_programs_manager/msg/ProgramLanguage.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_programs_manager
)
_generate_srv_py(niryo_robot_programs_manager
  "/home/niryo/catkin_ws/src/niryo_robot_programs_manager/srv/SetProgramAutorun.srv"
  "${MSG_I_FLAGS}"
  "/home/niryo/catkin_ws/src/niryo_robot_programs_manager/msg/ProgramLanguage.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_programs_manager
)
_generate_srv_py(niryo_robot_programs_manager
  "/home/niryo/catkin_ws/src/niryo_robot_programs_manager/srv/ExecuteProgram.srv"
  "${MSG_I_FLAGS}"
  "/home/niryo/catkin_ws/src/niryo_robot_programs_manager/msg/ProgramLanguage.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_programs_manager
)

### Generating Module File
_generate_module_py(niryo_robot_programs_manager
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_programs_manager
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(niryo_robot_programs_manager_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(niryo_robot_programs_manager_generate_messages niryo_robot_programs_manager_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_programs_manager/msg/ProgramLanguage.msg" NAME_WE)
add_dependencies(niryo_robot_programs_manager_generate_messages_py _niryo_robot_programs_manager_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_programs_manager/srv/SetProgramAutorun.srv" NAME_WE)
add_dependencies(niryo_robot_programs_manager_generate_messages_py _niryo_robot_programs_manager_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_programs_manager/srv/ManageProgram.srv" NAME_WE)
add_dependencies(niryo_robot_programs_manager_generate_messages_py _niryo_robot_programs_manager_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_programs_manager/srv/GetProgramAutorunInfos.srv" NAME_WE)
add_dependencies(niryo_robot_programs_manager_generate_messages_py _niryo_robot_programs_manager_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_programs_manager/srv/GetProgramList.srv" NAME_WE)
add_dependencies(niryo_robot_programs_manager_generate_messages_py _niryo_robot_programs_manager_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_programs_manager/msg/ProgramLanguageList.msg" NAME_WE)
add_dependencies(niryo_robot_programs_manager_generate_messages_py _niryo_robot_programs_manager_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_programs_manager/srv/GetProgram.srv" NAME_WE)
add_dependencies(niryo_robot_programs_manager_generate_messages_py _niryo_robot_programs_manager_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_programs_manager/msg/ProgramIsRunning.msg" NAME_WE)
add_dependencies(niryo_robot_programs_manager_generate_messages_py _niryo_robot_programs_manager_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_programs_manager/srv/ExecuteProgram.srv" NAME_WE)
add_dependencies(niryo_robot_programs_manager_generate_messages_py _niryo_robot_programs_manager_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/niryo/catkin_ws/src/niryo_robot_programs_manager/msg/ProgramList.msg" NAME_WE)
add_dependencies(niryo_robot_programs_manager_generate_messages_py _niryo_robot_programs_manager_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(niryo_robot_programs_manager_genpy)
add_dependencies(niryo_robot_programs_manager_genpy niryo_robot_programs_manager_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS niryo_robot_programs_manager_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_programs_manager)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_programs_manager
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_programs_manager)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_programs_manager\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_programs_manager
    DESTINATION ${genpy_INSTALL_DIR}
    # skip all init files
    PATTERN "__init__.py" EXCLUDE
    PATTERN "__init__.pyc" EXCLUDE
  )
  # install init files which are not in the root folder of the generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_programs_manager
    DESTINATION ${genpy_INSTALL_DIR}
    FILES_MATCHING
    REGEX "${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_programs_manager/.+/__init__.pyc?$"
  )
endif()
