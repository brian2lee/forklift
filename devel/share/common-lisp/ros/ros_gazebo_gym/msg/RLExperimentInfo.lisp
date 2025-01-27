; Auto-generated. Do not edit!


(cl:in-package ros_gazebo_gym-msg)


;//! \htmlinclude RLExperimentInfo.msg.html

(cl:defclass <RLExperimentInfo> (roslisp-msg-protocol:ros-message)
  ((episode_number
    :reader episode_number
    :initarg :episode_number
    :type cl:integer
    :initform 0)
   (step_number
    :reader step_number
    :initarg :step_number
    :type cl:integer
    :initform 0)
   (reward
    :reader reward
    :initarg :reward
    :type cl:float
    :initform 0.0))
)

(cl:defclass RLExperimentInfo (<RLExperimentInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RLExperimentInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RLExperimentInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_gazebo_gym-msg:<RLExperimentInfo> is deprecated: use ros_gazebo_gym-msg:RLExperimentInfo instead.")))

(cl:ensure-generic-function 'episode_number-val :lambda-list '(m))
(cl:defmethod episode_number-val ((m <RLExperimentInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_gazebo_gym-msg:episode_number-val is deprecated.  Use ros_gazebo_gym-msg:episode_number instead.")
  (episode_number m))

(cl:ensure-generic-function 'step_number-val :lambda-list '(m))
(cl:defmethod step_number-val ((m <RLExperimentInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_gazebo_gym-msg:step_number-val is deprecated.  Use ros_gazebo_gym-msg:step_number instead.")
  (step_number m))

(cl:ensure-generic-function 'reward-val :lambda-list '(m))
(cl:defmethod reward-val ((m <RLExperimentInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_gazebo_gym-msg:reward-val is deprecated.  Use ros_gazebo_gym-msg:reward instead.")
  (reward m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RLExperimentInfo>) ostream)
  "Serializes a message object of type '<RLExperimentInfo>"
  (cl:let* ((signed (cl:slot-value msg 'episode_number)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'step_number)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'reward))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RLExperimentInfo>) istream)
  "Deserializes a message object of type '<RLExperimentInfo>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'episode_number) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'step_number) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'reward) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RLExperimentInfo>)))
  "Returns string type for a message object of type '<RLExperimentInfo>"
  "ros_gazebo_gym/RLExperimentInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RLExperimentInfo)))
  "Returns string type for a message object of type 'RLExperimentInfo"
  "ros_gazebo_gym/RLExperimentInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RLExperimentInfo>)))
  "Returns md5sum for a message object of type '<RLExperimentInfo>"
  "c19794b666c4451be032d9f41dd657c4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RLExperimentInfo)))
  "Returns md5sum for a message object of type 'RLExperimentInfo"
  "c19794b666c4451be032d9f41dd657c4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RLExperimentInfo>)))
  "Returns full string definition for message of type '<RLExperimentInfo>"
  (cl:format cl:nil "# Message used to send training related information.~%int32 episode_number~%int32 step_number~%float32 reward~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RLExperimentInfo)))
  "Returns full string definition for message of type 'RLExperimentInfo"
  (cl:format cl:nil "# Message used to send training related information.~%int32 episode_number~%int32 step_number~%float32 reward~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RLExperimentInfo>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RLExperimentInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'RLExperimentInfo
    (cl:cons ':episode_number (episode_number msg))
    (cl:cons ':step_number (step_number msg))
    (cl:cons ':reward (reward msg))
))
