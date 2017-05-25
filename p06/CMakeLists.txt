cmake_minimum_required(VERSION 3.7)
project(p06)

set(CMAKE_CXX_STANDARD 11)

set(SOURCE_FILES
        pingpong.c
        pingpong.h
        datatypes.h
        queue.c
        queue.h
        pingpong-contab-prio.c
        )

add_executable(p06 ${SOURCE_FILES})