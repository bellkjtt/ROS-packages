;; Auto-generated. Do not edit!


(when (boundp 'traj_plan::JointInterpolation)
  (if (not (find-package "TRAJ_PLAN"))
    (make-package "TRAJ_PLAN"))
  (shadow 'JointInterpolation (find-package "TRAJ_PLAN")))
(unless (find-package "TRAJ_PLAN::JOINTINTERPOLATION")
  (make-package "TRAJ_PLAN::JOINTINTERPOLATION"))
(unless (find-package "TRAJ_PLAN::JOINTINTERPOLATIONREQUEST")
  (make-package "TRAJ_PLAN::JOINTINTERPOLATIONREQUEST"))
(unless (find-package "TRAJ_PLAN::JOINTINTERPOLATIONRESPONSE")
  (make-package "TRAJ_PLAN::JOINTINTERPOLATIONRESPONSE"))

(in-package "ROS")

(if (not (find-package "TRAJECTORY_MSGS"))
  (ros::roseus-add-msgs "trajectory_msgs"))


(if (not (find-package "TRAJECTORY_MSGS"))
  (ros::roseus-add-msgs "trajectory_msgs"))


(defclass traj_plan::JointInterpolationRequest
  :super ros::object
  :slots (_waypoints ))

(defmethod traj_plan::JointInterpolationRequest
  (:init
   (&key
    ((:waypoints __waypoints) (instance trajectory_msgs::JointTrajectory :init))
    )
   (send-super :init)
   (setq _waypoints __waypoints)
   self)
  (:waypoints
   (&rest __waypoints)
   (if (keywordp (car __waypoints))
       (send* _waypoints __waypoints)
     (progn
       (if __waypoints (setq _waypoints (car __waypoints)))
       _waypoints)))
  (:serialization-length
   ()
   (+
    ;; trajectory_msgs/JointTrajectory _waypoints
    (send _waypoints :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; trajectory_msgs/JointTrajectory _waypoints
       (send _waypoints :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; trajectory_msgs/JointTrajectory _waypoints
     (send _waypoints :deserialize buf ptr-) (incf ptr- (send _waypoints :serialization-length))
   ;;
   self)
  )

(defclass traj_plan::JointInterpolationResponse
  :super ros::object
  :slots (_result ))

(defmethod traj_plan::JointInterpolationResponse
  (:init
   (&key
    ((:result __result) (instance trajectory_msgs::JointTrajectory :init))
    )
   (send-super :init)
   (setq _result __result)
   self)
  (:result
   (&rest __result)
   (if (keywordp (car __result))
       (send* _result __result)
     (progn
       (if __result (setq _result (car __result)))
       _result)))
  (:serialization-length
   ()
   (+
    ;; trajectory_msgs/JointTrajectory _result
    (send _result :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; trajectory_msgs/JointTrajectory _result
       (send _result :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; trajectory_msgs/JointTrajectory _result
     (send _result :deserialize buf ptr-) (incf ptr- (send _result :serialization-length))
   ;;
   self)
  )

(defclass traj_plan::JointInterpolation
  :super ros::object
  :slots ())

(setf (get traj_plan::JointInterpolation :md5sum-) "69c5258a1c5a9248843418c54aa9d57a")
(setf (get traj_plan::JointInterpolation :datatype-) "traj_plan/JointInterpolation")
(setf (get traj_plan::JointInterpolation :request) traj_plan::JointInterpolationRequest)
(setf (get traj_plan::JointInterpolation :response) traj_plan::JointInterpolationResponse)

(defmethod traj_plan::JointInterpolationRequest
  (:response () (instance traj_plan::JointInterpolationResponse :init)))

(setf (get traj_plan::JointInterpolationRequest :md5sum-) "69c5258a1c5a9248843418c54aa9d57a")
(setf (get traj_plan::JointInterpolationRequest :datatype-) "traj_plan/JointInterpolationRequest")
(setf (get traj_plan::JointInterpolationRequest :definition-)
      "trajectory_msgs/JointTrajectory waypoints

================================================================================
MSG: trajectory_msgs/JointTrajectory
Header header
string[] joint_names
JointTrajectoryPoint[] points

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: trajectory_msgs/JointTrajectoryPoint
# Each trajectory point specifies either positions[, velocities[, accelerations]]
# or positions[, effort] for the trajectory to be executed.
# All specified values are in the same order as the joint names in JointTrajectory.msg

float64[] positions
float64[] velocities
float64[] accelerations
float64[] effort
duration time_from_start
---
trajectory_msgs/JointTrajectory result

================================================================================
MSG: trajectory_msgs/JointTrajectory
Header header
string[] joint_names
JointTrajectoryPoint[] points

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: trajectory_msgs/JointTrajectoryPoint
# Each trajectory point specifies either positions[, velocities[, accelerations]]
# or positions[, effort] for the trajectory to be executed.
# All specified values are in the same order as the joint names in JointTrajectory.msg

float64[] positions
float64[] velocities
float64[] accelerations
float64[] effort
duration time_from_start
")

(setf (get traj_plan::JointInterpolationResponse :md5sum-) "69c5258a1c5a9248843418c54aa9d57a")
(setf (get traj_plan::JointInterpolationResponse :datatype-) "traj_plan/JointInterpolationResponse")
(setf (get traj_plan::JointInterpolationResponse :definition-)
      "trajectory_msgs/JointTrajectory waypoints

================================================================================
MSG: trajectory_msgs/JointTrajectory
Header header
string[] joint_names
JointTrajectoryPoint[] points

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: trajectory_msgs/JointTrajectoryPoint
# Each trajectory point specifies either positions[, velocities[, accelerations]]
# or positions[, effort] for the trajectory to be executed.
# All specified values are in the same order as the joint names in JointTrajectory.msg

float64[] positions
float64[] velocities
float64[] accelerations
float64[] effort
duration time_from_start
---
trajectory_msgs/JointTrajectory result

================================================================================
MSG: trajectory_msgs/JointTrajectory
Header header
string[] joint_names
JointTrajectoryPoint[] points

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: trajectory_msgs/JointTrajectoryPoint
# Each trajectory point specifies either positions[, velocities[, accelerations]]
# or positions[, effort] for the trajectory to be executed.
# All specified values are in the same order as the joint names in JointTrajectory.msg

float64[] positions
float64[] velocities
float64[] accelerations
float64[] effort
duration time_from_start
")



(provide :traj_plan/JointInterpolation "69c5258a1c5a9248843418c54aa9d57a")


