# Compute paths
get_filename_component( PROJECT_CMAKE_DIR "${CMAKE_CURRENT_LIST_FILE}" PATH )
SET( Pangolin_INCLUDE_DIRS "/Users/sakshamramkhatod/Desktop/Stuff/slam/Pangolin/include;/Users/sakshamramkhatod/Desktop/Stuff/slam/Pangolin/build/src/include;/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.15.sdk/System/Library/Frameworks/OpenGL.framework;/usr/local/include;/usr/local/include/eigen3" )
SET( Pangolin_INCLUDE_DIR  "/Users/sakshamramkhatod/Desktop/Stuff/slam/Pangolin/include;/Users/sakshamramkhatod/Desktop/Stuff/slam/Pangolin/build/src/include;/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.15.sdk/System/Library/Frameworks/OpenGL.framework;/usr/local/include;/usr/local/include/eigen3" )

# Library dependencies (contains definitions for IMPORTED targets)
if( NOT TARGET pangolin AND NOT Pangolin_BINARY_DIR )
  include( "${PROJECT_CMAKE_DIR}/PangolinTargets.cmake" )
  
endif()

SET( Pangolin_LIBRARIES    pangolin )
SET( Pangolin_LIBRARY      pangolin )
SET( Pangolin_CMAKEMODULES /Users/sakshamramkhatod/Desktop/Stuff/slam/Pangolin/src/../CMakeModules )
