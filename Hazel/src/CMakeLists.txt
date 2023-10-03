# Notice name prefix of this variable, set by CMake according
# to value given with "project()" in the root CMakeLists.txt.
option(BUILD_SHARED_LIBS "Build using shared libraries" ON)
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY "${PROJECT_BINARY_DIR}/output_arch")
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY "${PROJECT_BINARY_DIR}/output_lib")
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${PROJECT_BINARY_DIR}/run")
#set(SPDLOG_DIR ${CMAKE_SOURCE_DIR})
#include_directories(${SPDLOG_DIR})

include_directories(${MyProject_SOURCE_DIR}/Hazel/include)
include_directories(${MyProject_SOURCE_DIR}/Hazel/vendor/spdlog/include)

add_library(Hazel Log.cpp Core.cpp Application.cpp)