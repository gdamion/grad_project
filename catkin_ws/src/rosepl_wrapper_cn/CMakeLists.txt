#
#   This file was generated with EPL ROS generator
#   Generated on: Wed Apr 22 00:06:09 2020
#   Version: 0.5.0
#   License: BSD
#

cmake_minimum_required(VERSION 2.8.3)
project(rosepl_wrapper_cn)

find_package(catkin REQUIRED COMPONENTS
    roscpp
    std_msgs
    message_generation
)

add_message_files(DIRECTORY msg FILES
    PowerlinkIn.msg
    PowerlinkOut.msg
)

add_service_files(DIRECTORY srv FILES
    SignalSync.srv
    SdoTransfer.srv
)

generate_messages(
    DEPENDENCIES
    std_msgs
)

catkin_package(
    CATKIN_DEPENDS
    message_runtime
)

include_directories(
    include
    ${catkin_INCLUDE_DIRS}
)

add_executable(rosepl_wrapper_cn_node src/wrapper.cpp src/memory_api.cpp src/priority_setter.cpp src/generated_wrapper.cpp)
target_link_libraries(rosepl_wrapper_cn_node ${catkin_LIBRARIES} rt)
add_dependencies(rosepl_wrapper_cn_node rosepl_wrapper_cn_generate_messages_cpp ${${PROJECT_NAME}_EXPORTED_TARGETS})
set_target_properties(rosepl_wrapper_cn_node PROPERTIES COMPILE_FLAGS -std=c++11)
