# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "rosepl_wrapper_cn: 2 messages, 2 services")

set(MSG_I_FLAGS "-Irosepl_wrapper_cn:/home/al/grad_project/catkin_ws/src/rosepl_wrapper_cn/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(rosepl_wrapper_cn_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/al/grad_project/catkin_ws/src/rosepl_wrapper_cn/msg/PowerlinkIn.msg" NAME_WE)
add_custom_target(_rosepl_wrapper_cn_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rosepl_wrapper_cn" "/home/al/grad_project/catkin_ws/src/rosepl_wrapper_cn/msg/PowerlinkIn.msg" ""
)

get_filename_component(_filename "/home/al/grad_project/catkin_ws/src/rosepl_wrapper_cn/srv/SdoTransfer.srv" NAME_WE)
add_custom_target(_rosepl_wrapper_cn_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rosepl_wrapper_cn" "/home/al/grad_project/catkin_ws/src/rosepl_wrapper_cn/srv/SdoTransfer.srv" ""
)

get_filename_component(_filename "/home/al/grad_project/catkin_ws/src/rosepl_wrapper_cn/srv/SignalSync.srv" NAME_WE)
add_custom_target(_rosepl_wrapper_cn_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rosepl_wrapper_cn" "/home/al/grad_project/catkin_ws/src/rosepl_wrapper_cn/srv/SignalSync.srv" ""
)

get_filename_component(_filename "/home/al/grad_project/catkin_ws/src/rosepl_wrapper_cn/msg/PowerlinkOut.msg" NAME_WE)
add_custom_target(_rosepl_wrapper_cn_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rosepl_wrapper_cn" "/home/al/grad_project/catkin_ws/src/rosepl_wrapper_cn/msg/PowerlinkOut.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(rosepl_wrapper_cn
  "/home/al/grad_project/catkin_ws/src/rosepl_wrapper_cn/msg/PowerlinkIn.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rosepl_wrapper_cn
)
_generate_msg_cpp(rosepl_wrapper_cn
  "/home/al/grad_project/catkin_ws/src/rosepl_wrapper_cn/msg/PowerlinkOut.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rosepl_wrapper_cn
)

### Generating Services
_generate_srv_cpp(rosepl_wrapper_cn
  "/home/al/grad_project/catkin_ws/src/rosepl_wrapper_cn/srv/SignalSync.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rosepl_wrapper_cn
)
_generate_srv_cpp(rosepl_wrapper_cn
  "/home/al/grad_project/catkin_ws/src/rosepl_wrapper_cn/srv/SdoTransfer.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rosepl_wrapper_cn
)

### Generating Module File
_generate_module_cpp(rosepl_wrapper_cn
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rosepl_wrapper_cn
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(rosepl_wrapper_cn_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(rosepl_wrapper_cn_generate_messages rosepl_wrapper_cn_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/al/grad_project/catkin_ws/src/rosepl_wrapper_cn/msg/PowerlinkIn.msg" NAME_WE)
add_dependencies(rosepl_wrapper_cn_generate_messages_cpp _rosepl_wrapper_cn_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/al/grad_project/catkin_ws/src/rosepl_wrapper_cn/srv/SdoTransfer.srv" NAME_WE)
add_dependencies(rosepl_wrapper_cn_generate_messages_cpp _rosepl_wrapper_cn_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/al/grad_project/catkin_ws/src/rosepl_wrapper_cn/srv/SignalSync.srv" NAME_WE)
add_dependencies(rosepl_wrapper_cn_generate_messages_cpp _rosepl_wrapper_cn_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/al/grad_project/catkin_ws/src/rosepl_wrapper_cn/msg/PowerlinkOut.msg" NAME_WE)
add_dependencies(rosepl_wrapper_cn_generate_messages_cpp _rosepl_wrapper_cn_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rosepl_wrapper_cn_gencpp)
add_dependencies(rosepl_wrapper_cn_gencpp rosepl_wrapper_cn_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rosepl_wrapper_cn_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(rosepl_wrapper_cn
  "/home/al/grad_project/catkin_ws/src/rosepl_wrapper_cn/msg/PowerlinkIn.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rosepl_wrapper_cn
)
_generate_msg_eus(rosepl_wrapper_cn
  "/home/al/grad_project/catkin_ws/src/rosepl_wrapper_cn/msg/PowerlinkOut.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rosepl_wrapper_cn
)

### Generating Services
_generate_srv_eus(rosepl_wrapper_cn
  "/home/al/grad_project/catkin_ws/src/rosepl_wrapper_cn/srv/SignalSync.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rosepl_wrapper_cn
)
_generate_srv_eus(rosepl_wrapper_cn
  "/home/al/grad_project/catkin_ws/src/rosepl_wrapper_cn/srv/SdoTransfer.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rosepl_wrapper_cn
)

### Generating Module File
_generate_module_eus(rosepl_wrapper_cn
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rosepl_wrapper_cn
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(rosepl_wrapper_cn_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(rosepl_wrapper_cn_generate_messages rosepl_wrapper_cn_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/al/grad_project/catkin_ws/src/rosepl_wrapper_cn/msg/PowerlinkIn.msg" NAME_WE)
add_dependencies(rosepl_wrapper_cn_generate_messages_eus _rosepl_wrapper_cn_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/al/grad_project/catkin_ws/src/rosepl_wrapper_cn/srv/SdoTransfer.srv" NAME_WE)
add_dependencies(rosepl_wrapper_cn_generate_messages_eus _rosepl_wrapper_cn_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/al/grad_project/catkin_ws/src/rosepl_wrapper_cn/srv/SignalSync.srv" NAME_WE)
add_dependencies(rosepl_wrapper_cn_generate_messages_eus _rosepl_wrapper_cn_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/al/grad_project/catkin_ws/src/rosepl_wrapper_cn/msg/PowerlinkOut.msg" NAME_WE)
add_dependencies(rosepl_wrapper_cn_generate_messages_eus _rosepl_wrapper_cn_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rosepl_wrapper_cn_geneus)
add_dependencies(rosepl_wrapper_cn_geneus rosepl_wrapper_cn_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rosepl_wrapper_cn_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(rosepl_wrapper_cn
  "/home/al/grad_project/catkin_ws/src/rosepl_wrapper_cn/msg/PowerlinkIn.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rosepl_wrapper_cn
)
_generate_msg_lisp(rosepl_wrapper_cn
  "/home/al/grad_project/catkin_ws/src/rosepl_wrapper_cn/msg/PowerlinkOut.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rosepl_wrapper_cn
)

### Generating Services
_generate_srv_lisp(rosepl_wrapper_cn
  "/home/al/grad_project/catkin_ws/src/rosepl_wrapper_cn/srv/SignalSync.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rosepl_wrapper_cn
)
_generate_srv_lisp(rosepl_wrapper_cn
  "/home/al/grad_project/catkin_ws/src/rosepl_wrapper_cn/srv/SdoTransfer.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rosepl_wrapper_cn
)

### Generating Module File
_generate_module_lisp(rosepl_wrapper_cn
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rosepl_wrapper_cn
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(rosepl_wrapper_cn_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(rosepl_wrapper_cn_generate_messages rosepl_wrapper_cn_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/al/grad_project/catkin_ws/src/rosepl_wrapper_cn/msg/PowerlinkIn.msg" NAME_WE)
add_dependencies(rosepl_wrapper_cn_generate_messages_lisp _rosepl_wrapper_cn_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/al/grad_project/catkin_ws/src/rosepl_wrapper_cn/srv/SdoTransfer.srv" NAME_WE)
add_dependencies(rosepl_wrapper_cn_generate_messages_lisp _rosepl_wrapper_cn_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/al/grad_project/catkin_ws/src/rosepl_wrapper_cn/srv/SignalSync.srv" NAME_WE)
add_dependencies(rosepl_wrapper_cn_generate_messages_lisp _rosepl_wrapper_cn_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/al/grad_project/catkin_ws/src/rosepl_wrapper_cn/msg/PowerlinkOut.msg" NAME_WE)
add_dependencies(rosepl_wrapper_cn_generate_messages_lisp _rosepl_wrapper_cn_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rosepl_wrapper_cn_genlisp)
add_dependencies(rosepl_wrapper_cn_genlisp rosepl_wrapper_cn_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rosepl_wrapper_cn_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(rosepl_wrapper_cn
  "/home/al/grad_project/catkin_ws/src/rosepl_wrapper_cn/msg/PowerlinkIn.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rosepl_wrapper_cn
)
_generate_msg_nodejs(rosepl_wrapper_cn
  "/home/al/grad_project/catkin_ws/src/rosepl_wrapper_cn/msg/PowerlinkOut.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rosepl_wrapper_cn
)

### Generating Services
_generate_srv_nodejs(rosepl_wrapper_cn
  "/home/al/grad_project/catkin_ws/src/rosepl_wrapper_cn/srv/SignalSync.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rosepl_wrapper_cn
)
_generate_srv_nodejs(rosepl_wrapper_cn
  "/home/al/grad_project/catkin_ws/src/rosepl_wrapper_cn/srv/SdoTransfer.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rosepl_wrapper_cn
)

### Generating Module File
_generate_module_nodejs(rosepl_wrapper_cn
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rosepl_wrapper_cn
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(rosepl_wrapper_cn_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(rosepl_wrapper_cn_generate_messages rosepl_wrapper_cn_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/al/grad_project/catkin_ws/src/rosepl_wrapper_cn/msg/PowerlinkIn.msg" NAME_WE)
add_dependencies(rosepl_wrapper_cn_generate_messages_nodejs _rosepl_wrapper_cn_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/al/grad_project/catkin_ws/src/rosepl_wrapper_cn/srv/SdoTransfer.srv" NAME_WE)
add_dependencies(rosepl_wrapper_cn_generate_messages_nodejs _rosepl_wrapper_cn_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/al/grad_project/catkin_ws/src/rosepl_wrapper_cn/srv/SignalSync.srv" NAME_WE)
add_dependencies(rosepl_wrapper_cn_generate_messages_nodejs _rosepl_wrapper_cn_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/al/grad_project/catkin_ws/src/rosepl_wrapper_cn/msg/PowerlinkOut.msg" NAME_WE)
add_dependencies(rosepl_wrapper_cn_generate_messages_nodejs _rosepl_wrapper_cn_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rosepl_wrapper_cn_gennodejs)
add_dependencies(rosepl_wrapper_cn_gennodejs rosepl_wrapper_cn_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rosepl_wrapper_cn_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(rosepl_wrapper_cn
  "/home/al/grad_project/catkin_ws/src/rosepl_wrapper_cn/msg/PowerlinkIn.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rosepl_wrapper_cn
)
_generate_msg_py(rosepl_wrapper_cn
  "/home/al/grad_project/catkin_ws/src/rosepl_wrapper_cn/msg/PowerlinkOut.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rosepl_wrapper_cn
)

### Generating Services
_generate_srv_py(rosepl_wrapper_cn
  "/home/al/grad_project/catkin_ws/src/rosepl_wrapper_cn/srv/SignalSync.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rosepl_wrapper_cn
)
_generate_srv_py(rosepl_wrapper_cn
  "/home/al/grad_project/catkin_ws/src/rosepl_wrapper_cn/srv/SdoTransfer.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rosepl_wrapper_cn
)

### Generating Module File
_generate_module_py(rosepl_wrapper_cn
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rosepl_wrapper_cn
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(rosepl_wrapper_cn_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(rosepl_wrapper_cn_generate_messages rosepl_wrapper_cn_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/al/grad_project/catkin_ws/src/rosepl_wrapper_cn/msg/PowerlinkIn.msg" NAME_WE)
add_dependencies(rosepl_wrapper_cn_generate_messages_py _rosepl_wrapper_cn_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/al/grad_project/catkin_ws/src/rosepl_wrapper_cn/srv/SdoTransfer.srv" NAME_WE)
add_dependencies(rosepl_wrapper_cn_generate_messages_py _rosepl_wrapper_cn_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/al/grad_project/catkin_ws/src/rosepl_wrapper_cn/srv/SignalSync.srv" NAME_WE)
add_dependencies(rosepl_wrapper_cn_generate_messages_py _rosepl_wrapper_cn_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/al/grad_project/catkin_ws/src/rosepl_wrapper_cn/msg/PowerlinkOut.msg" NAME_WE)
add_dependencies(rosepl_wrapper_cn_generate_messages_py _rosepl_wrapper_cn_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rosepl_wrapper_cn_genpy)
add_dependencies(rosepl_wrapper_cn_genpy rosepl_wrapper_cn_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rosepl_wrapper_cn_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rosepl_wrapper_cn)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rosepl_wrapper_cn
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(rosepl_wrapper_cn_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rosepl_wrapper_cn)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rosepl_wrapper_cn
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(rosepl_wrapper_cn_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rosepl_wrapper_cn)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rosepl_wrapper_cn
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(rosepl_wrapper_cn_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rosepl_wrapper_cn)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rosepl_wrapper_cn
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(rosepl_wrapper_cn_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rosepl_wrapper_cn)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rosepl_wrapper_cn\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rosepl_wrapper_cn
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(rosepl_wrapper_cn_generate_messages_py std_msgs_generate_messages_py)
endif()
