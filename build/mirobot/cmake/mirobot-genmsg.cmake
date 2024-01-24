# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "mirobot: 0 messages, 5 services")

set(MSG_I_FLAGS "-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(mirobot_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/dominik/mirobot_ws/src/mirobot/srv/SetHomeCmd.srv" NAME_WE)
add_custom_target(_mirobot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mirobot" "/home/dominik/mirobot_ws/src/mirobot/srv/SetHomeCmd.srv" ""
)

get_filename_component(_filename "/home/dominik/mirobot_ws/src/mirobot/srv/GetPoseCmd.srv" NAME_WE)
add_custom_target(_mirobot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mirobot" "/home/dominik/mirobot_ws/src/mirobot/srv/GetPoseCmd.srv" ""
)

get_filename_component(_filename "/home/dominik/mirobot_ws/src/mirobot/srv/SetJointCmd.srv" NAME_WE)
add_custom_target(_mirobot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mirobot" "/home/dominik/mirobot_ws/src/mirobot/srv/SetJointCmd.srv" ""
)

get_filename_component(_filename "/home/dominik/mirobot_ws/src/mirobot/srv/SetCartCmd.srv" NAME_WE)
add_custom_target(_mirobot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mirobot" "/home/dominik/mirobot_ws/src/mirobot/srv/SetCartCmd.srv" ""
)

get_filename_component(_filename "/home/dominik/mirobot_ws/src/mirobot/srv/SetGcodeCmd.srv" NAME_WE)
add_custom_target(_mirobot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mirobot" "/home/dominik/mirobot_ws/src/mirobot/srv/SetGcodeCmd.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(mirobot
  "/home/dominik/mirobot_ws/src/mirobot/srv/SetHomeCmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mirobot
)
_generate_srv_cpp(mirobot
  "/home/dominik/mirobot_ws/src/mirobot/srv/GetPoseCmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mirobot
)
_generate_srv_cpp(mirobot
  "/home/dominik/mirobot_ws/src/mirobot/srv/SetJointCmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mirobot
)
_generate_srv_cpp(mirobot
  "/home/dominik/mirobot_ws/src/mirobot/srv/SetCartCmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mirobot
)
_generate_srv_cpp(mirobot
  "/home/dominik/mirobot_ws/src/mirobot/srv/SetGcodeCmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mirobot
)

### Generating Module File
_generate_module_cpp(mirobot
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mirobot
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(mirobot_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(mirobot_generate_messages mirobot_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dominik/mirobot_ws/src/mirobot/srv/SetHomeCmd.srv" NAME_WE)
add_dependencies(mirobot_generate_messages_cpp _mirobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dominik/mirobot_ws/src/mirobot/srv/GetPoseCmd.srv" NAME_WE)
add_dependencies(mirobot_generate_messages_cpp _mirobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dominik/mirobot_ws/src/mirobot/srv/SetJointCmd.srv" NAME_WE)
add_dependencies(mirobot_generate_messages_cpp _mirobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dominik/mirobot_ws/src/mirobot/srv/SetCartCmd.srv" NAME_WE)
add_dependencies(mirobot_generate_messages_cpp _mirobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dominik/mirobot_ws/src/mirobot/srv/SetGcodeCmd.srv" NAME_WE)
add_dependencies(mirobot_generate_messages_cpp _mirobot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mirobot_gencpp)
add_dependencies(mirobot_gencpp mirobot_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mirobot_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(mirobot
  "/home/dominik/mirobot_ws/src/mirobot/srv/SetHomeCmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mirobot
)
_generate_srv_eus(mirobot
  "/home/dominik/mirobot_ws/src/mirobot/srv/GetPoseCmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mirobot
)
_generate_srv_eus(mirobot
  "/home/dominik/mirobot_ws/src/mirobot/srv/SetJointCmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mirobot
)
_generate_srv_eus(mirobot
  "/home/dominik/mirobot_ws/src/mirobot/srv/SetCartCmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mirobot
)
_generate_srv_eus(mirobot
  "/home/dominik/mirobot_ws/src/mirobot/srv/SetGcodeCmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mirobot
)

### Generating Module File
_generate_module_eus(mirobot
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mirobot
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(mirobot_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(mirobot_generate_messages mirobot_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dominik/mirobot_ws/src/mirobot/srv/SetHomeCmd.srv" NAME_WE)
add_dependencies(mirobot_generate_messages_eus _mirobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dominik/mirobot_ws/src/mirobot/srv/GetPoseCmd.srv" NAME_WE)
add_dependencies(mirobot_generate_messages_eus _mirobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dominik/mirobot_ws/src/mirobot/srv/SetJointCmd.srv" NAME_WE)
add_dependencies(mirobot_generate_messages_eus _mirobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dominik/mirobot_ws/src/mirobot/srv/SetCartCmd.srv" NAME_WE)
add_dependencies(mirobot_generate_messages_eus _mirobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dominik/mirobot_ws/src/mirobot/srv/SetGcodeCmd.srv" NAME_WE)
add_dependencies(mirobot_generate_messages_eus _mirobot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mirobot_geneus)
add_dependencies(mirobot_geneus mirobot_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mirobot_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(mirobot
  "/home/dominik/mirobot_ws/src/mirobot/srv/SetHomeCmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mirobot
)
_generate_srv_lisp(mirobot
  "/home/dominik/mirobot_ws/src/mirobot/srv/GetPoseCmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mirobot
)
_generate_srv_lisp(mirobot
  "/home/dominik/mirobot_ws/src/mirobot/srv/SetJointCmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mirobot
)
_generate_srv_lisp(mirobot
  "/home/dominik/mirobot_ws/src/mirobot/srv/SetCartCmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mirobot
)
_generate_srv_lisp(mirobot
  "/home/dominik/mirobot_ws/src/mirobot/srv/SetGcodeCmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mirobot
)

### Generating Module File
_generate_module_lisp(mirobot
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mirobot
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(mirobot_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(mirobot_generate_messages mirobot_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dominik/mirobot_ws/src/mirobot/srv/SetHomeCmd.srv" NAME_WE)
add_dependencies(mirobot_generate_messages_lisp _mirobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dominik/mirobot_ws/src/mirobot/srv/GetPoseCmd.srv" NAME_WE)
add_dependencies(mirobot_generate_messages_lisp _mirobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dominik/mirobot_ws/src/mirobot/srv/SetJointCmd.srv" NAME_WE)
add_dependencies(mirobot_generate_messages_lisp _mirobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dominik/mirobot_ws/src/mirobot/srv/SetCartCmd.srv" NAME_WE)
add_dependencies(mirobot_generate_messages_lisp _mirobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dominik/mirobot_ws/src/mirobot/srv/SetGcodeCmd.srv" NAME_WE)
add_dependencies(mirobot_generate_messages_lisp _mirobot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mirobot_genlisp)
add_dependencies(mirobot_genlisp mirobot_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mirobot_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(mirobot
  "/home/dominik/mirobot_ws/src/mirobot/srv/SetHomeCmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mirobot
)
_generate_srv_nodejs(mirobot
  "/home/dominik/mirobot_ws/src/mirobot/srv/GetPoseCmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mirobot
)
_generate_srv_nodejs(mirobot
  "/home/dominik/mirobot_ws/src/mirobot/srv/SetJointCmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mirobot
)
_generate_srv_nodejs(mirobot
  "/home/dominik/mirobot_ws/src/mirobot/srv/SetCartCmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mirobot
)
_generate_srv_nodejs(mirobot
  "/home/dominik/mirobot_ws/src/mirobot/srv/SetGcodeCmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mirobot
)

### Generating Module File
_generate_module_nodejs(mirobot
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mirobot
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(mirobot_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(mirobot_generate_messages mirobot_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dominik/mirobot_ws/src/mirobot/srv/SetHomeCmd.srv" NAME_WE)
add_dependencies(mirobot_generate_messages_nodejs _mirobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dominik/mirobot_ws/src/mirobot/srv/GetPoseCmd.srv" NAME_WE)
add_dependencies(mirobot_generate_messages_nodejs _mirobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dominik/mirobot_ws/src/mirobot/srv/SetJointCmd.srv" NAME_WE)
add_dependencies(mirobot_generate_messages_nodejs _mirobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dominik/mirobot_ws/src/mirobot/srv/SetCartCmd.srv" NAME_WE)
add_dependencies(mirobot_generate_messages_nodejs _mirobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dominik/mirobot_ws/src/mirobot/srv/SetGcodeCmd.srv" NAME_WE)
add_dependencies(mirobot_generate_messages_nodejs _mirobot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mirobot_gennodejs)
add_dependencies(mirobot_gennodejs mirobot_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mirobot_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(mirobot
  "/home/dominik/mirobot_ws/src/mirobot/srv/SetHomeCmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mirobot
)
_generate_srv_py(mirobot
  "/home/dominik/mirobot_ws/src/mirobot/srv/GetPoseCmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mirobot
)
_generate_srv_py(mirobot
  "/home/dominik/mirobot_ws/src/mirobot/srv/SetJointCmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mirobot
)
_generate_srv_py(mirobot
  "/home/dominik/mirobot_ws/src/mirobot/srv/SetCartCmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mirobot
)
_generate_srv_py(mirobot
  "/home/dominik/mirobot_ws/src/mirobot/srv/SetGcodeCmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mirobot
)

### Generating Module File
_generate_module_py(mirobot
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mirobot
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(mirobot_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(mirobot_generate_messages mirobot_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dominik/mirobot_ws/src/mirobot/srv/SetHomeCmd.srv" NAME_WE)
add_dependencies(mirobot_generate_messages_py _mirobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dominik/mirobot_ws/src/mirobot/srv/GetPoseCmd.srv" NAME_WE)
add_dependencies(mirobot_generate_messages_py _mirobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dominik/mirobot_ws/src/mirobot/srv/SetJointCmd.srv" NAME_WE)
add_dependencies(mirobot_generate_messages_py _mirobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dominik/mirobot_ws/src/mirobot/srv/SetCartCmd.srv" NAME_WE)
add_dependencies(mirobot_generate_messages_py _mirobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dominik/mirobot_ws/src/mirobot/srv/SetGcodeCmd.srv" NAME_WE)
add_dependencies(mirobot_generate_messages_py _mirobot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mirobot_genpy)
add_dependencies(mirobot_genpy mirobot_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mirobot_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mirobot)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mirobot
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(mirobot_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(mirobot_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mirobot)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mirobot
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(mirobot_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(mirobot_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mirobot)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mirobot
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(mirobot_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(mirobot_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mirobot)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mirobot
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(mirobot_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(mirobot_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mirobot)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mirobot\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mirobot
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(mirobot_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(mirobot_generate_messages_py std_msgs_generate_messages_py)
endif()
