#
#   This file was generated with EPL ROS generator
#   Generated on: Fri Apr 17 18:15:22 2020
#   Version: 0.5.0
#   License: BSD
#

cmake_minimum_required(VERSION 2.8.3)
project(rosepl_project_mn)

find_package(catkin REQUIRED COMPONENTS
    roscpp
    std_msgs
    message_generation
    rosepl_wrapper_mn
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
    ${rosepl_wrapper_mn_INCLUDE_DIRS}
)

add_executable(rosepl_project_mn_node
    src/rosepl_project_mn_node.cpp
    src/memory_api.cpp
    src/priority_setter.cpp
    src/generated_wrapper.cpp
    src/user_app.cpp
)
add_dependencies(rosepl_project_mn_node ${catkin_EXPORTED_TARGETS})
add_dependencies(rosepl_project_mn_node ${${PROJECT_NAME}_EXPORTED_TARGETS})
target_link_libraries(rosepl_project_mn_node ${catkin_LIBRARIES} rt)
set_target_properties(rosepl_project_mn_node PROPERTIES COMPILE_FLAGS -std=c++11)
