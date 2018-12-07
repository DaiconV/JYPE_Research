# Install script for directory: /home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/akrauch-rovi/pa10_controller_interface

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/build/akrauch-rovi/pa10_controller_interface/catkin_generated/installspace/pa10_controller_interface.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pa10_controller_interface/cmake" TYPE FILE FILES
    "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/build/akrauch-rovi/pa10_controller_interface/catkin_generated/installspace/pa10_controller_interfaceConfig.cmake"
    "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/build/akrauch-rovi/pa10_controller_interface/catkin_generated/installspace/pa10_controller_interfaceConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pa10_controller_interface" TYPE FILE FILES "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/akrauch-rovi/pa10_controller_interface/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pa10_controller_interface" TYPE PROGRAM FILES "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/akrauch-rovi/pa10_controller_interface/pa10_controller_interface")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pa10_controller_interface/launch" TYPE DIRECTORY FILES "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/akrauch-rovi/pa10_controller_interface/launch/")
endif()

