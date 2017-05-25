cmake_minimum_required(VERSION 3.6)
project(p03)

set(CMAKE_CXX_STANDARD 11)

set(SOURCE_FILES
        datatypes.h
        pingpong.h
        pingpong.c
        pingpong-dispatcher.c
        queue.c
        queue.h)

add_executable(p03 ${SOURCE_FILES})