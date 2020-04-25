# CMake generated Testfile for 
# Source directory: /home/al/grad_project/catkin_ws/src/m-explore/explore
# Build directory: /home/al/grad_project/catkin_ws/build/explore_lite
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_explore_lite_roslaunch-check_launch "/home/al/grad_project/catkin_ws/build/explore_lite/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/melodic/share/catkin/cmake/test/run_tests.py" "/home/al/grad_project/catkin_ws/build/explore_lite/test_results/explore_lite/roslaunch-check_launch.xml" "--return-code" "/usr/bin/cmake -E make_directory /home/al/grad_project/catkin_ws/build/explore_lite/test_results/explore_lite" "/opt/ros/melodic/share/roslaunch/cmake/../scripts/roslaunch-check -o \"/home/al/grad_project/catkin_ws/build/explore_lite/test_results/explore_lite/roslaunch-check_launch.xml\" \"/home/al/grad_project/catkin_ws/src/m-explore/explore/launch\" ")
subdirs("gtest")
