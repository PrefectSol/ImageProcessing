# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.24

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
CMAKE_SOURCE_DIR = /home/prefect/Code/C++/ImageProcessing/opencv

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/prefect/Code/C++/ImageProcessing/build

# Utility rule file for opencv_highgui_plugins.

# Include any custom commands dependencies for this target.
include CMakeFiles/opencv_highgui_plugins.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/opencv_highgui_plugins.dir/progress.make

opencv_highgui_plugins: CMakeFiles/opencv_highgui_plugins.dir/build.make
.PHONY : opencv_highgui_plugins

# Rule to build all files generated by this target.
CMakeFiles/opencv_highgui_plugins.dir/build: opencv_highgui_plugins
.PHONY : CMakeFiles/opencv_highgui_plugins.dir/build

CMakeFiles/opencv_highgui_plugins.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/opencv_highgui_plugins.dir/cmake_clean.cmake
.PHONY : CMakeFiles/opencv_highgui_plugins.dir/clean

CMakeFiles/opencv_highgui_plugins.dir/depend:
	cd /home/prefect/Code/C++/ImageProcessing/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/prefect/Code/C++/ImageProcessing/opencv /home/prefect/Code/C++/ImageProcessing/opencv /home/prefect/Code/C++/ImageProcessing/build /home/prefect/Code/C++/ImageProcessing/build /home/prefect/Code/C++/ImageProcessing/build/CMakeFiles/opencv_highgui_plugins.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/opencv_highgui_plugins.dir/depend

