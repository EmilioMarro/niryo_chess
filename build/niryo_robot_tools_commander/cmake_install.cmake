# Install script for directory: /home/niryo/catkin_ws/src/niryo_robot_tools_commander

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/niryo/catkin_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/niryo_robot_tools_commander/msg" TYPE FILE FILES
    "/home/niryo/catkin_ws/src/niryo_robot_tools_commander/msg/TCP.msg"
    "/home/niryo/catkin_ws/src/niryo_robot_tools_commander/msg/ToolCommand.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/niryo_robot_tools_commander/srv" TYPE FILE FILES "/home/niryo/catkin_ws/src/niryo_robot_tools_commander/srv/SetTCP.srv")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/niryo_robot_tools_commander/action" TYPE FILE FILES "/home/niryo/catkin_ws/src/niryo_robot_tools_commander/action/Tool.action")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/niryo_robot_tools_commander/msg" TYPE FILE FILES
    "/home/niryo/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolAction.msg"
    "/home/niryo/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolActionGoal.msg"
    "/home/niryo/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolActionResult.msg"
    "/home/niryo/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolActionFeedback.msg"
    "/home/niryo/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolGoal.msg"
    "/home/niryo/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolResult.msg"
    "/home/niryo/catkin_ws/devel/share/niryo_robot_tools_commander/msg/ToolFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/niryo_robot_tools_commander/cmake" TYPE FILE FILES "/home/niryo/catkin_ws/build/niryo_robot_tools_commander/catkin_generated/installspace/niryo_robot_tools_commander-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/niryo/catkin_ws/devel/include/niryo_robot_tools_commander")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/niryo/catkin_ws/devel/lib/python2.7/dist-packages/niryo_robot_tools_commander")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/niryo/catkin_ws/devel/lib/python2.7/dist-packages/niryo_robot_tools_commander")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/niryo/catkin_ws/build/niryo_robot_tools_commander/catkin_generated/installspace/niryo_robot_tools_commander.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/niryo_robot_tools_commander/cmake" TYPE FILE FILES "/home/niryo/catkin_ws/build/niryo_robot_tools_commander/catkin_generated/installspace/niryo_robot_tools_commander-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/niryo_robot_tools_commander/cmake" TYPE FILE FILES
    "/home/niryo/catkin_ws/build/niryo_robot_tools_commander/catkin_generated/installspace/niryo_robot_tools_commanderConfig.cmake"
    "/home/niryo/catkin_ws/build/niryo_robot_tools_commander/catkin_generated/installspace/niryo_robot_tools_commanderConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/niryo_robot_tools_commander" TYPE FILE FILES "/home/niryo/catkin_ws/src/niryo_robot_tools_commander/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/niryo_robot_tools_commander" TYPE PROGRAM FILES "/home/niryo/catkin_ws/build/niryo_robot_tools_commander/catkin_generated/installspace/tool_commander_node.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/niryo_robot_tools_commander" TYPE PROGRAM FILES "/home/niryo/catkin_ws/build/niryo_robot_tools_commander/catkin_generated/installspace/tool_ros_command_interface.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/niryo_robot_tools_commander" TYPE PROGRAM FILES "/home/niryo/catkin_ws/build/niryo_robot_tools_commander/catkin_generated/installspace/tools_classes.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/niryo_robot_tools_commander" TYPE PROGRAM FILES "/home/niryo/catkin_ws/build/niryo_robot_tools_commander/catkin_generated/installspace/transform_handler.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/niryo_robot_tools_commander/launch" TYPE DIRECTORY FILES "/home/niryo/catkin_ws/src/niryo_robot_tools_commander/launch/")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/niryo_robot_tools_commander/config" TYPE DIRECTORY FILES "/home/niryo/catkin_ws/src/niryo_robot_tools_commander/config/")
endif()

