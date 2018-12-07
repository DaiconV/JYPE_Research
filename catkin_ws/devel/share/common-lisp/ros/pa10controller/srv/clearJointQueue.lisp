; Auto-generated. Do not edit!


(cl:in-package pa10controller-srv)


;//! \htmlinclude clearJointQueue-request.msg.html

(cl:defclass <clearJointQueue-request> (roslisp-msg-protocol:ros-message)
  ((command
    :reader command
    :initarg :command
    :type cl:fixnum
    :initform 0))
)

(cl:defclass clearJointQueue-request (<clearJointQueue-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <clearJointQueue-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'clearJointQueue-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pa10controller-srv:<clearJointQueue-request> is deprecated: use pa10controller-srv:clearJointQueue-request instead.")))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <clearJointQueue-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pa10controller-srv:command-val is deprecated.  Use pa10controller-srv:command instead.")
  (command m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<clearJointQueue-request>)))
    "Constants for message type '<clearJointQueue-request>"
  '((:CMD_STOP . 1)
    (:CMD_FORWARD . 2)
    (:CMD_REVERSE . 3)
    (:CMD_GRIP . 4)
    (:CMD_RELEASE . 5))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'clearJointQueue-request)))
    "Constants for message type 'clearJointQueue-request"
  '((:CMD_STOP . 1)
    (:CMD_FORWARD . 2)
    (:CMD_REVERSE . 3)
    (:CMD_GRIP . 4)
    (:CMD_RELEASE . 5))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <clearJointQueue-request>) ostream)
  "Serializes a message object of type '<clearJointQueue-request>"
  (cl:let* ((signed (cl:slot-value msg 'command)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <clearJointQueue-request>) istream)
  "Deserializes a message object of type '<clearJointQueue-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'command) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<clearJointQueue-request>)))
  "Returns string type for a service object of type '<clearJointQueue-request>"
  "pa10controller/clearJointQueueRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'clearJointQueue-request)))
  "Returns string type for a service object of type 'clearJointQueue-request"
  "pa10controller/clearJointQueueRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<clearJointQueue-request>)))
  "Returns md5sum for a message object of type '<clearJointQueue-request>"
  "c825eadd789321366b3e11633a4f982b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'clearJointQueue-request)))
  "Returns md5sum for a message object of type 'clearJointQueue-request"
  "c825eadd789321366b3e11633a4f982b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<clearJointQueue-request>)))
  "Returns full string definition for message of type '<clearJointQueue-request>"
  (cl:format cl:nil "~%int8 CMD_STOP=1~%int8 CMD_FORWARD=2~%int8 CMD_REVERSE=3~%int8 CMD_GRIP=4~%int8 CMD_RELEASE=5~%~%~%int8 command~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'clearJointQueue-request)))
  "Returns full string definition for message of type 'clearJointQueue-request"
  (cl:format cl:nil "~%int8 CMD_STOP=1~%int8 CMD_FORWARD=2~%int8 CMD_REVERSE=3~%int8 CMD_GRIP=4~%int8 CMD_RELEASE=5~%~%~%int8 command~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <clearJointQueue-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <clearJointQueue-request>))
  "Converts a ROS message object to a list"
  (cl:list 'clearJointQueue-request
    (cl:cons ':command (command msg))
))
;//! \htmlinclude clearJointQueue-response.msg.html

(cl:defclass <clearJointQueue-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass clearJointQueue-response (<clearJointQueue-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <clearJointQueue-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'clearJointQueue-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pa10controller-srv:<clearJointQueue-response> is deprecated: use pa10controller-srv:clearJointQueue-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <clearJointQueue-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pa10controller-srv:result-val is deprecated.  Use pa10controller-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <clearJointQueue-response>) ostream)
  "Serializes a message object of type '<clearJointQueue-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <clearJointQueue-response>) istream)
  "Deserializes a message object of type '<clearJointQueue-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<clearJointQueue-response>)))
  "Returns string type for a service object of type '<clearJointQueue-response>"
  "pa10controller/clearJointQueueResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'clearJointQueue-response)))
  "Returns string type for a service object of type 'clearJointQueue-response"
  "pa10controller/clearJointQueueResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<clearJointQueue-response>)))
  "Returns md5sum for a message object of type '<clearJointQueue-response>"
  "c825eadd789321366b3e11633a4f982b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'clearJointQueue-response)))
  "Returns md5sum for a message object of type 'clearJointQueue-response"
  "c825eadd789321366b3e11633a4f982b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<clearJointQueue-response>)))
  "Returns full string definition for message of type '<clearJointQueue-response>"
  (cl:format cl:nil "~%~%bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'clearJointQueue-response)))
  "Returns full string definition for message of type 'clearJointQueue-response"
  (cl:format cl:nil "~%~%bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <clearJointQueue-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <clearJointQueue-response>))
  "Converts a ROS message object to a list"
  (cl:list 'clearJointQueue-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'clearJointQueue)))
  'clearJointQueue-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'clearJointQueue)))
  'clearJointQueue-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'clearJointQueue)))
  "Returns string type for a service object of type '<clearJointQueue>"
  "pa10controller/clearJointQueue")