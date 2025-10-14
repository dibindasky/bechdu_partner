# Minimal CMakeLists.txt just to pass the 16KB flag
cmake_minimum_required(VERSION 3.10)
project(bechdu_partner)

# Add a dummy library (required)
add_library(dummy-lib SHARED dummy.cpp)

# Set flexible page size
set(CMAKE_SHARED_LINKER_FLAGS "${CMAKE_SHARED_LINKER_FLAGS} -Wl,--allow-multiple-definition")
