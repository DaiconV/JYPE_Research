# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "pa10controller: 0 messages, 6 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(pa10controller_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/akrauch-rovi/pa10controller/srv/getJointConfig.srv" NAME_WE)
add_custom_target(_pa10controller_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pa10controller" "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/akrauch-rovi/pa10controller/srv/getJointConfig.srv" ""
)

get_filename_component(_filename "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/akrauch-rovi/pa10controller/srv/addToQueue.srv" NAME_WE)
add_custom_target(_pa10controller_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pa10controller" "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/akrauch-rovi/pa10controller/srv/addToQueue.srv" ""
)

get_filename_component(_filename "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/akrauch-rovi/pa10controller/srv/clearJointQueue.srv" NAME_WE)
add_custom_target(_pa10controller_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pa10controller" "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/akrauch-rovi/pa10controller/srv/clearJointQueue.srv" ""
)

get_filename_component(_filename "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/akrauch-rovi/pa10controller/srv/startPA10.srv" NAME_WE)
add_custom_target(_pa10controller_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pa10controller" "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/akrauch-rovi/pa10controller/srv/startPA10.srv" ""
)

get_filename_component(_filename "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/akrauch-rovi/pa10controller/srv/startQueue.srv" NAME_WE)
add_custom_target(_pa10controller_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pa10controller" "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/akrauch-rovi/pa10controller/srv/startQueue.srv" ""
)

get_filename_component(_filename "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/akrauch-rovi/pa10controller/srv/setJointConfig.srv" NAME_WE)
add_custom_target(_pa10controller_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pa10controller" "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/akrauch-rovi/pa10controller/srv/setJointConfig.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(pa10controller
  "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/akrauch-rovi/pa10controller/srv/getJointConfig.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pa10controller
)
_generate_srv_cpp(pa10controller
  "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/akrauch-rovi/pa10controller/srv/addToQueue.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pa10controller
)
_generate_srv_cpp(pa10controller
  "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/akrauch-rovi/pa10controller/srv/clearJointQueue.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pa10controller
)
_generate_srv_cpp(pa10controller
  "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/akrauch-rovi/pa10controller/srv/startPA10.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pa10controller
)
_generate_srv_cpp(pa10controller
  "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/akrauch-rovi/pa10controller/srv/startQueue.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pa10controller
)
_generate_srv_cpp(pa10controller
  "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/akrauch-rovi/pa10controller/srv/setJointConfig.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pa10controller
)

### Generating Module File
_generate_module_cpp(pa10controller
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pa10controller
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(pa10controller_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(pa10controller_generate_messages pa10controller_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/akrauch-rovi/pa10controller/srv/getJointConfig.srv" NAME_WE)
add_dependencies(pa10controller_generate_messages_cpp _pa10controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/akrauch-rovi/pa10controller/srv/addToQueue.srv" NAME_WE)
add_dependencies(pa10controller_generate_messages_cpp _pa10controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/akrauch-rovi/pa10controller/srv/clearJointQueue.srv" NAME_WE)
add_dependencies(pa10controller_generate_messages_cpp _pa10controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/akrauch-rovi/pa10controller/srv/startPA10.srv" NAME_WE)
add_dependencies(pa10controller_generate_messages_cpp _pa10controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/akrauch-rovi/pa10controller/srv/startQueue.srv" NAME_WE)
add_dependencies(pa10controller_generate_messages_cpp _pa10controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/akrauch-rovi/pa10controller/srv/setJointConfig.srv" NAME_WE)
add_dependencies(pa10controller_generate_messages_cpp _pa10controller_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pa10controller_gencpp)
add_dependencies(pa10controller_gencpp pa10controller_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pa10controller_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(pa10controller
  "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/akrauch-rovi/pa10controller/srv/getJointConfig.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pa10controller
)
_generate_srv_eus(pa10controller
  "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/akrauch-rovi/pa10controller/srv/addToQueue.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pa10controller
)
_generate_srv_eus(pa10controller
  "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/akrauch-rovi/pa10controller/srv/clearJointQueue.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pa10controller
)
_generate_srv_eus(pa10controller
  "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/akrauch-rovi/pa10controller/srv/startPA10.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pa10controller
)
_generate_srv_eus(pa10controller
  "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/akrauch-rovi/pa10controller/srv/startQueue.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pa10controller
)
_generate_srv_eus(pa10controller
  "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/akrauch-rovi/pa10controller/srv/setJointConfig.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pa10controller
)

### Generating Module File
_generate_module_eus(pa10controller
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pa10controller
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(pa10controller_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(pa10controller_generate_messages pa10controller_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/akrauch-rovi/pa10controller/srv/getJointConfig.srv" NAME_WE)
add_dependencies(pa10controller_generate_messages_eus _pa10controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/akrauch-rovi/pa10controller/srv/addToQueue.srv" NAME_WE)
add_dependencies(pa10controller_generate_messages_eus _pa10controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/akrauch-rovi/pa10controller/srv/clearJointQueue.srv" NAME_WE)
add_dependencies(pa10controller_generate_messages_eus _pa10controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/akrauch-rovi/pa10controller/srv/startPA10.srv" NAME_WE)
add_dependencies(pa10controller_generate_messages_eus _pa10controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/akrauch-rovi/pa10controller/srv/startQueue.srv" NAME_WE)
add_dependencies(pa10controller_generate_messages_eus _pa10controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/akrauch-rovi/pa10controller/srv/setJointConfig.srv" NAME_WE)
add_dependencies(pa10controller_generate_messages_eus _pa10controller_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pa10controller_geneus)
add_dependencies(pa10controller_geneus pa10controller_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pa10controller_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(pa10controller
  "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/akrauch-rovi/pa10controller/srv/getJointConfig.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pa10controller
)
_generate_srv_lisp(pa10controller
  "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/akrauch-rovi/pa10controller/srv/addToQueue.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pa10controller
)
_generate_srv_lisp(pa10controller
  "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/akrauch-rovi/pa10controller/srv/clearJointQueue.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pa10controller
)
_generate_srv_lisp(pa10controller
  "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/akrauch-rovi/pa10controller/srv/startPA10.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pa10controller
)
_generate_srv_lisp(pa10controller
  "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/akrauch-rovi/pa10controller/srv/startQueue.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pa10controller
)
_generate_srv_lisp(pa10controller
  "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/akrauch-rovi/pa10controller/srv/setJointConfig.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pa10controller
)

### Generating Module File
_generate_module_lisp(pa10controller
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pa10controller
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(pa10controller_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(pa10controller_generate_messages pa10controller_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/akrauch-rovi/pa10controller/srv/getJointConfig.srv" NAME_WE)
add_dependencies(pa10controller_generate_messages_lisp _pa10controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/akrauch-rovi/pa10controller/srv/addToQueue.srv" NAME_WE)
add_dependencies(pa10controller_generate_messages_lisp _pa10controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/akrauch-rovi/pa10controller/srv/clearJointQueue.srv" NAME_WE)
add_dependencies(pa10controller_generate_messages_lisp _pa10controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/akrauch-rovi/pa10controller/srv/startPA10.srv" NAME_WE)
add_dependencies(pa10controller_generate_messages_lisp _pa10controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/akrauch-rovi/pa10controller/srv/startQueue.srv" NAME_WE)
add_dependencies(pa10controller_generate_messages_lisp _pa10controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/akrauch-rovi/pa10controller/srv/setJointConfig.srv" NAME_WE)
add_dependencies(pa10controller_generate_messages_lisp _pa10controller_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pa10controller_genlisp)
add_dependencies(pa10controller_genlisp pa10controller_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pa10controller_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(pa10controller
  "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/akrauch-rovi/pa10controller/srv/getJointConfig.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pa10controller
)
_generate_srv_nodejs(pa10controller
  "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/akrauch-rovi/pa10controller/srv/addToQueue.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pa10controller
)
_generate_srv_nodejs(pa10controller
  "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/akrauch-rovi/pa10controller/srv/clearJointQueue.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pa10controller
)
_generate_srv_nodejs(pa10controller
  "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/akrauch-rovi/pa10controller/srv/startPA10.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pa10controller
)
_generate_srv_nodejs(pa10controller
  "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/akrauch-rovi/pa10controller/srv/startQueue.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pa10controller
)
_generate_srv_nodejs(pa10controller
  "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/akrauch-rovi/pa10controller/srv/setJointConfig.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pa10controller
)

### Generating Module File
_generate_module_nodejs(pa10controller
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pa10controller
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(pa10controller_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(pa10controller_generate_messages pa10controller_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/akrauch-rovi/pa10controller/srv/getJointConfig.srv" NAME_WE)
add_dependencies(pa10controller_generate_messages_nodejs _pa10controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/akrauch-rovi/pa10controller/srv/addToQueue.srv" NAME_WE)
add_dependencies(pa10controller_generate_messages_nodejs _pa10controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/akrauch-rovi/pa10controller/srv/clearJointQueue.srv" NAME_WE)
add_dependencies(pa10controller_generate_messages_nodejs _pa10controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/akrauch-rovi/pa10controller/srv/startPA10.srv" NAME_WE)
add_dependencies(pa10controller_generate_messages_nodejs _pa10controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/akrauch-rovi/pa10controller/srv/startQueue.srv" NAME_WE)
add_dependencies(pa10controller_generate_messages_nodejs _pa10controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/akrauch-rovi/pa10controller/srv/setJointConfig.srv" NAME_WE)
add_dependencies(pa10controller_generate_messages_nodejs _pa10controller_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pa10controller_gennodejs)
add_dependencies(pa10controller_gennodejs pa10controller_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pa10controller_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(pa10controller
  "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/akrauch-rovi/pa10controller/srv/getJointConfig.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pa10controller
)
_generate_srv_py(pa10controller
  "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/akrauch-rovi/pa10controller/srv/addToQueue.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pa10controller
)
_generate_srv_py(pa10controller
  "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/akrauch-rovi/pa10controller/srv/clearJointQueue.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pa10controller
)
_generate_srv_py(pa10controller
  "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/akrauch-rovi/pa10controller/srv/startPA10.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pa10controller
)
_generate_srv_py(pa10controller
  "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/akrauch-rovi/pa10controller/srv/startQueue.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pa10controller
)
_generate_srv_py(pa10controller
  "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/akrauch-rovi/pa10controller/srv/setJointConfig.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pa10controller
)

### Generating Module File
_generate_module_py(pa10controller
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pa10controller
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(pa10controller_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(pa10controller_generate_messages pa10controller_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/akrauch-rovi/pa10controller/srv/getJointConfig.srv" NAME_WE)
add_dependencies(pa10controller_generate_messages_py _pa10controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/akrauch-rovi/pa10controller/srv/addToQueue.srv" NAME_WE)
add_dependencies(pa10controller_generate_messages_py _pa10controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/akrauch-rovi/pa10controller/srv/clearJointQueue.srv" NAME_WE)
add_dependencies(pa10controller_generate_messages_py _pa10controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/akrauch-rovi/pa10controller/srv/startPA10.srv" NAME_WE)
add_dependencies(pa10controller_generate_messages_py _pa10controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/akrauch-rovi/pa10controller/srv/startQueue.srv" NAME_WE)
add_dependencies(pa10controller_generate_messages_py _pa10controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/akrauch-rovi/pa10controller/srv/setJointConfig.srv" NAME_WE)
add_dependencies(pa10controller_generate_messages_py _pa10controller_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pa10controller_genpy)
add_dependencies(pa10controller_genpy pa10controller_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pa10controller_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pa10controller)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pa10controller
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(pa10controller_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pa10controller)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pa10controller
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(pa10controller_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pa10controller)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pa10controller
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(pa10controller_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pa10controller)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pa10controller
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(pa10controller_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pa10controller)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pa10controller\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pa10controller
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(pa10controller_generate_messages_py std_msgs_generate_messages_py)
endif()
