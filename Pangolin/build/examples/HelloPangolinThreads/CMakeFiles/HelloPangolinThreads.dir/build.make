# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.18

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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.18.1/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.18.1/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/sakshamramkhatod/Desktop/Stuff/slam/Pangolin

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/sakshamramkhatod/Desktop/Stuff/slam/Pangolin/build

# Include any dependencies generated for this target.
include examples/HelloPangolinThreads/CMakeFiles/HelloPangolinThreads.dir/depend.make

# Include the progress variables for this target.
include examples/HelloPangolinThreads/CMakeFiles/HelloPangolinThreads.dir/progress.make

# Include the compile flags for this target's objects.
include examples/HelloPangolinThreads/CMakeFiles/HelloPangolinThreads.dir/flags.make

examples/HelloPangolinThreads/CMakeFiles/HelloPangolinThreads.dir/main.cpp.o: examples/HelloPangolinThreads/CMakeFiles/HelloPangolinThreads.dir/flags.make
examples/HelloPangolinThreads/CMakeFiles/HelloPangolinThreads.dir/main.cpp.o: ../examples/HelloPangolinThreads/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/sakshamramkhatod/Desktop/Stuff/slam/Pangolin/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object examples/HelloPangolinThreads/CMakeFiles/HelloPangolinThreads.dir/main.cpp.o"
	cd /Users/sakshamramkhatod/Desktop/Stuff/slam/Pangolin/build/examples/HelloPangolinThreads && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/HelloPangolinThreads.dir/main.cpp.o -c /Users/sakshamramkhatod/Desktop/Stuff/slam/Pangolin/examples/HelloPangolinThreads/main.cpp

examples/HelloPangolinThreads/CMakeFiles/HelloPangolinThreads.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/HelloPangolinThreads.dir/main.cpp.i"
	cd /Users/sakshamramkhatod/Desktop/Stuff/slam/Pangolin/build/examples/HelloPangolinThreads && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/sakshamramkhatod/Desktop/Stuff/slam/Pangolin/examples/HelloPangolinThreads/main.cpp > CMakeFiles/HelloPangolinThreads.dir/main.cpp.i

examples/HelloPangolinThreads/CMakeFiles/HelloPangolinThreads.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/HelloPangolinThreads.dir/main.cpp.s"
	cd /Users/sakshamramkhatod/Desktop/Stuff/slam/Pangolin/build/examples/HelloPangolinThreads && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/sakshamramkhatod/Desktop/Stuff/slam/Pangolin/examples/HelloPangolinThreads/main.cpp -o CMakeFiles/HelloPangolinThreads.dir/main.cpp.s

# Object files for target HelloPangolinThreads
HelloPangolinThreads_OBJECTS = \
"CMakeFiles/HelloPangolinThreads.dir/main.cpp.o"

# External object files for target HelloPangolinThreads
HelloPangolinThreads_EXTERNAL_OBJECTS =

examples/HelloPangolinThreads/HelloPangolinThreads: examples/HelloPangolinThreads/CMakeFiles/HelloPangolinThreads.dir/main.cpp.o
examples/HelloPangolinThreads/HelloPangolinThreads: examples/HelloPangolinThreads/CMakeFiles/HelloPangolinThreads.dir/build.make
examples/HelloPangolinThreads/HelloPangolinThreads: src/libpangolin.dylib
examples/HelloPangolinThreads/HelloPangolinThreads: /usr/local/lib/libGLEW.dylib
examples/HelloPangolinThreads/HelloPangolinThreads: examples/HelloPangolinThreads/CMakeFiles/HelloPangolinThreads.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/sakshamramkhatod/Desktop/Stuff/slam/Pangolin/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable HelloPangolinThreads"
	cd /Users/sakshamramkhatod/Desktop/Stuff/slam/Pangolin/build/examples/HelloPangolinThreads && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/HelloPangolinThreads.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/HelloPangolinThreads/CMakeFiles/HelloPangolinThreads.dir/build: examples/HelloPangolinThreads/HelloPangolinThreads

.PHONY : examples/HelloPangolinThreads/CMakeFiles/HelloPangolinThreads.dir/build

examples/HelloPangolinThreads/CMakeFiles/HelloPangolinThreads.dir/clean:
	cd /Users/sakshamramkhatod/Desktop/Stuff/slam/Pangolin/build/examples/HelloPangolinThreads && $(CMAKE_COMMAND) -P CMakeFiles/HelloPangolinThreads.dir/cmake_clean.cmake
.PHONY : examples/HelloPangolinThreads/CMakeFiles/HelloPangolinThreads.dir/clean

examples/HelloPangolinThreads/CMakeFiles/HelloPangolinThreads.dir/depend:
	cd /Users/sakshamramkhatod/Desktop/Stuff/slam/Pangolin/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/sakshamramkhatod/Desktop/Stuff/slam/Pangolin /Users/sakshamramkhatod/Desktop/Stuff/slam/Pangolin/examples/HelloPangolinThreads /Users/sakshamramkhatod/Desktop/Stuff/slam/Pangolin/build /Users/sakshamramkhatod/Desktop/Stuff/slam/Pangolin/build/examples/HelloPangolinThreads /Users/sakshamramkhatod/Desktop/Stuff/slam/Pangolin/build/examples/HelloPangolinThreads/CMakeFiles/HelloPangolinThreads.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/HelloPangolinThreads/CMakeFiles/HelloPangolinThreads.dir/depend

