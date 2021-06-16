# Install script for directory: C:/Users/nqb0517/Desktop/gz-ws/ign-cmake

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE PROGRAM FILES
    "C:/Program Files (x86)/Microsoft Visual Studio/2019/Professional/VC/Redist/MSVC/14.28.29910/x86/Microsoft.VC142.CRT/msvcp140.dll"
    "C:/Program Files (x86)/Microsoft Visual Studio/2019/Professional/VC/Redist/MSVC/14.28.29910/x86/Microsoft.VC142.CRT/msvcp140_1.dll"
    "C:/Program Files (x86)/Microsoft Visual Studio/2019/Professional/VC/Redist/MSVC/14.28.29910/x86/Microsoft.VC142.CRT/msvcp140_2.dll"
    "C:/Program Files (x86)/Microsoft Visual Studio/2019/Professional/VC/Redist/MSVC/14.28.29910/x86/Microsoft.VC142.CRT/msvcp140_atomic_wait.dll"
    "C:/Program Files (x86)/Microsoft Visual Studio/2019/Professional/VC/Redist/MSVC/14.28.29910/x86/Microsoft.VC142.CRT/msvcp140_codecvt_ids.dll"
    "C:/Program Files (x86)/Microsoft Visual Studio/2019/Professional/VC/Redist/MSVC/14.28.29910/x86/Microsoft.VC142.CRT/vcruntime140.dll"
    "C:/Program Files (x86)/Microsoft Visual Studio/2019/Professional/VC/Redist/MSVC/14.28.29910/x86/Microsoft.VC142.CRT/concrt140.dll"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE DIRECTORY FILES "")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xcmakex" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/ignition-cmake0" TYPE FILE FILES
    "C:/Users/nqb0517/Desktop/gz-ws/ign-cmake/build/ignition-cmake0-config.cmake"
    "C:/Users/nqb0517/Desktop/gz-ws/ign-cmake/build/ignition-cmake0-config-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xmodulesx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/ignition-cmake0/cmake0" TYPE FILE FILES
    "C:/Users/nqb0517/Desktop/gz-ws/ign-cmake/cmake/FindAVCODEC.cmake"
    "C:/Users/nqb0517/Desktop/gz-ws/ign-cmake/cmake/FindAVDEVICE.cmake"
    "C:/Users/nqb0517/Desktop/gz-ws/ign-cmake/cmake/FindAVFORMAT.cmake"
    "C:/Users/nqb0517/Desktop/gz-ws/ign-cmake/cmake/FindAVUTIL.cmake"
    "C:/Users/nqb0517/Desktop/gz-ws/ign-cmake/cmake/FindCPPZMQ.cmake"
    "C:/Users/nqb0517/Desktop/gz-ws/ign-cmake/cmake/FindDL.cmake"
    "C:/Users/nqb0517/Desktop/gz-ws/ign-cmake/cmake/FindFreeImage.cmake"
    "C:/Users/nqb0517/Desktop/gz-ws/ign-cmake/cmake/FindGTS.cmake"
    "C:/Users/nqb0517/Desktop/gz-ws/ign-cmake/cmake/FindIFADDRS.cmake"
    "C:/Users/nqb0517/Desktop/gz-ws/ign-cmake/cmake/FindIgnCURL.cmake"
    "C:/Users/nqb0517/Desktop/gz-ws/ign-cmake/cmake/FindIgnProtobuf.cmake"
    "C:/Users/nqb0517/Desktop/gz-ws/ign-cmake/cmake/FindJSONCPP.cmake"
    "C:/Users/nqb0517/Desktop/gz-ws/ign-cmake/cmake/FindODE.cmake"
    "C:/Users/nqb0517/Desktop/gz-ws/ign-cmake/cmake/FindOGRE.cmake"
    "C:/Users/nqb0517/Desktop/gz-ws/ign-cmake/cmake/FindOptiX.cmake"
    "C:/Users/nqb0517/Desktop/gz-ws/ign-cmake/cmake/FindSWSCALE.cmake"
    "C:/Users/nqb0517/Desktop/gz-ws/ign-cmake/cmake/FindTINYXML2.cmake"
    "C:/Users/nqb0517/Desktop/gz-ws/ign-cmake/cmake/FindUUID.cmake"
    "C:/Users/nqb0517/Desktop/gz-ws/ign-cmake/cmake/FindYAML.cmake"
    "C:/Users/nqb0517/Desktop/gz-ws/ign-cmake/cmake/FindZIP.cmake"
    "C:/Users/nqb0517/Desktop/gz-ws/ign-cmake/cmake/FindZeroMQ.cmake"
    "C:/Users/nqb0517/Desktop/gz-ws/ign-cmake/cmake/IgnCMake.cmake"
    "C:/Users/nqb0517/Desktop/gz-ws/ign-cmake/cmake/IgnCheckSSE.cmake"
    "C:/Users/nqb0517/Desktop/gz-ws/ign-cmake/cmake/IgnCodeCoverage.cmake"
    "C:/Users/nqb0517/Desktop/gz-ws/ign-cmake/cmake/IgnConfigureBuild.cmake"
    "C:/Users/nqb0517/Desktop/gz-ws/ign-cmake/cmake/IgnConfigureProject.cmake"
    "C:/Users/nqb0517/Desktop/gz-ws/ign-cmake/cmake/IgnCreateDocs.cmake"
    "C:/Users/nqb0517/Desktop/gz-ws/ign-cmake/cmake/IgnImportTarget.cmake"
    "C:/Users/nqb0517/Desktop/gz-ws/ign-cmake/cmake/IgnPackaging.cmake"
    "C:/Users/nqb0517/Desktop/gz-ws/ign-cmake/cmake/IgnPkgConfig.cmake"
    "C:/Users/nqb0517/Desktop/gz-ws/ign-cmake/cmake/IgnRonn2Man.cmake"
    "C:/Users/nqb0517/Desktop/gz-ws/ign-cmake/cmake/IgnSetCompilerFlags.cmake"
    "C:/Users/nqb0517/Desktop/gz-ws/ign-cmake/cmake/IgnUtils.cmake"
    "C:/Users/nqb0517/Desktop/gz-ws/ign-cmake/cmake/Export.hh.in"
    "C:/Users/nqb0517/Desktop/gz-ws/ign-cmake/cmake/cmake_uninstall.cmake.in"
    "C:/Users/nqb0517/Desktop/gz-ws/ign-cmake/cmake/cpack_options.cmake.in"
    "C:/Users/nqb0517/Desktop/gz-ws/ign-cmake/cmake/ign_auto_headers.hh.in"
    "C:/Users/nqb0517/Desktop/gz-ws/ign-cmake/cmake/ignition-config.cmake.in"
    "C:/Users/nqb0517/Desktop/gz-ws/ign-cmake/cmake/upload_doc.sh.in"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xmodulesx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/ignition-cmake0/cmake0/pkgconfig" TYPE FILE FILES "C:/Users/nqb0517/Desktop/gz-ws/ign-cmake/cmake/pkgconfig/ignition.pc.in")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("C:/Users/nqb0517/Desktop/gz-ws/ign-cmake/build/doc/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "C:/Users/nqb0517/Desktop/gz-ws/ign-cmake/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
