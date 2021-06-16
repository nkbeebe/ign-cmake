#===============================================================================
# Copyright (C) 2017 Open Source Robotics Foundation
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
########################################
# Find Protobuf

# This is an ignition wrapper for finding Protobuf. The purpose of this find
# module is to search for a config-file for Protobuf before resorting to using
# the native CMake find-module for Protobuf. This ensures that if a specially
# configured version of Protobuf is installed, then its exported targets will be
# correctly imported. This is especially important on Windows in order to
# support shared library versions of Protobuf.

find_package(Protobuf ${IgnProtobuf_FIND_VERSION} QUIET CONFIG)

if(NOT ${Protobuf_FOUND})
  # If a config-file was not found, then fall back on the system-installed
  # find-module that comes with CMake.
  find_package(Protobuf ${IgnProtobuf_FIND_VERSION})
endif()

if(${Protobuf_FOUND})
  # If we have found Protobuf, then set the IgnProtobuf_FOUND flag to true so
  # that ign_find_package(~) knows that we were successful.
  set(IgnProtobuf_FOUND true)

  # Older versions of protobuf don't create imported targets, so we will create
  # them here if they have not been provided.
  include(IgnImportTarget)

  if(NOT TARGET protobuf::libprotobuf)
    ign_import_target(protobuf
      TARGET_NAME protobuf::libprotobuf
      LIB_VAR PROTOBUF_LIBRARY
      INCLUDE_VAR PROTOBUF_INCLUDE_DIR)
  endif()

  if(NOT TARGET protobuf::libprotoc)
    ign_import_target(protobuf
      TARGET_NAME protobuf::libprotoc
      LIB_VAR PROTOBUF_PROTOC_LIBRARY
      INCLUDE_VAR PROTOBUF_INCLUDE_DIR)
  endif()

  if(NOT TARGET protobuf::protoc)
    add_executable(protobuf::protoc IMPORTED)
    set_target_properties(protobuf::protoc PROPERTIES
      IMPORTED_LOCATION ${PROTOBUF_PROTOC_EXECUTABLE})
  endif()

  include(IgnPkgConfig)
  ign_pkg_config_entry(IgnProtobuf "protobuf >= ${IgnProtobuf_FIND_VERSION}")

endif()
