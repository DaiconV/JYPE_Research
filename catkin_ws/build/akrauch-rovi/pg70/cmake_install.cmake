# Install script for directory: /home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/akrauch-rovi/pg70

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pg70/srv" TYPE FILE FILES
    "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/akrauch-rovi/pg70/srv/Close.srv"
    "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/akrauch-rovi/pg70/srv/Home.srv"
    "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/akrauch-rovi/pg70/srv/Move.srv"
    "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/akrauch-rovi/pg70/srv/Open.srv"
    "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/akrauch-rovi/pg70/srv/Stop.srv"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pg70/cmake" TYPE FILE FILES "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/build/akrauch-rovi/pg70/catkin_generated/installspace/pg70-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/devel/include/pg70")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/devel/share/roseus/ros/pg70")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/devel/share/common-lisp/ros/pg70")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/devel/share/gennodejs/ros/pg70")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/devel/lib/python2.7/dist-packages/pg70")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/devel/lib/python2.7/dist-packages/pg70")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/build/akrauch-rovi/pg70/catkin_generated/installspace/pg70.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pg70/cmake" TYPE FILE FILES "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/build/akrauch-rovi/pg70/catkin_generated/installspace/pg70-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pg70/cmake" TYPE FILE FILES
    "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/build/akrauch-rovi/pg70/catkin_generated/installspace/pg70Config.cmake"
    "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/build/akrauch-rovi/pg70/catkin_generated/installspace/pg70Config-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pg70" TYPE FILE FILES "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/akrauch-rovi/pg70/package.xml")
endif()

