;; Auto-generated. Do not edit!


(when (boundp 'traj_plan::PoseStampedArray)
  (if (not (find-package "TRAJ_PLAN"))
    (make-package "TRAJ_PLAN"))
  (shadow 'PoseStampedArray (find-package "TRAJ_PLAN")))
(unless (find-package "TRAJ_PLAN::POSESTAMPEDARRAY")
  (make-package "TRAJ_PLAN::POSESTAMPEDARRAY"))

(in-package "ROS")
;;//! \htmlinclude PoseStampedArray.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass traj_plan::PoseStampedArray
  :super ros::object
  :slots (_data ))

(defmethod traj_plan::PoseStampedArray
  (:init
   (&key
    ((:data __data) (let (r) (dotimes (i 0) (push (instance geometry_msgs::PoseStamped :init) r)) r))
    )
   (send-super :init)
   (setq _data __data)
   self)
  (:data
   (&rest __data)
   (if (keywordp (car __data))
       (send* _data __data)
     (progn
       (if __data (setq _data (car __data)))
       _data)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/PoseStamped[] _data
    (apply #'+ (send-all _data :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PoseStamped[] _data
     (write-long (length _data) s)
     (dolist (elem _data)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PoseStamped[] _data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _data (let (r) (dotimes (i n) (push (instance geometry_msgs::PoseStamped :init) r)) r))
     (dolist (elem- _data)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get traj_plan::PoseStampedArray :md5sum-) "f787417d6b8b8074c0c0075d0c89d8f8")
(setf (get traj_plan::PoseStampedArray :datatype-) "traj_plan/PoseStampedArray")
(setf (get traj_plan::PoseStampedArray :definition-)
      "geometry_msgs/PoseStamped[] data
================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :traj_plan/PoseStampedArray "f787417d6b8b8074c0c0075d0c89d8f8")


