# Install script for directory: /home/niryo/catkin_ws/src/niryo_robot_arm_commander

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/niryo_robot_arm_commander/msg" TYPE FILE FILES
    "/home/niryo/catkin_ws/src/niryo_robot_arm_commander/msg/ArmMoveCommand.msg"
    "/home/niryo/catkin_ws/src/niryo_robot_arm_commander/msg/CommandJog.msg"
    "/home/niryo/catkin_ws/src/niryo_robot_arm_commander/msg/JointLimits.msg"
    "/home/niryo/catkin_ws/src/niryo_robot_arm_commander/msg/PausePlanExecution.msg"
    "/home/niryo/catkin_ws/src/niryo_robot_arm_commander/msg/ShiftPose.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/niryo_robot_arm_commander/srv" TYPE FILE FILES
    "/home/niryo/catkin_ws/src/niryo_robot_arm_commander/srv/ComputeTrajectory.srv"
    "/home/niryo/catkin_ws/src/niryo_robot_arm_commander/srv/GetFK.srv"
    "/home/niryo/catkin_ws/src/niryo_robot_arm_commander/srv/GetIK.srv"
    "/home/niryo/catkin_ws/src/niryo_robot_arm_commander/srv/GetJointLimits.srv"
    "/home/niryo/catkin_ws/src/niryo_robot_arm_commander/srv/JogShift.srv"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/niryo_robot_arm_commander/action" TYPE FILE FILES "/home/niryo/catkin_ws/src/niryo_robot_arm_commander/action/RobotMove.action")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/niryo_robot_arm_commander/msg" TYPE FILE FILES
    "/home/niryo/catkin_ws/devel/share/niryo_robot_arm_commander/msg/RobotMoveAction.msg"
    "/home/niryo/catkin_ws/devel/share/niryo_robot_arm_commander/msg/RobotMoveActionGoal.msg"
    "/home/niryo/catkin_ws/devel/share/niryo_robot_arm_commander/msg/RobotMoveActionResult.msg"
    "/home/niryo/catkin_ws/devel/share/niryo_robot_arm_commander/msg/RobotMoveActionFeedback.msg"
    "/home/niryo/catkin_ws/devel/share/niryo_robot_arm_commander/msg/RobotMoveGoal.msg"
    "/home/niryo/catkin_ws/devel/share/niryo_robot_arm_commander/msg/RobotMoveResult.msg"
    "/home/niryo/catkin_ws/devel/share/niryo_robot_arm_commander/msg/RobotMoveFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  include("/home/niryo/catkin_ws/build/niryo_robot_arm_commander/catkin_generated/safe_execute_install.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/niryo_robot_arm_commander/cmake" TYPE FILE FILES "/home/niryo/catkin_ws/build/niryo_robot_arm_commander/catkin_generated/installspace/niryo_robot_arm_commander-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/niryo/catkin_ws/devel/include/niryo_robot_arm_commander")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/niryo/catkin_ws/devel/lib/python2.7/dist-packages/niryo_robot_arm_commander")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/niryo/catkin_ws/devel/lib/python2.7/dist-packages/niryo_robot_arm_commander" REGEX "/\\_\\_init\\_\\_\\.py$" EXCLUDE REGEX "/\\_\\_init\\_\\_\\.pyc$" EXCLUDE)
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/niryo/catkin_ws/devel/lib/python2.7/dist-packages/niryo_robot_arm_commander" FILES_MATCHING REGEX "/home/niryo/catkin_ws/devel/lib/python2.7/dist-packages/niryo_robot_arm_commander/.+/__init__.pyc?$")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/niryo/catkin_ws/build/niryo_robot_arm_commander/catkin_generated/installspace/niryo_robot_arm_commander.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/niryo_robot_arm_commander/cmake" TYPE FILE FILES "/home/niryo/catkin_ws/build/niryo_robot_arm_commander/catkin_generated/installspace/niryo_robot_arm_commander-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/niryo_robot_arm_commander/cmake" TYPE FILE FILES
    "/home/niryo/catkin_ws/build/niryo_robot_arm_commander/catkin_generated/installspace/niryo_robot_arm_commanderConfig.cmake"
    "/home/niryo/catkin_ws/build/niryo_robot_arm_commander/catkin_generated/installspace/niryo_robot_arm_commanderConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/niryo_robot_arm_commander" TYPE FILE FILES "/home/niryo/catkin_ws/src/niryo_robot_arm_commander/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/niryo_robot_arm_commander" TYPE PROGRAM FILES "/home/niryo/catkin_ws/build/niryo_robot_arm_commander/catkin_generated/installspace/arm_commander.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/niryo_robot_arm_commander" TYPE PROGRAM FILES "/home/niryo/catkin_ws/build/niryo_robot_arm_commander/catkin_generated/installspace/arm_state.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/niryo_robot_arm_commander" TYPE PROGRAM FILES "/home/niryo/catkin_ws/build/niryo_robot_arm_commander/catkin_generated/installspace/ArmParametersValidator.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/niryo_robot_arm_commander" TYPE PROGRAM FILES "/home/niryo/catkin_ws/build/niryo_robot_arm_commander/catkin_generated/installspace/jog_controller.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/niryo_robot_arm_commander" TYPE PROGRAM FILES "/home/niryo/catkin_ws/build/niryo_robot_arm_commander/catkin_generated/installspace/kinematics_handler.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/niryo_robot_arm_commander" TYPE PROGRAM FILES "/home/niryo/catkin_ws/build/niryo_robot_arm_commander/catkin_generated/installspace/robot_commander_node.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/niryo_robot_arm_commander" TYPE PROGRAM FILES "/home/niryo/catkin_ws/build/niryo_robot_arm_commander/catkin_generated/installspace/trajectories_executor.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/niryo_robot_arm_commander" TYPE PROGRAM FILES "/home/niryo/catkin_ws/build/niryo_robot_arm_commander/catkin_generated/installspace/transform_handler.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/niryo_robot_arm_commander" TYPE PROGRAM FILES "/home/niryo/catkin_ws/build/niryo_robot_arm_commander/catkin_generated/installspace/robot_state_publisher.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/niryo_robot_arm_commander/launch" TYPE DIRECTORY FILES "/home/niryo/catkin_ws/src/niryo_robot_arm_commander/launch/")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/niryo_robot_arm_commander/config" TYPE DIRECTORY FILES "/home/niryo/catkin_ws/src/niryo_robot_arm_commander/config/")
endif()

