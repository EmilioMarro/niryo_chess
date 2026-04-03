# Install script for directory: /home/niryo/catkin_ws/src/niryo_robot_msgs

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/niryo_robot_msgs/msg" TYPE FILE FILES
    "/home/niryo/catkin_ws/src/niryo_robot_msgs/msg/BusState.msg"
    "/home/niryo/catkin_ws/src/niryo_robot_msgs/msg/CommandStatus.msg"
    "/home/niryo/catkin_ws/src/niryo_robot_msgs/msg/HardwareStatus.msg"
    "/home/niryo/catkin_ws/src/niryo_robot_msgs/msg/MotorHeader.msg"
    "/home/niryo/catkin_ws/src/niryo_robot_msgs/msg/ObjectPose.msg"
    "/home/niryo/catkin_ws/src/niryo_robot_msgs/msg/RPY.msg"
    "/home/niryo/catkin_ws/src/niryo_robot_msgs/msg/RobotState.msg"
    "/home/niryo/catkin_ws/src/niryo_robot_msgs/msg/SoftwareVersion.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/niryo_robot_msgs/srv" TYPE FILE FILES
    "/home/niryo/catkin_ws/src/niryo_robot_msgs/srv/GetBool.srv"
    "/home/niryo/catkin_ws/src/niryo_robot_msgs/srv/GetInt.srv"
    "/home/niryo/catkin_ws/src/niryo_robot_msgs/srv/GetNameDescriptionList.srv"
    "/home/niryo/catkin_ws/src/niryo_robot_msgs/srv/GetString.srv"
    "/home/niryo/catkin_ws/src/niryo_robot_msgs/srv/GetStringList.srv"
    "/home/niryo/catkin_ws/src/niryo_robot_msgs/srv/Ping.srv"
    "/home/niryo/catkin_ws/src/niryo_robot_msgs/srv/SetBool.srv"
    "/home/niryo/catkin_ws/src/niryo_robot_msgs/srv/SetFloat.srv"
    "/home/niryo/catkin_ws/src/niryo_robot_msgs/srv/SetInt.srv"
    "/home/niryo/catkin_ws/src/niryo_robot_msgs/srv/SetString.srv"
    "/home/niryo/catkin_ws/src/niryo_robot_msgs/srv/Trigger.srv"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/niryo_robot_msgs/cmake" TYPE FILE FILES "/home/niryo/catkin_ws/build/niryo_robot_msgs/catkin_generated/installspace/niryo_robot_msgs-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/niryo/catkin_ws/devel/include/niryo_robot_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/niryo/catkin_ws/devel/lib/python2.7/dist-packages/niryo_robot_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/niryo/catkin_ws/devel/lib/python2.7/dist-packages/niryo_robot_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/niryo/catkin_ws/build/niryo_robot_msgs/catkin_generated/installspace/niryo_robot_msgs.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/niryo_robot_msgs/cmake" TYPE FILE FILES "/home/niryo/catkin_ws/build/niryo_robot_msgs/catkin_generated/installspace/niryo_robot_msgs-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/niryo_robot_msgs/cmake" TYPE FILE FILES
    "/home/niryo/catkin_ws/build/niryo_robot_msgs/catkin_generated/installspace/niryo_robot_msgsConfig.cmake"
    "/home/niryo/catkin_ws/build/niryo_robot_msgs/catkin_generated/installspace/niryo_robot_msgsConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/niryo_robot_msgs" TYPE FILE FILES "/home/niryo/catkin_ws/src/niryo_robot_msgs/package.xml")
endif()

