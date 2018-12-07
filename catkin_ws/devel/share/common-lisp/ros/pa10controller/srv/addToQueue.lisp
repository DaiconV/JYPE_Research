; Auto-generated. Do not edit!


(cl:in-package pa10controller-srv)


;//! \htmlinclude addToQueue-request.msg.html

(cl:defclass <addToQueue-request> (roslisp-msg-protocol:ros-message)
  ((gripper
    :reader gripper
    :initarg :gripper
    :type cl:boolean
    :initform cl:nil)
   (endOfQueue
    :reader endOfQueue
    :initarg :endOfQueue
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

(cl:defclass addToQueue-request (<addToQueue-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <addToQueue-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'addToQueue-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pa10controller-srv:<addToQueue-request> is deprecated: use pa10controller-srv:addToQueue-request instead.")))

(cl:ensure-generic-function 'gripper-val :lambda-list '(m))
(cl:defmethod gripper-val ((m <addToQueue-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pa10controller-srv:gripper-val is deprecated.  Use pa10controller-srv:gripper instead.")
  (gripper m))

(cl:ensure-generic-function 'endOfQueue-val :lambda-list '(m))
(cl:defmethod endOfQueue-val ((m <addToQueue-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pa10controller-srv:endOfQueue-val is deprecated.  Use pa10controller-srv:endOfQueue instead.")
  (endOfQueue m))

(cl:ensure-generic-function 'positions-val :lambda-list '(m))
(cl:defmethod positions-val ((m <addToQueue-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pa10controller-srv:positions-val is deprecated.  Use pa10controller-srv:positions instead.")
  (positions m))

(cl:ensure-generic-function 'commands-val :lambda-list '(m))
(cl:defmethod commands-val ((m <addToQueue-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pa10controller-srv:commands-val is deprecated.  Use pa10controller-srv:commands instead.")
  (commands m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <addToQueue-request>) ostream)
  "Serializes a message object of type '<addToQueue-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'gripper) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'endOfQueue) 1 0)) ostream)
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <addToQueue-request>) istream)
  "Deserializes a message object of type '<addToQueue-request>"
    (cl:setf (cl:slot-value msg 'gripper) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'endOfQueue) (cl:not (cl:zerop (cl:read-byte istream))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<addToQueue-request>)))
  "Returns string type for a service object of type '<addToQueue-request>"
  "pa10controller/addToQueueRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'addToQueue-request)))
  "Returns string type for a service object of type 'addToQueue-request"
  "pa10controller/addToQueueRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<addToQueue-request>)))
  "Returns md5sum for a message object of type '<addToQueue-request>"
  "3c31d885a63f71726d73c88c92dde354")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'addToQueue-request)))
  "Returns md5sum for a message object of type 'addToQueue-request"
  "3c31d885a63f71726d73c88c92dde354")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<addToQueue-request>)))
  "Returns full string definition for message of type '<addToQueue-request>"
  (cl:format cl:nil "~%~%bool gripper~%bool endOfQueue~%float32[7] positions~%float32[7] commands~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'addToQueue-request)))
  "Returns full string definition for message of type 'addToQueue-request"
  (cl:format cl:nil "~%~%bool gripper~%bool endOfQueue~%float32[7] positions~%float32[7] commands~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <addToQueue-request>))
  (cl:+ 0
     1
     1
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'positions) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'commands) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <addToQueue-request>))
  "Converts a ROS message object to a list"
  (cl:list 'addToQueue-request
    (cl:cons ':gripper (gripper msg))
    (cl:cons ':endOfQueue (endOfQueue msg))
    (cl:cons ':positions (positions msg))
    (cl:cons ':commands (commands msg))
))
;//! \htmlinclude addToQueue-response.msg.html

(cl:defclass <addToQueue-response> (roslisp-msg-protocol:ros-message)
  ((sucess
    :reader sucess
    :initarg :sucess
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass addToQueue-response (<addToQueue-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <addToQueue-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'addToQueue-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pa10controller-srv:<addToQueue-response> is deprecated: use pa10controller-srv:addToQueue-response instead.")))

(cl:ensure-generic-function 'sucess-val :lambda-list '(m))
(cl:defmethod sucess-val ((m <addToQueue-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pa10controller-srv:sucess-val is deprecated.  Use pa10controller-srv:sucess instead.")
  (sucess m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <addToQueue-response>) ostream)
  "Serializes a message object of type '<addToQueue-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'sucess) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <addToQueue-response>) istream)
  "Deserializes a message object of type '<addToQueue-response>"
    (cl:setf (cl:slot-value msg 'sucess) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<addToQueue-response>)))
  "Returns string type for a service object of type '<addToQueue-response>"
  "pa10controller/addToQueueResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'addToQueue-response)))
  "Returns string type for a service object of type 'addToQueue-response"
  "pa10controller/addToQueueResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<addToQueue-response>)))
  "Returns md5sum for a message object of type '<addToQueue-response>"
  "3c31d885a63f71726d73c88c92dde354")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'addToQueue-response)))
  "Returns md5sum for a message object of type 'addToQueue-response"
  "3c31d885a63f71726d73c88c92dde354")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<addToQueue-response>)))
  "Returns full string definition for message of type '<addToQueue-response>"
  (cl:format cl:nil "~%~%bool sucess~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'addToQueue-response)))
  "Returns full string definition for message of type 'addToQueue-response"
  (cl:format cl:nil "~%~%bool sucess~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <addToQueue-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <addToQueue-response>))
  "Converts a ROS message object to a list"
  (cl:list 'addToQueue-response
    (cl:cons ':sucess (sucess msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'addToQueue)))
  'addToQueue-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'addToQueue)))
  'addToQueue-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'addToQueue)))
  "Returns string type for a service object of type '<addToQueue>"
  "pa10controller/addToQueue")