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
CMAKE_COMMAND = "/home/lucas/Área de Trabalho/clion-2016.3.4/bin/cmake/bin/cmake"

# The command to remove a file.
RM = "/home/lucas/Área de Trabalho/clion-2016.3.4/bin/cmake/bin/cmake" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/home/lucas/Documentos/UTFPR/Sistemas Operacionais/Projetos/p03"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/home/lucas/Documentos/UTFPR/Sistemas Operacionais/Projetos/p03/cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/p03.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/p03.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/p03.dir/flags.make

CMakeFiles/p03.dir/pingpong.c.o: CMakeFiles/p03.dir/flags.make
CMakeFiles/p03.dir/pingpong.c.o: ../pingpong.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/lucas/Documentos/UTFPR/Sistemas Operacionais/Projetos/p03/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/p03.dir/pingpong.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/p03.dir/pingpong.c.o   -c "/home/lucas/Documentos/UTFPR/Sistemas Operacionais/Projetos/p03/pingpong.c"

CMakeFiles/p03.dir/pingpong.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/p03.dir/pingpong.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/home/lucas/Documentos/UTFPR/Sistemas Operacionais/Projetos/p03/pingpong.c" > CMakeFiles/p03.dir/pingpong.c.i

CMakeFiles/p03.dir/pingpong.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/p03.dir/pingpong.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/home/lucas/Documentos/UTFPR/Sistemas Operacionais/Projetos/p03/pingpong.c" -o CMakeFiles/p03.dir/pingpong.c.s

CMakeFiles/p03.dir/pingpong.c.o.requires:

.PHONY : CMakeFiles/p03.dir/pingpong.c.o.requires

CMakeFiles/p03.dir/pingpong.c.o.provides: CMakeFiles/p03.dir/pingpong.c.o.requires
	$(MAKE) -f CMakeFiles/p03.dir/build.make CMakeFiles/p03.dir/pingpong.c.o.provides.build
.PHONY : CMakeFiles/p03.dir/pingpong.c.o.provides

CMakeFiles/p03.dir/pingpong.c.o.provides.build: CMakeFiles/p03.dir/pingpong.c.o


CMakeFiles/p03.dir/pingpong-dispatcher.c.o: CMakeFiles/p03.dir/flags.make
CMakeFiles/p03.dir/pingpong-dispatcher.c.o: ../pingpong-dispatcher.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/lucas/Documentos/UTFPR/Sistemas Operacionais/Projetos/p03/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/p03.dir/pingpong-dispatcher.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/p03.dir/pingpong-dispatcher.c.o   -c "/home/lucas/Documentos/UTFPR/Sistemas Operacionais/Projetos/p03/pingpong-dispatcher.c"

CMakeFiles/p03.dir/pingpong-dispatcher.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/p03.dir/pingpong-dispatcher.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/home/lucas/Documentos/UTFPR/Sistemas Operacionais/Projetos/p03/pingpong-dispatcher.c" > CMakeFiles/p03.dir/pingpong-dispatcher.c.i

CMakeFiles/p03.dir/pingpong-dispatcher.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/p03.dir/pingpong-dispatcher.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/home/lucas/Documentos/UTFPR/Sistemas Operacionais/Projetos/p03/pingpong-dispatcher.c" -o CMakeFiles/p03.dir/pingpong-dispatcher.c.s

CMakeFiles/p03.dir/pingpong-dispatcher.c.o.requires:

.PHONY : CMakeFiles/p03.dir/pingpong-dispatcher.c.o.requires

CMakeFiles/p03.dir/pingpong-dispatcher.c.o.provides: CMakeFiles/p03.dir/pingpong-dispatcher.c.o.requires
	$(MAKE) -f CMakeFiles/p03.dir/build.make CMakeFiles/p03.dir/pingpong-dispatcher.c.o.provides.build
.PHONY : CMakeFiles/p03.dir/pingpong-dispatcher.c.o.provides

CMakeFiles/p03.dir/pingpong-dispatcher.c.o.provides.build: CMakeFiles/p03.dir/pingpong-dispatcher.c.o


CMakeFiles/p03.dir/queue.c.o: CMakeFiles/p03.dir/flags.make
CMakeFiles/p03.dir/queue.c.o: ../queue.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/lucas/Documentos/UTFPR/Sistemas Operacionais/Projetos/p03/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/p03.dir/queue.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/p03.dir/queue.c.o   -c "/home/lucas/Documentos/UTFPR/Sistemas Operacionais/Projetos/p03/queue.c"

CMakeFiles/p03.dir/queue.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/p03.dir/queue.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/home/lucas/Documentos/UTFPR/Sistemas Operacionais/Projetos/p03/queue.c" > CMakeFiles/p03.dir/queue.c.i

CMakeFiles/p03.dir/queue.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/p03.dir/queue.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/home/lucas/Documentos/UTFPR/Sistemas Operacionais/Projetos/p03/queue.c" -o CMakeFiles/p03.dir/queue.c.s

CMakeFiles/p03.dir/queue.c.o.requires:

.PHONY : CMakeFiles/p03.dir/queue.c.o.requires

CMakeFiles/p03.dir/queue.c.o.provides: CMakeFiles/p03.dir/queue.c.o.requires
	$(MAKE) -f CMakeFiles/p03.dir/build.make CMakeFiles/p03.dir/queue.c.o.provides.build
.PHONY : CMakeFiles/p03.dir/queue.c.o.provides

CMakeFiles/p03.dir/queue.c.o.provides.build: CMakeFiles/p03.dir/queue.c.o


# Object files for target p03
p03_OBJECTS = \
"CMakeFiles/p03.dir/pingpong.c.o" \
"CMakeFiles/p03.dir/pingpong-dispatcher.c.o" \
"CMakeFiles/p03.dir/queue.c.o"

# External object files for target p03
p03_EXTERNAL_OBJECTS =

p03: CMakeFiles/p03.dir/pingpong.c.o
p03: CMakeFiles/p03.dir/pingpong-dispatcher.c.o
p03: CMakeFiles/p03.dir/queue.c.o
p03: CMakeFiles/p03.dir/build.make
p03: CMakeFiles/p03.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/home/lucas/Documentos/UTFPR/Sistemas Operacionais/Projetos/p03/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_4) "Linking C executable p03"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/p03.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/p03.dir/build: p03

.PHONY : CMakeFiles/p03.dir/build

CMakeFiles/p03.dir/requires: CMakeFiles/p03.dir/pingpong.c.o.requires
CMakeFiles/p03.dir/requires: CMakeFiles/p03.dir/pingpong-dispatcher.c.o.requires
CMakeFiles/p03.dir/requires: CMakeFiles/p03.dir/queue.c.o.requires

.PHONY : CMakeFiles/p03.dir/requires

CMakeFiles/p03.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/p03.dir/cmake_clean.cmake
.PHONY : CMakeFiles/p03.dir/clean

CMakeFiles/p03.dir/depend:
	cd "/home/lucas/Documentos/UTFPR/Sistemas Operacionais/Projetos/p03/cmake-build-debug" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/home/lucas/Documentos/UTFPR/Sistemas Operacionais/Projetos/p03" "/home/lucas/Documentos/UTFPR/Sistemas Operacionais/Projetos/p03" "/home/lucas/Documentos/UTFPR/Sistemas Operacionais/Projetos/p03/cmake-build-debug" "/home/lucas/Documentos/UTFPR/Sistemas Operacionais/Projetos/p03/cmake-build-debug" "/home/lucas/Documentos/UTFPR/Sistemas Operacionais/Projetos/p03/cmake-build-debug/CMakeFiles/p03.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/p03.dir/depend

