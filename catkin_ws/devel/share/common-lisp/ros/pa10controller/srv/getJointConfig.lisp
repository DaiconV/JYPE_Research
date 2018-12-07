; Auto-generated. Do not edit!


(cl:in-package pa10controller-srv)


;//! \htmlinclude getJointConfig-request.msg.html

(cl:defclass <getJointConfig-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass getJointConfig-request (<getJointConfig-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <getJointConfig-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'getJointConfig-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pa10controller-srv:<getJointConfig-request> is deprecated: use pa10controller-srv:getJointConfig-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <getJointConfig-request>) ostream)
  "Serializes a message object of type '<getJointConfig-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <getJointConfig-request>) istream)
  "Deserializes a message object of type '<getJointConfig-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<getJointConfig-request>)))
  "Returns string type for a service object of type '<getJointConfig-request>"
  "pa10controller/getJointConfigRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'getJointConfig-request)))
  "Returns string type for a service object of type 'getJointConfig-request"
  "pa10controller/getJointConfigRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<getJointConfig-request>)))
  "Returns md5sum for a message object of type '<getJointConfig-request>"
  "8b59e38f5296df3482c671e5301fa089")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'getJointConfig-request)))
  "Returns md5sum for a message object of type 'getJointConfig-request"
  "8b59e38f5296df3482c671e5301fa089")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<getJointConfig-request>)))
  "Returns full string definition for message of type '<getJointConfig-request>"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'getJointConfig-request)))
  "Returns full string definition for message of type 'getJointConfig-request"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <getJointConfig-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <getJointConfig-request>))
  "Converts a ROS message object to a list"
  (cl:list 'getJointConfig-request
))
;//! \htmlinclude getJointConfig-response.msg.html

(cl:defclass <getJointConfig-response> (roslisp-msg-protocol:ros-message)
  ((positions
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

(cl:defclass getJointConfig-response (<getJointConfig-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <getJointConfig-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'getJointConfig-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pa10controller-srv:<getJointConfig-response> is deprecated: use pa10controller-srv:getJointConfig-response instead.")))

(cl:ensure-generic-function 'positions-val :lambda-list '(m))
(cl:defmethod positions-val ((m <getJointConfig-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pa10controller-srv:positions-val is deprecated.  Use pa10controller-srv:positions instead.")
  (positions m))

(cl:ensure-generic-function 'commands-val :lambda-list '(m))
(cl:defmethod commands-val ((m <getJointConfig-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pa10controller-srv:commands-val is deprecated.  Use pa10controller-srv:commands instead.")
  (commands m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <getJointConfig-response>) ostream)
  "Serializes a message object of type '<getJointConfig-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <getJointConfig-response>) istream)
  "Deserializes a message object of type '<getJointConfig-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<getJointConfig-response>)))
  "Returns string type for a service object of type '<getJointConfig-response>"
  "pa10controller/getJointConfigResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'getJointConfig-response)))
  "Returns string type for a service object of type 'getJointConfig-response"
  "pa10controller/getJointConfigResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<getJointConfig-response>)))
  "Returns md5sum for a message object of type '<getJointConfig-response>"
  "8b59e38f5296df3482c671e5301fa089")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'getJointConfig-response)))
  "Returns md5sum for a message object of type 'getJointConfig-response"
  "8b59e38f5296df3482c671e5301fa089")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<getJointConfig-response>)))
  "Returns full string definition for message of type '<getJointConfig-response>"
  (cl:format cl:nil "~%~%float32[7] positions~%float32[7] commands~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'getJointConfig-response)))
  "Returns full string definition for message of type 'getJointConfig-response"
  (cl:format cl:nil "~%~%float32[7] positions~%float32[7] commands~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <getJointConfig-response>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'positions) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'commands) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <getJointConfig-response>))
  "Converts a ROS message object to a list"
  (cl:list 'getJointConfig-response
    (cl:cons ':positions (positions msg))
    (cl:cons ':commands (commands msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'getJointConfig)))
  'getJointConfig-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'getJointConfig)))
  'getJointConfig-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'getJointConfig)))
  "Returns string type for a service object of type '<getJointConfig>"
  "pa10controller/getJointConfig")