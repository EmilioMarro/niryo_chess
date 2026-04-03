execute_process(COMMAND "/home/niryo/catkin_ws/build/niryo_robot_reports/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/niryo/catkin_ws/build/niryo_robot_reports/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
