# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.7

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /home/lucas/Downloads/clion-2017.1.2/bin/cmake/bin/cmake

# The command to remove a file.
RM = /home/lucas/Downloads/clion-2017.1.2/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/lucas/Downloads/Projetos/p08

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/lucas/Downloads/Projetos/p08/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/p08.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/p08.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/p08.dir/flags.make

CMakeFiles/p08.dir/pingpong-join.c.o: CMakeFiles/p08.dir/flags.make
CMakeFiles/p08.dir/pingpong-join.c.o: ../pingpong-join.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lucas/Downloads/Projetos/p08/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/p08.dir/pingpong-join.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/p08.dir/pingpong-join.c.o   -c /home/lucas/Downloads/Projetos/p08/pingpong-join.c

CMakeFiles/p08.dir/pingpong-join.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/p08.dir/pingpong-join.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/lucas/Downloads/Projetos/p08/pingpong-join.c > CMakeFiles/p08.dir/pingpong-join.c.i

CMakeFiles/p08.dir/pingpong-join.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/p08.dir/pingpong-join.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/lucas/Downloads/Projetos/p08/pingpong-join.c -o CMakeFiles/p08.dir/pingpong-join.c.s

CMakeFiles/p08.dir/pingpong-join.c.o.requires:

.PHONY : CMakeFiles/p08.dir/pingpong-join.c.o.requires

CMakeFiles/p08.dir/pingpong-join.c.o.provides: CMakeFiles/p08.dir/pingpong-join.c.o.requires
	$(MAKE) -f CMakeFiles/p08.dir/build.make CMakeFiles/p08.dir/pingpong-join.c.o.provides.build
.PHONY : CMakeFiles/p08.dir/pingpong-join.c.o.provides

CMakeFiles/p08.dir/pingpong-join.c.o.provides.build: CMakeFiles/p08.dir/pingpong-join.c.o


CMakeFiles/p08.dir/pingpong.c.o: CMakeFiles/p08.dir/flags.make
CMakeFiles/p08.dir/pingpong.c.o: ../pingpong.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lucas/Downloads/Projetos/p08/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/p08.dir/pingpong.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/p08.dir/pingpong.c.o   -c /home/lucas/Downloads/Projetos/p08/pingpong.c

CMakeFiles/p08.dir/pingpong.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/p08.dir/pingpong.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/lucas/Downloads/Projetos/p08/pingpong.c > CMakeFiles/p08.dir/pingpong.c.i

CMakeFiles/p08.dir/pingpong.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/p08.dir/pingpong.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/lucas/Downloads/Projetos/p08/pingpong.c -o CMakeFiles/p08.dir/pingpong.c.s

CMakeFiles/p08.dir/pingpong.c.o.requires:

.PHONY : CMakeFiles/p08.dir/pingpong.c.o.requires

CMakeFiles/p08.dir/pingpong.c.o.provides: CMakeFiles/p08.dir/pingpong.c.o.requires
	$(MAKE) -f CMakeFiles/p08.dir/build.make CMakeFiles/p08.dir/pingpong.c.o.provides.build
.PHONY : CMakeFiles/p08.dir/pingpong.c.o.provides

CMakeFiles/p08.dir/pingpong.c.o.provides.build: CMakeFiles/p08.dir/pingpong.c.o


CMakeFiles/p08.dir/queue.c.o: CMakeFiles/p08.dir/flags.make
CMakeFiles/p08.dir/queue.c.o: ../queue.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lucas/Downloads/Projetos/p08/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/p08.dir/queue.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/p08.dir/queue.c.o   -c /home/lucas/Downloads/Projetos/p08/queue.c

CMakeFiles/p08.dir/queue.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/p08.dir/queue.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/lucas/Downloads/Projetos/p08/queue.c > CMakeFiles/p08.dir/queue.c.i

CMakeFiles/p08.dir/queue.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/p08.dir/queue.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/lucas/Downloads/Projetos/p08/queue.c -o CMakeFiles/p08.dir/queue.c.s

CMakeFiles/p08.dir/queue.c.o.requires:

.PHONY : CMakeFiles/p08.dir/queue.c.o.requires

CMakeFiles/p08.dir/queue.c.o.provides: CMakeFiles/p08.dir/queue.c.o.requires
	$(MAKE) -f CMakeFiles/p08.dir/build.make CMakeFiles/p08.dir/queue.c.o.provides.build
.PHONY : CMakeFiles/p08.dir/queue.c.o.provides

CMakeFiles/p08.dir/queue.c.o.provides.build: CMakeFiles/p08.dir/queue.c.o


# Object files for target p08
p08_OBJECTS = \
"CMakeFiles/p08.dir/pingpong-join.c.o" \
"CMakeFiles/p08.dir/pingpong.c.o" \
"CMakeFiles/p08.dir/queue.c.o"

# External object files for target p08
p08_EXTERNAL_OBJECTS =

p08: CMakeFiles/p08.dir/pingpong-join.c.o
p08: CMakeFiles/p08.dir/pingpong.c.o
p08: CMakeFiles/p08.dir/queue.c.o
p08: CMakeFiles/p08.dir/build.make
p08: CMakeFiles/p08.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/lucas/Downloads/Projetos/p08/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking C executable p08"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/p08.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/p08.dir/build: p08

.PHONY : CMakeFiles/p08.dir/build

CMakeFiles/p08.dir/requires: CMakeFiles/p08.dir/pingpong-join.c.o.requires
CMakeFiles/p08.dir/requires: CMakeFiles/p08.dir/pingpong.c.o.requires
CMakeFiles/p08.dir/requires: CMakeFiles/p08.dir/queue.c.o.requires

.PHONY : CMakeFiles/p08.dir/requires

CMakeFiles/p08.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/p08.dir/cmake_clean.cmake
.PHONY : CMakeFiles/p08.dir/clean

CMakeFiles/p08.dir/depend:
	cd /home/lucas/Downloads/Projetos/p08/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/lucas/Downloads/Projetos/p08 /home/lucas/Downloads/Projetos/p08 /home/lucas/Downloads/Projetos/p08/cmake-build-debug /home/lucas/Downloads/Projetos/p08/cmake-build-debug /home/lucas/Downloads/Projetos/p08/cmake-build-debug/CMakeFiles/p08.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/p08.dir/depend

