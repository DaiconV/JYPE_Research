; Auto-generated. Do not edit!


(cl:in-package pa10controller-srv)


;//! \htmlinclude setJointConfig-request.msg.html

(cl:defclass <setJointConfig-request> (roslisp-msg-protocol:ros-message)
  ((gripper
    :reader gripper
    :initarg :gripper
    :type cl:boolean
    :initform cl:nil)
   (positions
    :reader positions
    :initarg :positions
    :type (cl:vector cl:float)
   :initform (cl:make-array 7 :element-type 'cl:float :initial-element 0.0))
   (commands
    :reader commands
    :initarg :commands
    :type (cl:vector cl:float)
   :initform (cl:make-array 7 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass setJointConfig-request (<setJointConfig-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <setJointConfig-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'setJointConfig-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pa10controller-srv:<setJointConfig-request> is deprecated: use pa10controller-srv:setJointConfig-request instead.")))

(cl:ensure-generic-function 'gripper-val :lambda-list '(m))
(cl:defmethod gripper-val ((m <setJointConfig-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pa10controller-srv:gripper-val is deprecated.  Use pa10controller-srv:gripper instead.")
  (gripper m))

(cl:ensure-generic-function 'positions-val :lambda-list '(m))
(cl:defmethod positions-val ((m <setJointConfig-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pa10controller-srv:positions-val is deprecated.  Use pa10controller-srv:positions instead.")
  (positions m))

(cl:ensure-generic-function 'commands-val :lambda-list '(m))
(cl:defmethod commands-val ((m <setJointConfig-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pa10controller-srv:commands-val is deprecated.  Use pa10controller-srv:commands instead.")
  (commands m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <setJointConfig-request>) ostream)
  "Serializes a message object of type '<setJointConfig-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'gripper) 1 0)) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'positions))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'commands))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <setJointConfig-request>) istream)
  "Deserializes a message object of type '<setJointConfig-request>"
    (cl:setf (cl:slot-value msg 'gripper) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:setf (cl:slot-value msg 'positions) (cl:make-array 7))
  (cl:let ((vals (cl:slot-value msg 'positions)))
    (cl:dotimes (i 7)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'commands) (cl:make-array 7))
  (cl:let ((vals (cl:slot-value msg 'commands)))
    (cl:dotimes (i 7)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<setJointConfig-request>)))
  "Returns string type for a service object of type '<setJointConfig-request>"
  "pa10controller/setJointConfigRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'setJointConfig-request)))
  "Returns string type for a service object of type 'setJointConfig-request"
  "pa10controller/setJointConfigRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<setJointConfig-request>)))
  "Returns md5sum for a message object of type '<setJointConfig-request>"
  "46282454b294ac7d0c48434b1d003f7a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'setJointConfig-request)))
  "Returns md5sum for a message object of type 'setJointConfig-request"
  "46282454b294ac7d0c48434b1d003f7a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<setJointConfig-request>)))
  "Returns full string definition for message of type '<setJointConfig-request>"
  (cl:format cl:nil "~%~%bool gripper~%float32[7] positions~%float32[7] commands~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'setJointConfig-request)))
  "Returns full string definition for message of type 'setJointConfig-request"
  (cl:format cl:nil "~%~%bool gripper~%float32[7] positions~%float32[7] commands~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <setJointConfig-request>))
  (cl:+ 0
     1
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'positions) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'commands) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <setJointConfig-request>))
  "Converts a ROS message object to a list"
  (cl:list 'setJointConfig-request
    (cl:cons ':gripper (gripper msg))
    (cl:cons ':positions (positions msg))
    (cl:cons ':commands (commands msg))
))
;//! \htmlinclude setJointConfig-response.msg.html

(cl:defclass <setJointConfig-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass setJointConfig-response (<setJointConfig-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <setJointConfig-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'setJointConfig-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pa10controller-srv:<setJointConfig-response> is deprecated: use pa10controller-srv:setJointConfig-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <setJointConfig-response>) ostream)
  "Serializes a message object of type '<setJointConfig-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <setJointConfig-response>) istream)
  "Deserializes a message object of type '<setJointConfig-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<setJointConfig-response>)))
  "Returns string type for a service object of type '<setJointConfig-response>"
  "pa10controller/setJointConfigResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'setJointConfig-response)))
  "Returns string type for a service object of type 'setJointConfig-response"
  "pa10controller/setJointConfigResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<setJointConfig-response>)))
  "Returns md5sum for a message object of type '<setJointConfig-response>"
  "46282454b294ac7d0c48434b1d003f7a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'setJointConfig-response)))
  "Returns md5sum for a message object of type 'setJointConfig-response"
  "46282454b294ac7d0c48434b1d003f7a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<setJointConfig-response>)))
  "Returns full string definition for message of type '<setJointConfig-response>"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'setJointConfig-response)))
  "Returns full string definition for message of type 'setJointConfig-response"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <setJointConfig-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <setJointConfig-response>))
  "Converts a ROS message object to a list"
  (cl:list 'setJointConfig-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'setJointConfig)))
  'setJointConfig-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'setJointConfig)))
  'setJointConfig-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'setJointConfig)))
  "Returns string type for a service object of type '<setJointConfig>"
  "pa10controller/setJointConfig")