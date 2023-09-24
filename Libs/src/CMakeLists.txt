# Notice name prefix of this variable, set by CMake according
# to value given with "project()" in the root CMakeLists.txt.
include_directories(${MyProject_SOURCE_DIR}/Libs/include)
add_library(Libs test.cpp)