# CMake generated Testfile for 
# Source directory: /home/prefect/Code/C++/ImageProcessing/opencv_contrib/modules/rapid
# Build directory: /home/prefect/Code/C++/ImageProcessing/build/modules/rapid
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(opencv_test_rapid "/home/prefect/Code/C++/ImageProcessing/build/bin/opencv_test_rapid" "--gtest_output=xml:opencv_test_rapid.xml")
set_tests_properties(opencv_test_rapid PROPERTIES  LABELS "Extra;opencv_rapid;Accuracy" WORKING_DIRECTORY "/home/prefect/Code/C++/ImageProcessing/build/test-reports/accuracy" _BACKTRACE_TRIPLES "/home/prefect/Code/C++/ImageProcessing/opencv/cmake/OpenCVUtils.cmake;1751;add_test;/home/prefect/Code/C++/ImageProcessing/opencv/cmake/OpenCVModule.cmake;1352;ocv_add_test_from_target;/home/prefect/Code/C++/ImageProcessing/opencv/cmake/OpenCVModule.cmake;1110;ocv_add_accuracy_tests;/home/prefect/Code/C++/ImageProcessing/opencv_contrib/modules/rapid/CMakeLists.txt;2;ocv_define_module;/home/prefect/Code/C++/ImageProcessing/opencv_contrib/modules/rapid/CMakeLists.txt;0;")
