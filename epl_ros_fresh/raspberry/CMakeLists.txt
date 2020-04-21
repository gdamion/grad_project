cmake_minimum_required(VERSION 2.8.3)
project(raspberry)

find_package(catkin REQUIRED COMPONENTS
  roscpp
  std_msgs
  message_generation
)

add_message_files(DIRECTORY msg FILES
                    PowerlinkIn.msg
                    PowerlinkOut.msg
)
add_service_files(DIRECTORY srv FILES Signal.srv)
generate_messages(DEPENDENCIES std_msgs)

catkin_package(
CATKIN_DEPENDS message_runtime
)

include_directories(
  include
  ${catkin_INCLUDE_DIRS}
)

add_executable(rasp_talker src/rasp_talker.cpp src/memory_api.cpp src/priority_setter.cpp src/ros_wrapper.cpp)
target_link_libraries(rasp_talker ${catkin_LIBRARIES} rt)
add_dependencies(rasp_talker raspberry_generate_messages_cpp)
set_target_properties(rasp_talker PROPERTIES COMPILE_FLAGS -std=c++11)

add_executable(rasp_listener src/rasp_listener.cpp src/memory_api.cpp src/priority_setter.cpp src/ros_wrapper.cpp)
target_link_libraries(rasp_listener ${catkin_LIBRARIES} rt)
add_dependencies(rasp_listener raspberry_generate_messages_cpp)
set_target_properties(rasp_listener PROPERTIES COMPILE_FLAGS -std=c++11)
