# Install script for directory: C:/Users/nqb0517/Desktop/gz-ws/ign-cmake/doc

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Users/nqb0517/Desktop/gz-ws/ign-cmake/out/install/x64-Debug")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
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

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "C:/Users/nqb0517/Desktop/gz-ws/ign-cmake/out/install/x64-Debug/share/ignition/ignition-cmake0/doxygen/api.in;C:/Users/nqb0517/Desktop/gz-ws/ign-cmake/out/install/x64-Debug/share/ignition/ignition-cmake0/doxygen/cppreference.tag.xml;C:/Users/nqb0517/Desktop/gz-ws/ign-cmake/out/install/x64-Debug/share/ignition/ignition-cmake0/doxygen/footer.html;C:/Users/nqb0517/Desktop/gz-ws/ign-cmake/out/install/x64-Debug/share/ignition/ignition-cmake0/doxygen/header.html;C:/Users/nqb0517/Desktop/gz-ws/ign-cmake/out/install/x64-Debug/share/ignition/ignition-cmake0/doxygen/layout.xml;C:/Users/nqb0517/Desktop/gz-ws/ign-cmake/out/install/x64-Debug/share/ignition/ignition-cmake0/doxygen/tutorials-footer.html;C:/Users/nqb0517/Desktop/gz-ws/ign-cmake/out/install/x64-Debug/share/ignition/ignition-cmake0/doxygen/tutorials-header.html;C:/Users/nqb0517/Desktop/gz-ws/ign-cmake/out/install/x64-Debug/share/ignition/ignition-cmake0/doxygen/tutorials.in")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "C:/Users/nqb0517/Desktop/gz-ws/ign-cmake/out/install/x64-Debug/share/ignition/ignition-cmake0/doxygen" TYPE FILE FILES
    "C:/Users/nqb0517/Desktop/gz-ws/ign-cmake/doc/api.in"
    "C:/Users/nqb0517/Desktop/gz-ws/ign-cmake/doc/cppreference.tag.xml"
    "C:/Users/nqb0517/Desktop/gz-ws/ign-cmake/doc/footer.html"
    "C:/Users/nqb0517/Desktop/gz-ws/ign-cmake/doc/header.html"
    "C:/Users/nqb0517/Desktop/gz-ws/ign-cmake/doc/layout.xml"
    "C:/Users/nqb0517/Desktop/gz-ws/ign-cmake/doc/tutorials-footer.html"
    "C:/Users/nqb0517/Desktop/gz-ws/ign-cmake/doc/tutorials-header.html"
    "C:/Users/nqb0517/Desktop/gz-ws/ign-cmake/doc/tutorials.in"
    )
endif()

