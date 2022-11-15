# Install script for directory: /home/prefect/Code/C++/ImageProcessing/opencv_contrib/modules/datasets

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "0")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "libs" OR NOT CMAKE_INSTALL_COMPONENT)
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/libopencv_datasets.so.4.6.0"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/libopencv_datasets.so.406"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "/usr/local/lib64")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib64" TYPE SHARED_LIBRARY OPTIONAL FILES
    "/home/prefect/Code/C++/ImageProcessing/build/lib/libopencv_datasets.so.4.6.0"
    "/home/prefect/Code/C++/ImageProcessing/build/lib/libopencv_datasets.so.406"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/libopencv_datasets.so.4.6.0"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/libopencv_datasets.so.406"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHANGE
           FILE "${file}"
           OLD_RPATH "/home/prefect/Code/C++/ImageProcessing/build/lib:"
           NEW_RPATH "/usr/local/lib64")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/libopencv_datasets.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/libopencv_datasets.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/libopencv_datasets.so"
         RPATH "/usr/local/lib64")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib64" TYPE SHARED_LIBRARY FILES "/home/prefect/Code/C++/ImageProcessing/build/lib/libopencv_datasets.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/libopencv_datasets.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/libopencv_datasets.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/libopencv_datasets.so"
         OLD_RPATH "/home/prefect/Code/C++/ImageProcessing/build/lib:"
         NEW_RPATH "/usr/local/lib64")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/libopencv_datasets.so")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/datasets" TYPE FILE OPTIONAL FILES "/home/prefect/Code/C++/ImageProcessing/opencv_contrib/modules/datasets/include/opencv2/datasets/ar_hmdb.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/datasets" TYPE FILE OPTIONAL FILES "/home/prefect/Code/C++/ImageProcessing/opencv_contrib/modules/datasets/include/opencv2/datasets/ar_sports.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/datasets" TYPE FILE OPTIONAL FILES "/home/prefect/Code/C++/ImageProcessing/opencv_contrib/modules/datasets/include/opencv2/datasets/dataset.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/datasets" TYPE FILE OPTIONAL FILES "/home/prefect/Code/C++/ImageProcessing/opencv_contrib/modules/datasets/include/opencv2/datasets/fr_adience.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/datasets" TYPE FILE OPTIONAL FILES "/home/prefect/Code/C++/ImageProcessing/opencv_contrib/modules/datasets/include/opencv2/datasets/fr_lfw.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/datasets" TYPE FILE OPTIONAL FILES "/home/prefect/Code/C++/ImageProcessing/opencv_contrib/modules/datasets/include/opencv2/datasets/gr_chalearn.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/datasets" TYPE FILE OPTIONAL FILES "/home/prefect/Code/C++/ImageProcessing/opencv_contrib/modules/datasets/include/opencv2/datasets/gr_skig.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/datasets" TYPE FILE OPTIONAL FILES "/home/prefect/Code/C++/ImageProcessing/opencv_contrib/modules/datasets/include/opencv2/datasets/hpe_humaneva.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/datasets" TYPE FILE OPTIONAL FILES "/home/prefect/Code/C++/ImageProcessing/opencv_contrib/modules/datasets/include/opencv2/datasets/hpe_parse.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/datasets" TYPE FILE OPTIONAL FILES "/home/prefect/Code/C++/ImageProcessing/opencv_contrib/modules/datasets/include/opencv2/datasets/ir_affine.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/datasets" TYPE FILE OPTIONAL FILES "/home/prefect/Code/C++/ImageProcessing/opencv_contrib/modules/datasets/include/opencv2/datasets/ir_robot.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/datasets" TYPE FILE OPTIONAL FILES "/home/prefect/Code/C++/ImageProcessing/opencv_contrib/modules/datasets/include/opencv2/datasets/is_bsds.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/datasets" TYPE FILE OPTIONAL FILES "/home/prefect/Code/C++/ImageProcessing/opencv_contrib/modules/datasets/include/opencv2/datasets/is_weizmann.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/datasets" TYPE FILE OPTIONAL FILES "/home/prefect/Code/C++/ImageProcessing/opencv_contrib/modules/datasets/include/opencv2/datasets/msm_epfl.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/datasets" TYPE FILE OPTIONAL FILES "/home/prefect/Code/C++/ImageProcessing/opencv_contrib/modules/datasets/include/opencv2/datasets/msm_middlebury.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/datasets" TYPE FILE OPTIONAL FILES "/home/prefect/Code/C++/ImageProcessing/opencv_contrib/modules/datasets/include/opencv2/datasets/or_imagenet.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/datasets" TYPE FILE OPTIONAL FILES "/home/prefect/Code/C++/ImageProcessing/opencv_contrib/modules/datasets/include/opencv2/datasets/or_mnist.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/datasets" TYPE FILE OPTIONAL FILES "/home/prefect/Code/C++/ImageProcessing/opencv_contrib/modules/datasets/include/opencv2/datasets/or_pascal.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/datasets" TYPE FILE OPTIONAL FILES "/home/prefect/Code/C++/ImageProcessing/opencv_contrib/modules/datasets/include/opencv2/datasets/or_sun.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/datasets" TYPE FILE OPTIONAL FILES "/home/prefect/Code/C++/ImageProcessing/opencv_contrib/modules/datasets/include/opencv2/datasets/pd_caltech.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/datasets" TYPE FILE OPTIONAL FILES "/home/prefect/Code/C++/ImageProcessing/opencv_contrib/modules/datasets/include/opencv2/datasets/pd_inria.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/datasets" TYPE FILE OPTIONAL FILES "/home/prefect/Code/C++/ImageProcessing/opencv_contrib/modules/datasets/include/opencv2/datasets/slam_kitti.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/datasets" TYPE FILE OPTIONAL FILES "/home/prefect/Code/C++/ImageProcessing/opencv_contrib/modules/datasets/include/opencv2/datasets/slam_tumindoor.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/datasets" TYPE FILE OPTIONAL FILES "/home/prefect/Code/C++/ImageProcessing/opencv_contrib/modules/datasets/include/opencv2/datasets/sr_bsds.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/datasets" TYPE FILE OPTIONAL FILES "/home/prefect/Code/C++/ImageProcessing/opencv_contrib/modules/datasets/include/opencv2/datasets/sr_div2k.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/datasets" TYPE FILE OPTIONAL FILES "/home/prefect/Code/C++/ImageProcessing/opencv_contrib/modules/datasets/include/opencv2/datasets/sr_general100.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/datasets" TYPE FILE OPTIONAL FILES "/home/prefect/Code/C++/ImageProcessing/opencv_contrib/modules/datasets/include/opencv2/datasets/tr_chars.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/datasets" TYPE FILE OPTIONAL FILES "/home/prefect/Code/C++/ImageProcessing/opencv_contrib/modules/datasets/include/opencv2/datasets/tr_icdar.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/datasets" TYPE FILE OPTIONAL FILES "/home/prefect/Code/C++/ImageProcessing/opencv_contrib/modules/datasets/include/opencv2/datasets/tr_svt.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/datasets" TYPE FILE OPTIONAL FILES "/home/prefect/Code/C++/ImageProcessing/opencv_contrib/modules/datasets/include/opencv2/datasets/track_alov.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/datasets" TYPE FILE OPTIONAL FILES "/home/prefect/Code/C++/ImageProcessing/opencv_contrib/modules/datasets/include/opencv2/datasets/track_vot.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/datasets" TYPE FILE OPTIONAL FILES "/home/prefect/Code/C++/ImageProcessing/opencv_contrib/modules/datasets/include/opencv2/datasets/util.hpp")
endif()

