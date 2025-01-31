# Copyright (c) 2021, NVIDIA CORPORATION.
#
# Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except
# in compliance with the License. You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software distributed under the License
# is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express
# or implied. See the License for the specific language governing permissions and limitations under
# the License.

# Generate version_config.hpp from the version found in CMakeLists.txt
function(write_version)
  message(STATUS "RMM VERSION: ${RMM_VERSION}")
  math(EXPR RMM_VERSION_MAJOR_CPP_HEADER "${RMM_VERSION_MAJOR} + 0" OUTPUT_FORMAT DECIMAL)
  math(EXPR RMM_VERSION_MINOR_CPP_HEADER "${RMM_VERSION_MINOR} + 0" OUTPUT_FORMAT DECIMAL)
  math(EXPR RMM_VERSION_PATCH_CPP_HEADER "${RMM_VERSION_PATCH} + 0" OUTPUT_FORMAT DECIMAL)
  configure_file(${RMM_SOURCE_DIR}/cmake/version_config.hpp.in
                 ${RMM_BINARY_DIR}/include/rmm/version_config.hpp @ONLY)
endfunction(write_version)
