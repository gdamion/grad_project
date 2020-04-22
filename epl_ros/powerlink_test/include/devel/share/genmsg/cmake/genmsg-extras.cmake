# generated from genmsg/cmake/genmsg-extras.cmake.in

if(_GENMSG_EXTRAS_INCLUDED_)
  return()
endif()
set(_GENMSG_EXTRAS_INCLUDED_ TRUE)

# set destination for langs
set(GENMSG_LANGS_DESTINATION "etc/ros/genmsg")

# We need various macros and variables that are provided by catkin
find_package(catkin REQUIRED)

