# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.25

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
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.25.2/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.25.2/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/jenifer_dubon/pixmap-ops

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/jenifer_dubon/pixmap-ops/build

# Include any dependencies generated for this target.
include CMakeFiles/pixmap_art.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/pixmap_art.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/pixmap_art.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/pixmap_art.dir/flags.make

CMakeFiles/pixmap_art.dir/src/pixmap_art.cpp.o: CMakeFiles/pixmap_art.dir/flags.make
CMakeFiles/pixmap_art.dir/src/pixmap_art.cpp.o: /Users/jenifer_dubon/pixmap-ops/src/pixmap_art.cpp
CMakeFiles/pixmap_art.dir/src/pixmap_art.cpp.o: CMakeFiles/pixmap_art.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jenifer_dubon/pixmap-ops/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/pixmap_art.dir/src/pixmap_art.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/pixmap_art.dir/src/pixmap_art.cpp.o -MF CMakeFiles/pixmap_art.dir/src/pixmap_art.cpp.o.d -o CMakeFiles/pixmap_art.dir/src/pixmap_art.cpp.o -c /Users/jenifer_dubon/pixmap-ops/src/pixmap_art.cpp

CMakeFiles/pixmap_art.dir/src/pixmap_art.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pixmap_art.dir/src/pixmap_art.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jenifer_dubon/pixmap-ops/src/pixmap_art.cpp > CMakeFiles/pixmap_art.dir/src/pixmap_art.cpp.i

CMakeFiles/pixmap_art.dir/src/pixmap_art.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pixmap_art.dir/src/pixmap_art.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jenifer_dubon/pixmap-ops/src/pixmap_art.cpp -o CMakeFiles/pixmap_art.dir/src/pixmap_art.cpp.s

CMakeFiles/pixmap_art.dir/src/image.cpp.o: CMakeFiles/pixmap_art.dir/flags.make
CMakeFiles/pixmap_art.dir/src/image.cpp.o: /Users/jenifer_dubon/pixmap-ops/src/image.cpp
CMakeFiles/pixmap_art.dir/src/image.cpp.o: CMakeFiles/pixmap_art.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jenifer_dubon/pixmap-ops/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/pixmap_art.dir/src/image.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/pixmap_art.dir/src/image.cpp.o -MF CMakeFiles/pixmap_art.dir/src/image.cpp.o.d -o CMakeFiles/pixmap_art.dir/src/image.cpp.o -c /Users/jenifer_dubon/pixmap-ops/src/image.cpp

CMakeFiles/pixmap_art.dir/src/image.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pixmap_art.dir/src/image.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jenifer_dubon/pixmap-ops/src/image.cpp > CMakeFiles/pixmap_art.dir/src/image.cpp.i

CMakeFiles/pixmap_art.dir/src/image.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pixmap_art.dir/src/image.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jenifer_dubon/pixmap-ops/src/image.cpp -o CMakeFiles/pixmap_art.dir/src/image.cpp.s

# Object files for target pixmap_art
pixmap_art_OBJECTS = \
"CMakeFiles/pixmap_art.dir/src/pixmap_art.cpp.o" \
"CMakeFiles/pixmap_art.dir/src/image.cpp.o"

# External object files for target pixmap_art
pixmap_art_EXTERNAL_OBJECTS =

/Users/jenifer_dubon/pixmap-ops/bin/pixmap_art: CMakeFiles/pixmap_art.dir/src/pixmap_art.cpp.o
/Users/jenifer_dubon/pixmap-ops/bin/pixmap_art: CMakeFiles/pixmap_art.dir/src/image.cpp.o
/Users/jenifer_dubon/pixmap-ops/bin/pixmap_art: CMakeFiles/pixmap_art.dir/build.make
/Users/jenifer_dubon/pixmap-ops/bin/pixmap_art: CMakeFiles/pixmap_art.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/jenifer_dubon/pixmap-ops/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable /Users/jenifer_dubon/pixmap-ops/bin/pixmap_art"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/pixmap_art.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/pixmap_art.dir/build: /Users/jenifer_dubon/pixmap-ops/bin/pixmap_art
.PHONY : CMakeFiles/pixmap_art.dir/build

CMakeFiles/pixmap_art.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/pixmap_art.dir/cmake_clean.cmake
.PHONY : CMakeFiles/pixmap_art.dir/clean

CMakeFiles/pixmap_art.dir/depend:
	cd /Users/jenifer_dubon/pixmap-ops/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/jenifer_dubon/pixmap-ops /Users/jenifer_dubon/pixmap-ops /Users/jenifer_dubon/pixmap-ops/build /Users/jenifer_dubon/pixmap-ops/build /Users/jenifer_dubon/pixmap-ops/build/CMakeFiles/pixmap_art.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/pixmap_art.dir/depend

