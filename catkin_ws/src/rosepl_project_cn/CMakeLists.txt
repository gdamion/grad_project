#
#   This file was generated with EPL ROS generator
#   Generated on: Wed Apr 22 13:30:05 2020
#   Version: 0.5.0
#   License: BSD
#

cmake_minimum_required(VERSION 2.8.3)
project(rosepl_project_cn)

find_package(catkin REQUIRED COMPONENTS
    roscpp
    std_msgs
    message_generation
    rosepl_wrapper_cn
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
    ${rosepl_wrapper_cn_INCLUDE_DIRS}
)

add_executable(rosepl_project_cn_node
    src/rosepl_project_cn_node.cpp
    src/priority_setter.cpp
    src/user_app.cpp
)
add_dependencies(rosepl_project_cn_node ${catkin_EXPORTED_TARGETS})
add_dependencies(rosepl_project_cn_node ${${PROJECT_NAME}_EXPORTED_TARGETS})
target_link_libraries(rosepl_project_cn_node ${catkin_LIBRARIES} rt)
set_target_properties(rosepl_project_cn_node PROPERTIES COMPILE_FLAGS -std=c++11)
