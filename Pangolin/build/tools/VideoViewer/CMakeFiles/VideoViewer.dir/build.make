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
include tools/VideoViewer/CMakeFiles/VideoViewer.dir/depend.make

# Include the progress variables for this target.
include tools/VideoViewer/CMakeFiles/VideoViewer.dir/progress.make

# Include the compile flags for this target's objects.
include tools/VideoViewer/CMakeFiles/VideoViewer.dir/flags.make

tools/VideoViewer/CMakeFiles/VideoViewer.dir/main.cpp.o: tools/VideoViewer/CMakeFiles/VideoViewer.dir/flags.make
tools/VideoViewer/CMakeFiles/VideoViewer.dir/main.cpp.o: ../tools/VideoViewer/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/sakshamramkhatod/Desktop/Stuff/slam/Pangolin/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tools/VideoViewer/CMakeFiles/VideoViewer.dir/main.cpp.o"
	cd /Users/sakshamramkhatod/Desktop/Stuff/slam/Pangolin/build/tools/VideoViewer && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/VideoViewer.dir/main.cpp.o -c /Users/sakshamramkhatod/Desktop/Stuff/slam/Pangolin/tools/VideoViewer/main.cpp

tools/VideoViewer/CMakeFiles/VideoViewer.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/VideoViewer.dir/main.cpp.i"
	cd /Users/sakshamramkhatod/Desktop/Stuff/slam/Pangolin/build/tools/VideoViewer && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/sakshamramkhatod/Desktop/Stuff/slam/Pangolin/tools/VideoViewer/main.cpp > CMakeFiles/VideoViewer.dir/main.cpp.i

tools/VideoViewer/CMakeFiles/VideoViewer.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/VideoViewer.dir/main.cpp.s"
	cd /Users/sakshamramkhatod/Desktop/Stuff/slam/Pangolin/build/tools/VideoViewer && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/sakshamramkhatod/Desktop/Stuff/slam/Pangolin/tools/VideoViewer/main.cpp -o CMakeFiles/VideoViewer.dir/main.cpp.s

# Object files for target VideoViewer
VideoViewer_OBJECTS = \
"CMakeFiles/VideoViewer.dir/main.cpp.o"

# External object files for target VideoViewer
VideoViewer_EXTERNAL_OBJECTS =

tools/VideoViewer/VideoViewer: tools/VideoViewer/CMakeFiles/VideoViewer.dir/main.cpp.o
tools/VideoViewer/VideoViewer: tools/VideoViewer/CMakeFiles/VideoViewer.dir/build.make
tools/VideoViewer/VideoViewer: src/libpangolin.dylib
tools/VideoViewer/VideoViewer: /usr/local/lib/libGLEW.dylib
tools/VideoViewer/VideoViewer: tools/VideoViewer/CMakeFiles/VideoViewer.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/sakshamramkhatod/Desktop/Stuff/slam/Pangolin/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable VideoViewer"
	cd /Users/sakshamramkhatod/Desktop/Stuff/slam/Pangolin/build/tools/VideoViewer && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/VideoViewer.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tools/VideoViewer/CMakeFiles/VideoViewer.dir/build: tools/VideoViewer/VideoViewer

.PHONY : tools/VideoViewer/CMakeFiles/VideoViewer.dir/build

tools/VideoViewer/CMakeFiles/VideoViewer.dir/clean:
	cd /Users/sakshamramkhatod/Desktop/Stuff/slam/Pangolin/build/tools/VideoViewer && $(CMAKE_COMMAND) -P CMakeFiles/VideoViewer.dir/cmake_clean.cmake
.PHONY : tools/VideoViewer/CMakeFiles/VideoViewer.dir/clean

tools/VideoViewer/CMakeFiles/VideoViewer.dir/depend:
	cd /Users/sakshamramkhatod/Desktop/Stuff/slam/Pangolin/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/sakshamramkhatod/Desktop/Stuff/slam/Pangolin /Users/sakshamramkhatod/Desktop/Stuff/slam/Pangolin/tools/VideoViewer /Users/sakshamramkhatod/Desktop/Stuff/slam/Pangolin/build /Users/sakshamramkhatod/Desktop/Stuff/slam/Pangolin/build/tools/VideoViewer /Users/sakshamramkhatod/Desktop/Stuff/slam/Pangolin/build/tools/VideoViewer/CMakeFiles/VideoViewer.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tools/VideoViewer/CMakeFiles/VideoViewer.dir/depend

