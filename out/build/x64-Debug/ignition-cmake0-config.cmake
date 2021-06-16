# - Config file for ignition-cmake (not for any other ignition libraries).
#
# To find and load ignition-cmake modules into your project, simply invoke:
#
# find_package(ignition-cmake0)
#
# That will define the variable ignition-cmake0_FOUND, and will open up access
# to all the cmake-modules and find-modules that are provided by ignition-cmake.

# We explicitly set the desired cmake version to ensure that the policy settings
# of users or of toolchains do not result in the wrong behavior for our modules.
# Note that the call to find_package(~) will PUSH a new policy stack before
# taking on these version settings, and then that stack will POP after the
# find_package(~) has exited, so this will not affect the cmake policy settings
# of a caller.
cmake_minimum_required(VERSION 3.5.1 FATAL_ERROR)

# We should only perform these operations if either
#  1. ign-cmake has not been included yet, or
#  2. we need a higher version of ign-cmake than the last one that was included
#
# The only time we should need to switch to a higher version of ign-cmake is
# when importing targets for dependencies, i.e. using the find-modules of
# ign-cmake. All find-modules that are available in older versions of ign-cmake
# should be available in newer versions of ign-cmake, so this should not create
# any conflicts.
if( NOT IGNITION_CMAKE_VERSION_MAJOR
    OR (IGNITION_CMAKE_VERSION_MAJOR LESS 0) )

  #--------------------------------------
  # Create a variable to indicate what version of ignition-cmake we are using.
  # This variable does not follow the usual cmake naming convention because it
  # is a non-standard package variable.
  set(IGNITION_CMAKE_VERSION_MAJOR 0)

  #--------------------------------------
  # Initialize the IGNITION_CMAKE_DIR variable with the location of the cmake
  # directory that sits next to this find-module.
  set(IGNITION_CMAKE_DIR "${CMAKE_CURRENT_LIST_DIR}/cmake0")

  #--------------------------------------
  # Add the location of this package's cmake directory to the CMAKE_MODULE_PATH
  list(APPEND CMAKE_MODULE_PATH "${IGNITION_CMAKE_DIR}")

  #--------------------------------------
  # include the master IgnCMake module
  include(IgnCMake)

  set(IGNITION_CMAKE_DOXYGEN_DIR "C:/Users/nqb0517/Desktop/gz-ws/ign-cmake/out/install/x64-Debug/share/ignition/ignition-cmake0/doxygen")

endif()
