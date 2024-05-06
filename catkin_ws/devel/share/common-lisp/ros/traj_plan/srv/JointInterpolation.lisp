; Auto-generated. Do not edit!


(cl:in-package traj_plan-srv)


;//! \htmlinclude JointInterpolation-request.msg.html

(cl:defclass <JointInterpolation-request> (roslisp-msg-protocol:ros-message)
  ((waypoints
    :reader waypoints
    :initarg :waypoints
    :type trajectory_msgs-msg:JointTrajectory
    :initform (cl:make-instance 'trajectory_msgs-msg:JointTrajectory)))
)

(cl:defclass JointInterpolation-request (<JointInterpolation-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <JointInterpolation-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'JointInterpolation-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name traj_plan-srv:<JointInterpolation-request> is deprecated: use traj_plan-srv:JointInterpolation-request instead.")))

(cl:ensure-generic-function 'waypoints-val :lambda-list '(m))
(cl:defmethod waypoints-val ((m <JointInterpolation-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader traj_plan-srv:waypoints-val is deprecated.  Use traj_plan-srv:waypoints instead.")
  (waypoints m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <JointInterpolation-request>) ostream)
  "Serializes a message object of type '<JointInterpolation-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'waypoints) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <JointInterpolation-request>) istream)
  "Deserializes a message object of type '<JointInterpolation-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'waypoints) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<JointInterpolation-request>)))
  "Returns string type for a service object of type '<JointInterpolation-request>"
  "traj_plan/JointInterpolationRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JointInterpolation-request)))
  "Returns string type for a service object of type 'JointInterpolation-request"
  "traj_plan/JointInterpolationRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<JointInterpolation-request>)))
  "Returns md5sum for a message object of type '<JointInterpolation-request>"
  "69c5258a1c5a9248843418c54aa9d57a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'JointInterpolation-request)))
  "Returns md5sum for a message object of type 'JointInterpolation-request"
  "69c5258a1c5a9248843418c54aa9d57a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<JointInterpolation-request>)))
  "Returns full string definition for message of type '<JointInterpolation-request>"
  (cl:format cl:nil "trajectory_msgs/JointTrajectory waypoints~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectory~%Header header~%string[] joint_names~%JointTrajectoryPoint[] points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectoryPoint~%# Each trajectory point specifies either positions[, velocities[, accelerations]]~%# or positions[, effort] for the trajectory to be executed.~%# All specified values are in the same order as the joint names in JointTrajectory.msg~%~%float64[] positions~%float64[] velocities~%float64[] accelerations~%float64[] effort~%duration time_from_start~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'JointInterpolation-request)))
  "Returns full string definition for message of type 'JointInterpolation-request"
  (cl:format cl:nil "trajectory_msgs/JointTrajectory waypoints~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectory~%Header header~%string[] joint_names~%JointTrajectoryPoint[] points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectoryPoint~%# Each trajectory point specifies either positions[, velocities[, accelerations]]~%# or positions[, effort] for the trajectory to be executed.~%# All specified values are in the same order as the joint names in JointTrajectory.msg~%~%float64[] positions~%float64[] velocities~%float64[] accelerations~%float64[] effort~%duration time_from_start~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <JointInterpolation-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'waypoints))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <JointInterpolation-request>))
  "Converts a ROS message object to a list"
  (cl:list 'JointInterpolation-request
    (cl:cons ':waypoints (waypoints msg))
))
;//! \htmlinclude JointInterpolation-response.msg.html

(cl:defclass <JointInterpolation-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type trajectory_msgs-msg:JointTrajectory
    :initform (cl:make-instance 'trajectory_msgs-msg:JointTrajectory)))
)

(cl:defclass JointInterpolation-response (<JointInterpolation-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <JointInterpolation-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'JointInterpolation-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name traj_plan-srv:<JointInterpolation-response> is deprecated: use traj_plan-srv:JointInterpolation-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <JointInterpolation-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader traj_plan-srv:result-val is deprecated.  Use traj_plan-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <JointInterpolation-response>) ostream)
  "Serializes a message object of type '<JointInterpolation-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'result) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <JointInterpolation-response>) istream)
  "Deserializes a message object of type '<JointInterpolation-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'result) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<JointInterpolation-response>)))
  "Returns string type for a service object of type '<JointInterpolation-response>"
  "traj_plan/JointInterpolationResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JointInterpolation-response)))
  "Returns string type for a service object of type 'JointInterpolation-response"
  "traj_plan/JointInterpolationResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<JointInterpolation-response>)))
  "Returns md5sum for a message object of type '<JointInterpolation-response>"
  "69c5258a1c5a9248843418c54aa9d57a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'JointInterpolation-response)))
  "Returns md5sum for a message object of type 'JointInterpolation-response"
  "69c5258a1c5a9248843418c54aa9d57a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<JointInterpolation-response>)))
  "Returns full string definition for message of type '<JointInterpolation-response>"
  (cl:format cl:nil "trajectory_msgs/JointTrajectory result~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectory~%Header header~%string[] joint_names~%JointTrajectoryPoint[] points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectoryPoint~%# Each trajectory point specifies either positions[, velocities[, accelerations]]~%# or positions[, effort] for the trajectory to be executed.~%# All specified values are in the same order as the joint names in JointTrajectory.msg~%~%float64[] positions~%float64[] velocities~%float64[] accelerations~%float64[] effort~%duration time_from_start~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'JointInterpolation-response)))
  "Returns full string definition for message of type 'JointInterpolation-response"
  (cl:format cl:nil "trajectory_msgs/JointTrajectory result~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectory~%Header header~%string[] joint_names~%JointTrajectoryPoint[] points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectoryPoint~%# Each trajectory point specifies either positions[, velocities[, accelerations]]~%# or positions[, effort] for the trajectory to be executed.~%# All specified values are in the same order as the joint names in JointTrajectory.msg~%~%float64[] positions~%float64[] velocities~%float64[] accelerations~%float64[] effort~%duration time_from_start~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <JointInterpolation-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'result))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <JointInterpolation-response>))
  "Converts a ROS message object to a list"
  (cl:list 'JointInterpolation-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'JointInterpolation)))
  'JointInterpolation-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'JointInterpolation)))
  'JointInterpolation-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JointInterpolation)))
  "Returns string type for a service object of type '<JointInterpolation>"
  "traj_plan/JointInterpolation")