# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.26

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/Niwenjin/Projects/KEY_VALUE

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/Niwenjin/Projects/KEY_VALUE/build

# Include any dependencies generated for this target.
include CMakeFiles/key_value.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/key_value.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/key_value.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/key_value.dir/flags.make

CMakeFiles/key_value.dir/main.cpp.o: CMakeFiles/key_value.dir/flags.make
CMakeFiles/key_value.dir/main.cpp.o: /home/Niwenjin/Projects/KEY_VALUE/main.cpp
CMakeFiles/key_value.dir/main.cpp.o: CMakeFiles/key_value.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/Niwenjin/Projects/KEY_VALUE/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/key_value.dir/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/key_value.dir/main.cpp.o -MF CMakeFiles/key_value.dir/main.cpp.o.d -o CMakeFiles/key_value.dir/main.cpp.o -c /home/Niwenjin/Projects/KEY_VALUE/main.cpp

CMakeFiles/key_value.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/key_value.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/Niwenjin/Projects/KEY_VALUE/main.cpp > CMakeFiles/key_value.dir/main.cpp.i

CMakeFiles/key_value.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/key_value.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/Niwenjin/Projects/KEY_VALUE/main.cpp -o CMakeFiles/key_value.dir/main.cpp.s

# Object files for target key_value
key_value_OBJECTS = \
"CMakeFiles/key_value.dir/main.cpp.o"

# External object files for target key_value
key_value_EXTERNAL_OBJECTS =

key_value: CMakeFiles/key_value.dir/main.cpp.o
key_value: CMakeFiles/key_value.dir/build.make
key_value: CMakeFiles/key_value.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/Niwenjin/Projects/KEY_VALUE/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable key_value"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/key_value.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/key_value.dir/build: key_value
.PHONY : CMakeFiles/key_value.dir/build

CMakeFiles/key_value.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/key_value.dir/cmake_clean.cmake
.PHONY : CMakeFiles/key_value.dir/clean

CMakeFiles/key_value.dir/depend:
	cd /home/Niwenjin/Projects/KEY_VALUE/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/Niwenjin/Projects/KEY_VALUE /home/Niwenjin/Projects/KEY_VALUE /home/Niwenjin/Projects/KEY_VALUE/build /home/Niwenjin/Projects/KEY_VALUE/build /home/Niwenjin/Projects/KEY_VALUE/build/CMakeFiles/key_value.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/key_value.dir/depend
