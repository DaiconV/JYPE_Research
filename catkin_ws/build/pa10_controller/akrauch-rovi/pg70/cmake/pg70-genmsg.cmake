# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "pg70: 0 messages, 5 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(pg70_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/pa10_controller/akrauch-rovi/pg70/srv/Open.srv" NAME_WE)
add_custom_target(_pg70_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pg70" "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/pa10_controller/akrauch-rovi/pg70/srv/Open.srv" ""
)

get_filename_component(_filename "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/pa10_controller/akrauch-rovi/pg70/srv/Move.srv" NAME_WE)
add_custom_target(_pg70_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pg70" "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/pa10_controller/akrauch-rovi/pg70/srv/Move.srv" ""
)

get_filename_component(_filename "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/pa10_controller/akrauch-rovi/pg70/srv/Stop.srv" NAME_WE)
add_custom_target(_pg70_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pg70" "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/pa10_controller/akrauch-rovi/pg70/srv/Stop.srv" ""
)

get_filename_component(_filename "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/pa10_controller/akrauch-rovi/pg70/srv/Home.srv" NAME_WE)
add_custom_target(_pg70_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pg70" "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/pa10_controller/akrauch-rovi/pg70/srv/Home.srv" ""
)

get_filename_component(_filename "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/pa10_controller/akrauch-rovi/pg70/srv/Close.srv" NAME_WE)
add_custom_target(_pg70_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pg70" "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/pa10_controller/akrauch-rovi/pg70/srv/Close.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(pg70
  "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/pa10_controller/akrauch-rovi/pg70/srv/Open.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pg70
)
_generate_srv_cpp(pg70
  "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/pa10_controller/akrauch-rovi/pg70/srv/Move.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pg70
)
_generate_srv_cpp(pg70
  "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/pa10_controller/akrauch-rovi/pg70/srv/Stop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pg70
)
_generate_srv_cpp(pg70
  "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/pa10_controller/akrauch-rovi/pg70/srv/Home.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pg70
)
_generate_srv_cpp(pg70
  "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/pa10_controller/akrauch-rovi/pg70/srv/Close.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pg70
)

### Generating Module File
_generate_module_cpp(pg70
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pg70
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(pg70_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(pg70_generate_messages pg70_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/pa10_controller/akrauch-rovi/pg70/srv/Open.srv" NAME_WE)
add_dependencies(pg70_generate_messages_cpp _pg70_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/pa10_controller/akrauch-rovi/pg70/srv/Move.srv" NAME_WE)
add_dependencies(pg70_generate_messages_cpp _pg70_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/pa10_controller/akrauch-rovi/pg70/srv/Stop.srv" NAME_WE)
add_dependencies(pg70_generate_messages_cpp _pg70_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/pa10_controller/akrauch-rovi/pg70/srv/Home.srv" NAME_WE)
add_dependencies(pg70_generate_messages_cpp _pg70_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/pa10_controller/akrauch-rovi/pg70/srv/Close.srv" NAME_WE)
add_dependencies(pg70_generate_messages_cpp _pg70_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pg70_gencpp)
add_dependencies(pg70_gencpp pg70_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pg70_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(pg70
  "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/pa10_controller/akrauch-rovi/pg70/srv/Open.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pg70
)
_generate_srv_eus(pg70
  "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/pa10_controller/akrauch-rovi/pg70/srv/Move.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pg70
)
_generate_srv_eus(pg70
  "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/pa10_controller/akrauch-rovi/pg70/srv/Stop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pg70
)
_generate_srv_eus(pg70
  "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/pa10_controller/akrauch-rovi/pg70/srv/Home.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pg70
)
_generate_srv_eus(pg70
  "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/pa10_controller/akrauch-rovi/pg70/srv/Close.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pg70
)

### Generating Module File
_generate_module_eus(pg70
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pg70
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(pg70_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(pg70_generate_messages pg70_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/pa10_controller/akrauch-rovi/pg70/srv/Open.srv" NAME_WE)
add_dependencies(pg70_generate_messages_eus _pg70_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/pa10_controller/akrauch-rovi/pg70/srv/Move.srv" NAME_WE)
add_dependencies(pg70_generate_messages_eus _pg70_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/pa10_controller/akrauch-rovi/pg70/srv/Stop.srv" NAME_WE)
add_dependencies(pg70_generate_messages_eus _pg70_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/pa10_controller/akrauch-rovi/pg70/srv/Home.srv" NAME_WE)
add_dependencies(pg70_generate_messages_eus _pg70_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/pa10_controller/akrauch-rovi/pg70/srv/Close.srv" NAME_WE)
add_dependencies(pg70_generate_messages_eus _pg70_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pg70_geneus)
add_dependencies(pg70_geneus pg70_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pg70_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(pg70
  "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/pa10_controller/akrauch-rovi/pg70/srv/Open.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pg70
)
_generate_srv_lisp(pg70
  "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/pa10_controller/akrauch-rovi/pg70/srv/Move.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pg70
)
_generate_srv_lisp(pg70
  "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/pa10_controller/akrauch-rovi/pg70/srv/Stop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pg70
)
_generate_srv_lisp(pg70
  "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/pa10_controller/akrauch-rovi/pg70/srv/Home.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pg70
)
_generate_srv_lisp(pg70
  "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/pa10_controller/akrauch-rovi/pg70/srv/Close.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pg70
)

### Generating Module File
_generate_module_lisp(pg70
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pg70
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(pg70_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(pg70_generate_messages pg70_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/pa10_controller/akrauch-rovi/pg70/srv/Open.srv" NAME_WE)
add_dependencies(pg70_generate_messages_lisp _pg70_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/pa10_controller/akrauch-rovi/pg70/srv/Move.srv" NAME_WE)
add_dependencies(pg70_generate_messages_lisp _pg70_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/pa10_controller/akrauch-rovi/pg70/srv/Stop.srv" NAME_WE)
add_dependencies(pg70_generate_messages_lisp _pg70_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/pa10_controller/akrauch-rovi/pg70/srv/Home.srv" NAME_WE)
add_dependencies(pg70_generate_messages_lisp _pg70_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/pa10_controller/akrauch-rovi/pg70/srv/Close.srv" NAME_WE)
add_dependencies(pg70_generate_messages_lisp _pg70_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pg70_genlisp)
add_dependencies(pg70_genlisp pg70_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pg70_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(pg70
  "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/pa10_controller/akrauch-rovi/pg70/srv/Open.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pg70
)
_generate_srv_nodejs(pg70
  "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/pa10_controller/akrauch-rovi/pg70/srv/Move.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pg70
)
_generate_srv_nodejs(pg70
  "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/pa10_controller/akrauch-rovi/pg70/srv/Stop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pg70
)
_generate_srv_nodejs(pg70
  "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/pa10_controller/akrauch-rovi/pg70/srv/Home.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pg70
)
_generate_srv_nodejs(pg70
  "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/pa10_controller/akrauch-rovi/pg70/srv/Close.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pg70
)

### Generating Module File
_generate_module_nodejs(pg70
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pg70
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(pg70_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(pg70_generate_messages pg70_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/pa10_controller/akrauch-rovi/pg70/srv/Open.srv" NAME_WE)
add_dependencies(pg70_generate_messages_nodejs _pg70_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/pa10_controller/akrauch-rovi/pg70/srv/Move.srv" NAME_WE)
add_dependencies(pg70_generate_messages_nodejs _pg70_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/pa10_controller/akrauch-rovi/pg70/srv/Stop.srv" NAME_WE)
add_dependencies(pg70_generate_messages_nodejs _pg70_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/pa10_controller/akrauch-rovi/pg70/srv/Home.srv" NAME_WE)
add_dependencies(pg70_generate_messages_nodejs _pg70_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/pa10_controller/akrauch-rovi/pg70/srv/Close.srv" NAME_WE)
add_dependencies(pg70_generate_messages_nodejs _pg70_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pg70_gennodejs)
add_dependencies(pg70_gennodejs pg70_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pg70_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(pg70
  "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/pa10_controller/akrauch-rovi/pg70/srv/Open.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pg70
)
_generate_srv_py(pg70
  "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/pa10_controller/akrauch-rovi/pg70/srv/Move.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pg70
)
_generate_srv_py(pg70
  "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/pa10_controller/akrauch-rovi/pg70/srv/Stop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pg70
)
_generate_srv_py(pg70
  "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/pa10_controller/akrauch-rovi/pg70/srv/Home.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pg70
)
_generate_srv_py(pg70
  "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/pa10_controller/akrauch-rovi/pg70/srv/Close.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pg70
)

### Generating Module File
_generate_module_py(pg70
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pg70
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(pg70_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(pg70_generate_messages pg70_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/pa10_controller/akrauch-rovi/pg70/srv/Open.srv" NAME_WE)
add_dependencies(pg70_generate_messages_py _pg70_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/pa10_controller/akrauch-rovi/pg70/srv/Move.srv" NAME_WE)
add_dependencies(pg70_generate_messages_py _pg70_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/pa10_controller/akrauch-rovi/pg70/srv/Stop.srv" NAME_WE)
add_dependencies(pg70_generate_messages_py _pg70_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/pa10_controller/akrauch-rovi/pg70/srv/Home.srv" NAME_WE)
add_dependencies(pg70_generate_messages_py _pg70_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/daicon_v/Documents/JYPE_research/training/catkin_ws/src/pa10_controller/akrauch-rovi/pg70/srv/Close.srv" NAME_WE)
add_dependencies(pg70_generate_messages_py _pg70_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pg70_genpy)
add_dependencies(pg70_genpy pg70_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pg70_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pg70)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pg70
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(pg70_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pg70)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pg70
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(pg70_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pg70)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pg70
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(pg70_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pg70)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pg70
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(pg70_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pg70)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pg70\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pg70
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(pg70_generate_messages_py std_msgs_generate_messages_py)
endif()
