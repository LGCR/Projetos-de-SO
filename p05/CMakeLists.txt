cmake_minimum_required(VERSION 3.6)
project(p05)

set(CMAKE_CXX_STANDARD 11)

set(SOURCE_FILES
        pingpong.c
        datatypes.h
        pingpong.h
        pingpong-preempcao.c
        queue.h
        queue.c
        )

add_executable(p05 ${SOURCE_FILES})