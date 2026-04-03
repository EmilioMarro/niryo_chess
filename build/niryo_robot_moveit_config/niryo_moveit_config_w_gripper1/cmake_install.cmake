# Install script for directory: /home/niryo/catkin_ws/src/niryo_robot_moveit_config/niryo_moveit_config_w_gripper1

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/niryo/catkin_ws/build/niryo_robot_moveit_config/niryo_moveit_config_w_gripper1/catkin_generated/installspace/niryo_moveit_config_w_gripper1.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/niryo_moveit_config_w_gripper1/cmake" TYPE FILE FILES
    "/home/niryo/catkin_ws/build/niryo_robot_moveit_config/niryo_moveit_config_w_gripper1/catkin_generated/installspace/niryo_moveit_config_w_gripper1Config.cmake"
    "/home/niryo/catkin_ws/build/niryo_robot_moveit_config/niryo_moveit_config_w_gripper1/catkin_generated/installspace/niryo_moveit_config_w_gripper1Config-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/niryo_moveit_config_w_gripper1" TYPE FILE FILES "/home/niryo/catkin_ws/src/niryo_robot_moveit_config/niryo_moveit_config_w_gripper1/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/niryo_moveit_config_w_gripper1" TYPE DIRECTORY FILES "/home/niryo/catkin_ws/src/niryo_robot_moveit_config/niryo_moveit_config_w_gripper1/launch")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/niryo_moveit_config_w_gripper1" TYPE DIRECTORY FILES "/home/niryo/catkin_ws/src/niryo_robot_moveit_config/niryo_moveit_config_w_gripper1/config")
endif()

