# Install script for directory: /home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/akrauch-rovi/pa10controller

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/install")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pa10controller/srv" TYPE FILE FILES
    "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/akrauch-rovi/pa10controller/srv/addToQueue.srv"
    "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/akrauch-rovi/pa10controller/srv/clearJointQueue.srv"
    "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/akrauch-rovi/pa10controller/srv/getJointConfig.srv"
    "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/akrauch-rovi/pa10controller/srv/setJointConfig.srv"
    "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/akrauch-rovi/pa10controller/srv/startPA10.srv"
    "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/akrauch-rovi/pa10controller/srv/startQueue.srv"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pa10controller/cmake" TYPE FILE FILES "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/build/akrauch-rovi/pa10controller/catkin_generated/installspace/pa10controller-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/devel/include/pa10controller")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/devel/share/roseus/ros/pa10controller")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/devel/share/common-lisp/ros/pa10controller")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/devel/share/gennodejs/ros/pa10controller")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/devel/lib/python2.7/dist-packages/pa10controller")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/devel/lib/python2.7/dist-packages/pa10controller")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/build/akrauch-rovi/pa10controller/catkin_generated/installspace/pa10controller.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pa10controller/cmake" TYPE FILE FILES "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/build/akrauch-rovi/pa10controller/catkin_generated/installspace/pa10controller-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pa10controller/cmake" TYPE FILE FILES
    "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/build/akrauch-rovi/pa10controller/catkin_generated/installspace/pa10controllerConfig.cmake"
    "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/build/akrauch-rovi/pa10controller/catkin_generated/installspace/pa10controllerConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pa10controller" TYPE FILE FILES "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/akrauch-rovi/pa10controller/package.xml")
endif()

