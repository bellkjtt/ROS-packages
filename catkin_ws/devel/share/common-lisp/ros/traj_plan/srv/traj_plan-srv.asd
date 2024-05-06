
(cl:in-package :asdf)

(defsystem "traj_plan-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :trajectory_msgs-msg
)
  :components ((:file "_package")
    (:file "JointInterpolation" :depends-on ("_package_JointInterpolation"))
    (:file "_package_JointInterpolation" :depends-on ("_package"))
  ))