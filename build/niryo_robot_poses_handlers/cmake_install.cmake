# Install script for directory: /home/niryo/catkin_ws/src/niryo_robot_poses_handlers

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/niryo_robot_poses_handlers/msg" TYPE FILE FILES
    "/home/niryo/catkin_ws/src/niryo_robot_poses_handlers/msg/NiryoPose.msg"
    "/home/niryo/catkin_ws/src/niryo_robot_poses_handlers/msg/Trajectory.msg"
    "/home/niryo/catkin_ws/src/niryo_robot_poses_handlers/msg/Workspace.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/niryo_robot_poses_handlers/srv" TYPE FILE FILES
    "/home/niryo/catkin_ws/src/niryo_robot_poses_handlers/srv/GetPose.srv"
    "/home/niryo/catkin_ws/src/niryo_robot_poses_handlers/srv/GetTargetPose.srv"
    "/home/niryo/catkin_ws/src/niryo_robot_poses_handlers/srv/GetTrajectory.srv"
    "/home/niryo/catkin_ws/src/niryo_robot_poses_handlers/srv/GetWorkspaceRatio.srv"
    "/home/niryo/catkin_ws/src/niryo_robot_poses_handlers/srv/GetWorkspaceRobotPoses.srv"
    "/home/niryo/catkin_ws/src/niryo_robot_poses_handlers/srv/ManagePose.srv"
    "/home/niryo/catkin_ws/src/niryo_robot_poses_handlers/srv/ManageTrajectory.srv"
    "/home/niryo/catkin_ws/src/niryo_robot_poses_handlers/srv/ManageWorkspace.srv"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  include("/home/niryo/catkin_ws/build/niryo_robot_poses_handlers/catkin_generated/safe_execute_install.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/niryo_robot_poses_handlers/cmake" TYPE FILE FILES "/home/niryo/catkin_ws/build/niryo_robot_poses_handlers/catkin_generated/installspace/niryo_robot_poses_handlers-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/niryo/catkin_ws/devel/include/niryo_robot_poses_handlers")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/niryo/catkin_ws/devel/lib/python2.7/dist-packages/niryo_robot_poses_handlers")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/niryo/catkin_ws/devel/lib/python2.7/dist-packages/niryo_robot_poses_handlers" REGEX "/\\_\\_init\\_\\_\\.py$" EXCLUDE REGEX "/\\_\\_init\\_\\_\\.pyc$" EXCLUDE)
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/niryo/catkin_ws/devel/lib/python2.7/dist-packages/niryo_robot_poses_handlers" FILES_MATCHING REGEX "/home/niryo/catkin_ws/devel/lib/python2.7/dist-packages/niryo_robot_poses_handlers/.+/__init__.pyc?$")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/niryo/catkin_ws/build/niryo_robot_poses_handlers/catkin_generated/installspace/niryo_robot_poses_handlers.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/niryo_robot_poses_handlers/cmake" TYPE FILE FILES "/home/niryo/catkin_ws/build/niryo_robot_poses_handlers/catkin_generated/installspace/niryo_robot_poses_handlers-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/niryo_robot_poses_handlers/cmake" TYPE FILE FILES
    "/home/niryo/catkin_ws/build/niryo_robot_poses_handlers/catkin_generated/installspace/niryo_robot_poses_handlersConfig.cmake"
    "/home/niryo/catkin_ws/build/niryo_robot_poses_handlers/catkin_generated/installspace/niryo_robot_poses_handlersConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/niryo_robot_poses_handlers" TYPE FILE FILES "/home/niryo/catkin_ws/src/niryo_robot_poses_handlers/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/niryo_robot_poses_handlers" TYPE PROGRAM FILES "/home/niryo/catkin_ws/build/niryo_robot_poses_handlers/catkin_generated/installspace/poses_handlers_node.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/niryo_robot_poses_handlers" TYPE PROGRAM FILES "/home/niryo/catkin_ws/build/niryo_robot_poses_handlers/catkin_generated/installspace/transform_handler.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/niryo_robot_poses_handlers" TYPE PROGRAM FILES "/home/niryo/catkin_ws/build/niryo_robot_poses_handlers/catkin_generated/installspace/poses_handlers_node.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/niryo_robot_poses_handlers/grips" TYPE DIRECTORY FILES "/home/niryo/catkin_ws/src/niryo_robot_poses_handlers/grips/")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/niryo_robot_poses_handlers/config" TYPE DIRECTORY FILES "/home/niryo/catkin_ws/src/niryo_robot_poses_handlers/config/")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/niryo_robot_poses_handlers/launch" TYPE DIRECTORY FILES "/home/niryo/catkin_ws/src/niryo_robot_poses_handlers/launch/")
endif()

