# CMake generated Testfile for 
# Source directory: /home/prefect/Code/C++/ImageProcessing/opencv/modules/highgui
# Build directory: /home/prefect/Code/C++/ImageProcessing/build/modules/highgui
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(opencv_test_highgui "/home/prefect/Code/C++/ImageProcessing/build/bin/opencv_test_highgui" "--gtest_output=xml:opencv_test_highgui.xml")
set_tests_properties(opencv_test_highgui PROPERTIES  LABELS "Main;opencv_highgui;Accuracy" WORKING_DIRECTORY "/home/prefect/Code/C++/ImageProcessing/build/test-reports/accuracy" _BACKTRACE_TRIPLES "/home/prefect/Code/C++/ImageProcessing/opencv/cmake/OpenCVUtils.cmake;1751;add_test;/home/prefect/Code/C++/ImageProcessing/opencv/cmake/OpenCVModule.cmake;1352;ocv_add_test_from_target;/home/prefect/Code/C++/ImageProcessing/opencv/modules/highgui/CMakeLists.txt;318;ocv_add_accuracy_tests;/home/prefect/Code/C++/ImageProcessing/opencv/modules/highgui/CMakeLists.txt;0;")
