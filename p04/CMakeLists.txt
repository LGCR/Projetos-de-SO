cmake_minimum_required(VERSION 3.6)
project(p04)

set(CMAKE_CXX_STANDARD 11)

set(SOURCE_FILES
        datatypes.h
        pingpong-scheduler.c
        pingpong.c
        pingpong.h
        queue.c
        queue.h)

add_executable(p04 ${SOURCE_FILES})