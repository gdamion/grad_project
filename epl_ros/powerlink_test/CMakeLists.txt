cmake_minimum_required(VERSION 2.8.3)
project(powerlink_test)

find_package(catkin REQUIRED COMPONENTS
  roscpp
  std_msgs
  message_generation
)

add_message_files(DIRECTORY msg FILES
                    FallbackIn.msg
                    PowerlinkIn.msg
                    PowerlinkOut.msg
                    StatusOut.msg
                    TestingOut.msg
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

add_executable(talker src/talker.cpp src/memory_api.cpp src/priority_setter.cpp src/ros_wrapper.cpp)
target_link_libraries(talker ${catkin_LIBRARIES} rt)
add_dependencies(talker powerlink_test_generate_messages_cpp)
set_target_properties(talker PROPERTIES COMPILE_FLAGS -std=c++11)

add_executable(listener src/listener.cpp src/memory_api.cpp src/priority_setter.cpp src/ros_wrapper.cpp)
target_link_libraries(listener ${catkin_LIBRARIES} rt)
add_dependencies(listener powerlink_test_generate_messages_cpp)
set_target_properties(listener PROPERTIES COMPILE_FLAGS -std=c++11)
