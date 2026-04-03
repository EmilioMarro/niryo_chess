# Install script for directory: /home/niryo/catkin_ws/src/niryo_robot_rpi

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/niryo_robot_rpi/msg" TYPE FILE FILES
    "/home/niryo/catkin_ws/src/niryo_robot_rpi/msg/AnalogIO.msg"
    "/home/niryo/catkin_ws/src/niryo_robot_rpi/msg/AnalogIOState.msg"
    "/home/niryo/catkin_ws/src/niryo_robot_rpi/msg/DigitalIO.msg"
    "/home/niryo/catkin_ws/src/niryo_robot_rpi/msg/DigitalIOState.msg"
    "/home/niryo/catkin_ws/src/niryo_robot_rpi/msg/LogStatus.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/niryo_robot_rpi/srv" TYPE FILE FILES
    "/home/niryo/catkin_ws/src/niryo_robot_rpi/srv/ChangeMotorConfig.srv"
    "/home/niryo/catkin_ws/src/niryo_robot_rpi/srv/GetAnalogIO.srv"
    "/home/niryo/catkin_ws/src/niryo_robot_rpi/srv/GetDigitalIO.srv"
    "/home/niryo/catkin_ws/src/niryo_robot_rpi/srv/LedBlinker.srv"
    "/home/niryo/catkin_ws/src/niryo_robot_rpi/srv/SetAnalogIO.srv"
    "/home/niryo/catkin_ws/src/niryo_robot_rpi/srv/SetDigitalIO.srv"
    "/home/niryo/catkin_ws/src/niryo_robot_rpi/srv/SetIOMode.srv"
    "/home/niryo/catkin_ws/src/niryo_robot_rpi/srv/SetPullup.srv"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  include("/home/niryo/catkin_ws/build/niryo_robot_rpi/catkin_generated/safe_execute_install.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/niryo_robot_rpi/cmake" TYPE FILE FILES "/home/niryo/catkin_ws/build/niryo_robot_rpi/catkin_generated/installspace/niryo_robot_rpi-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/niryo/catkin_ws/devel/include/niryo_robot_rpi")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/niryo/catkin_ws/devel/lib/python2.7/dist-packages/niryo_robot_rpi")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/niryo/catkin_ws/devel/lib/python2.7/dist-packages/niryo_robot_rpi" REGEX "/\\_\\_init\\_\\_\\.py$" EXCLUDE REGEX "/\\_\\_init\\_\\_\\.pyc$" EXCLUDE)
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/niryo/catkin_ws/devel/lib/python2.7/dist-packages/niryo_robot_rpi" FILES_MATCHING REGEX "/home/niryo/catkin_ws/devel/lib/python2.7/dist-packages/niryo_robot_rpi/.+/__init__.pyc?$")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/niryo/catkin_ws/build/niryo_robot_rpi/catkin_generated/installspace/niryo_robot_rpi.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/niryo_robot_rpi/cmake" TYPE FILE FILES "/home/niryo/catkin_ws/build/niryo_robot_rpi/catkin_generated/installspace/niryo_robot_rpi-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/niryo_robot_rpi/cmake" TYPE FILE FILES
    "/home/niryo/catkin_ws/build/niryo_robot_rpi/catkin_generated/installspace/niryo_robot_rpiConfig.cmake"
    "/home/niryo/catkin_ws/build/niryo_robot_rpi/catkin_generated/installspace/niryo_robot_rpiConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/niryo_robot_rpi" TYPE FILE FILES "/home/niryo/catkin_ws/src/niryo_robot_rpi/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/niryo_robot_rpi" TYPE PROGRAM FILES "/home/niryo/catkin_ws/build/niryo_robot_rpi/catkin_generated/installspace/fake_rpi_node.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/niryo_robot_rpi" TYPE PROGRAM FILES "/home/niryo/catkin_ws/build/niryo_robot_rpi/catkin_generated/installspace/rpi_node.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/niryo_robot_rpi/launch" TYPE DIRECTORY FILES "/home/niryo/catkin_ws/src/niryo_robot_rpi/launch/")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/niryo_robot_rpi/config" TYPE DIRECTORY FILES "/home/niryo/catkin_ws/src/niryo_robot_rpi/config/")
endif()

