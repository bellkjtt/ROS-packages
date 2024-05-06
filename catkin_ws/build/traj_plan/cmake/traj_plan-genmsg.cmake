# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "traj_plan: 1 messages, 1 services")

set(MSG_I_FLAGS "-Itraj_plan:/home/sikaro/catkin_ws/src/traj_plan/msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg;-Itrajectory_msgs:/opt/ros/melodic/share/trajectory_msgs/cmake/../msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(traj_plan_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/sikaro/catkin_ws/src/traj_plan/srv/JointInterpolation.srv" NAME_WE)
add_custom_target(_traj_plan_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "traj_plan" "/home/sikaro/catkin_ws/src/traj_plan/srv/JointInterpolation.srv" "trajectory_msgs/JointTrajectory:trajectory_msgs/JointTrajectoryPoint:std_msgs/Header"
)

get_filename_component(_filename "/home/sikaro/catkin_ws/src/traj_plan/msg/PoseStampedArray.msg" NAME_WE)
add_custom_target(_traj_plan_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "traj_plan" "/home/sikaro/catkin_ws/src/traj_plan/msg/PoseStampedArray.msg" "geometry_msgs/Pose:geometry_msgs/Quaternion:geometry_msgs/Point:geometry_msgs/PoseStamped:std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(traj_plan
  "/home/sikaro/catkin_ws/src/traj_plan/msg/PoseStampedArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/traj_plan
)

### Generating Services
_generate_srv_cpp(traj_plan
  "/home/sikaro/catkin_ws/src/traj_plan/srv/JointInterpolation.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/traj_plan
)

### Generating Module File
_generate_module_cpp(traj_plan
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/traj_plan
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(traj_plan_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(traj_plan_generate_messages traj_plan_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sikaro/catkin_ws/src/traj_plan/srv/JointInterpolation.srv" NAME_WE)
add_dependencies(traj_plan_generate_messages_cpp _traj_plan_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sikaro/catkin_ws/src/traj_plan/msg/PoseStampedArray.msg" NAME_WE)
add_dependencies(traj_plan_generate_messages_cpp _traj_plan_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(traj_plan_gencpp)
add_dependencies(traj_plan_gencpp traj_plan_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS traj_plan_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(traj_plan
  "/home/sikaro/catkin_ws/src/traj_plan/msg/PoseStampedArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/traj_plan
)

### Generating Services
_generate_srv_eus(traj_plan
  "/home/sikaro/catkin_ws/src/traj_plan/srv/JointInterpolation.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/traj_plan
)

### Generating Module File
_generate_module_eus(traj_plan
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/traj_plan
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(traj_plan_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(traj_plan_generate_messages traj_plan_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sikaro/catkin_ws/src/traj_plan/srv/JointInterpolation.srv" NAME_WE)
add_dependencies(traj_plan_generate_messages_eus _traj_plan_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sikaro/catkin_ws/src/traj_plan/msg/PoseStampedArray.msg" NAME_WE)
add_dependencies(traj_plan_generate_messages_eus _traj_plan_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(traj_plan_geneus)
add_dependencies(traj_plan_geneus traj_plan_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS traj_plan_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(traj_plan
  "/home/sikaro/catkin_ws/src/traj_plan/msg/PoseStampedArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/traj_plan
)

### Generating Services
_generate_srv_lisp(traj_plan
  "/home/sikaro/catkin_ws/src/traj_plan/srv/JointInterpolation.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/traj_plan
)

### Generating Module File
_generate_module_lisp(traj_plan
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/traj_plan
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(traj_plan_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(traj_plan_generate_messages traj_plan_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sikaro/catkin_ws/src/traj_plan/srv/JointInterpolation.srv" NAME_WE)
add_dependencies(traj_plan_generate_messages_lisp _traj_plan_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sikaro/catkin_ws/src/traj_plan/msg/PoseStampedArray.msg" NAME_WE)
add_dependencies(traj_plan_generate_messages_lisp _traj_plan_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(traj_plan_genlisp)
add_dependencies(traj_plan_genlisp traj_plan_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS traj_plan_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(traj_plan
  "/home/sikaro/catkin_ws/src/traj_plan/msg/PoseStampedArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/traj_plan
)

### Generating Services
_generate_srv_nodejs(traj_plan
  "/home/sikaro/catkin_ws/src/traj_plan/srv/JointInterpolation.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/traj_plan
)

### Generating Module File
_generate_module_nodejs(traj_plan
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/traj_plan
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(traj_plan_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(traj_plan_generate_messages traj_plan_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sikaro/catkin_ws/src/traj_plan/srv/JointInterpolation.srv" NAME_WE)
add_dependencies(traj_plan_generate_messages_nodejs _traj_plan_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sikaro/catkin_ws/src/traj_plan/msg/PoseStampedArray.msg" NAME_WE)
add_dependencies(traj_plan_generate_messages_nodejs _traj_plan_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(traj_plan_gennodejs)
add_dependencies(traj_plan_gennodejs traj_plan_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS traj_plan_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(traj_plan
  "/home/sikaro/catkin_ws/src/traj_plan/msg/PoseStampedArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/traj_plan
)

### Generating Services
_generate_srv_py(traj_plan
  "/home/sikaro/catkin_ws/src/traj_plan/srv/JointInterpolation.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/traj_plan
)

### Generating Module File
_generate_module_py(traj_plan
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/traj_plan
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(traj_plan_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(traj_plan_generate_messages traj_plan_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sikaro/catkin_ws/src/traj_plan/srv/JointInterpolation.srv" NAME_WE)
add_dependencies(traj_plan_generate_messages_py _traj_plan_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sikaro/catkin_ws/src/traj_plan/msg/PoseStampedArray.msg" NAME_WE)
add_dependencies(traj_plan_generate_messages_py _traj_plan_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(traj_plan_genpy)
add_dependencies(traj_plan_genpy traj_plan_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS traj_plan_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/traj_plan)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/traj_plan
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(traj_plan_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET trajectory_msgs_generate_messages_cpp)
  add_dependencies(traj_plan_generate_messages_cpp trajectory_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/traj_plan)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/traj_plan
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(traj_plan_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET trajectory_msgs_generate_messages_eus)
  add_dependencies(traj_plan_generate_messages_eus trajectory_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/traj_plan)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/traj_plan
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(traj_plan_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET trajectory_msgs_generate_messages_lisp)
  add_dependencies(traj_plan_generate_messages_lisp trajectory_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/traj_plan)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/traj_plan
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(traj_plan_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET trajectory_msgs_generate_messages_nodejs)
  add_dependencies(traj_plan_generate_messages_nodejs trajectory_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/traj_plan)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/traj_plan\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/traj_plan
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(traj_plan_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET trajectory_msgs_generate_messages_py)
  add_dependencies(traj_plan_generate_messages_py trajectory_msgs_generate_messages_py)
endif()
