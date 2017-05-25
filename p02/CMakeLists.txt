cmake_minimum_required(VERSION 3.6)
project(p02)

set(CMAKE_C_STANDARD 11)

set(SOURCE_FILES

        datatypes.h
        pingpong-tasks3.c

        pingpong.c
        pingpong.h
        queue.c
        queue.h)

add_executable(p02 ${SOURCE_FILES})