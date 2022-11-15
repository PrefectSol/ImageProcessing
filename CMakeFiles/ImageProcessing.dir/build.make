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
CMAKE_SOURCE_DIR = /home/prefect/Code/C++/ImageProcessing

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/prefect/Code/C++/ImageProcessing

# Include any dependencies generated for this target.
include CMakeFiles/ImageProcessing.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/ImageProcessing.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/ImageProcessing.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ImageProcessing.dir/flags.make

CMakeFiles/ImageProcessing.dir/ImageProcessing.cpp.o: CMakeFiles/ImageProcessing.dir/flags.make
CMakeFiles/ImageProcessing.dir/ImageProcessing.cpp.o: ImageProcessing.cpp
CMakeFiles/ImageProcessing.dir/ImageProcessing.cpp.o: CMakeFiles/ImageProcessing.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/prefect/Code/C++/ImageProcessing/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/ImageProcessing.dir/ImageProcessing.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ImageProcessing.dir/ImageProcessing.cpp.o -MF CMakeFiles/ImageProcessing.dir/ImageProcessing.cpp.o.d -o CMakeFiles/ImageProcessing.dir/ImageProcessing.cpp.o -c /home/prefect/Code/C++/ImageProcessing/ImageProcessing.cpp

CMakeFiles/ImageProcessing.dir/ImageProcessing.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ImageProcessing.dir/ImageProcessing.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/prefect/Code/C++/ImageProcessing/ImageProcessing.cpp > CMakeFiles/ImageProcessing.dir/ImageProcessing.cpp.i

CMakeFiles/ImageProcessing.dir/ImageProcessing.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ImageProcessing.dir/ImageProcessing.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/prefect/Code/C++/ImageProcessing/ImageProcessing.cpp -o CMakeFiles/ImageProcessing.dir/ImageProcessing.cpp.s

# Object files for target ImageProcessing
ImageProcessing_OBJECTS = \
"CMakeFiles/ImageProcessing.dir/ImageProcessing.cpp.o"

# External object files for target ImageProcessing
ImageProcessing_EXTERNAL_OBJECTS =

ImageProcessing: CMakeFiles/ImageProcessing.dir/ImageProcessing.cpp.o
ImageProcessing: CMakeFiles/ImageProcessing.dir/build.make
ImageProcessing: /usr/local/lib64/libopencv_gapi.so.4.6.0
ImageProcessing: /usr/local/lib64/libopencv_stitching.so.4.6.0
ImageProcessing: /usr/local/lib64/libopencv_aruco.so.4.6.0
ImageProcessing: /usr/local/lib64/libopencv_barcode.so.4.6.0
ImageProcessing: /usr/local/lib64/libopencv_bgsegm.so.4.6.0
ImageProcessing: /usr/local/lib64/libopencv_bioinspired.so.4.6.0
ImageProcessing: /usr/local/lib64/libopencv_ccalib.so.4.6.0
ImageProcessing: /usr/local/lib64/libopencv_dnn_objdetect.so.4.6.0
ImageProcessing: /usr/local/lib64/libopencv_dnn_superres.so.4.6.0
ImageProcessing: /usr/local/lib64/libopencv_dpm.so.4.6.0
ImageProcessing: /usr/local/lib64/libopencv_face.so.4.6.0
ImageProcessing: /usr/local/lib64/libopencv_fuzzy.so.4.6.0
ImageProcessing: /usr/local/lib64/libopencv_hfs.so.4.6.0
ImageProcessing: /usr/local/lib64/libopencv_img_hash.so.4.6.0
ImageProcessing: /usr/local/lib64/libopencv_intensity_transform.so.4.6.0
ImageProcessing: /usr/local/lib64/libopencv_line_descriptor.so.4.6.0
ImageProcessing: /usr/local/lib64/libopencv_mcc.so.4.6.0
ImageProcessing: /usr/local/lib64/libopencv_quality.so.4.6.0
ImageProcessing: /usr/local/lib64/libopencv_rapid.so.4.6.0
ImageProcessing: /usr/local/lib64/libopencv_reg.so.4.6.0
ImageProcessing: /usr/local/lib64/libopencv_rgbd.so.4.6.0
ImageProcessing: /usr/local/lib64/libopencv_saliency.so.4.6.0
ImageProcessing: /usr/local/lib64/libopencv_stereo.so.4.6.0
ImageProcessing: /usr/local/lib64/libopencv_structured_light.so.4.6.0
ImageProcessing: /usr/local/lib64/libopencv_superres.so.4.6.0
ImageProcessing: /usr/local/lib64/libopencv_surface_matching.so.4.6.0
ImageProcessing: /usr/local/lib64/libopencv_tracking.so.4.6.0
ImageProcessing: /usr/local/lib64/libopencv_videostab.so.4.6.0
ImageProcessing: /usr/local/lib64/libopencv_wechat_qrcode.so.4.6.0
ImageProcessing: /usr/local/lib64/libopencv_xfeatures2d.so.4.6.0
ImageProcessing: /usr/local/lib64/libopencv_xobjdetect.so.4.6.0
ImageProcessing: /usr/local/lib64/libopencv_xphoto.so.4.6.0
ImageProcessing: /usr/local/lib64/libopencv_shape.so.4.6.0
ImageProcessing: /usr/local/lib64/libopencv_highgui.so.4.6.0
ImageProcessing: /usr/local/lib64/libopencv_datasets.so.4.6.0
ImageProcessing: /usr/local/lib64/libopencv_plot.so.4.6.0
ImageProcessing: /usr/local/lib64/libopencv_text.so.4.6.0
ImageProcessing: /usr/local/lib64/libopencv_ml.so.4.6.0
ImageProcessing: /usr/local/lib64/libopencv_phase_unwrapping.so.4.6.0
ImageProcessing: /usr/local/lib64/libopencv_optflow.so.4.6.0
ImageProcessing: /usr/local/lib64/libopencv_ximgproc.so.4.6.0
ImageProcessing: /usr/local/lib64/libopencv_video.so.4.6.0
ImageProcessing: /usr/local/lib64/libopencv_videoio.so.4.6.0
ImageProcessing: /usr/local/lib64/libopencv_imgcodecs.so.4.6.0
ImageProcessing: /usr/local/lib64/libopencv_objdetect.so.4.6.0
ImageProcessing: /usr/local/lib64/libopencv_calib3d.so.4.6.0
ImageProcessing: /usr/local/lib64/libopencv_dnn.so.4.6.0
ImageProcessing: /usr/local/lib64/libopencv_features2d.so.4.6.0
ImageProcessing: /usr/local/lib64/libopencv_flann.so.4.6.0
ImageProcessing: /usr/local/lib64/libopencv_photo.so.4.6.0
ImageProcessing: /usr/local/lib64/libopencv_imgproc.so.4.6.0
ImageProcessing: /usr/local/lib64/libopencv_core.so.4.6.0
ImageProcessing: CMakeFiles/ImageProcessing.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/prefect/Code/C++/ImageProcessing/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ImageProcessing"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ImageProcessing.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ImageProcessing.dir/build: ImageProcessing
.PHONY : CMakeFiles/ImageProcessing.dir/build

CMakeFiles/ImageProcessing.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ImageProcessing.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ImageProcessing.dir/clean

CMakeFiles/ImageProcessing.dir/depend:
	cd /home/prefect/Code/C++/ImageProcessing && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/prefect/Code/C++/ImageProcessing /home/prefect/Code/C++/ImageProcessing /home/prefect/Code/C++/ImageProcessing /home/prefect/Code/C++/ImageProcessing /home/prefect/Code/C++/ImageProcessing/CMakeFiles/ImageProcessing.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ImageProcessing.dir/depend

