; Auto-generated. Do not edit!


(cl:in-package pa10controller-srv)


;//! \htmlinclude startQueue-request.msg.html

(cl:defclass <startQueue-request> (roslisp-msg-protocol:ros-message)
  ((command
    :reader command
    :initarg :command
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass startQueue-request (<startQueue-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <startQueue-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'startQueue-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pa10controller-srv:<startQueue-request> is deprecated: use pa10controller-srv:startQueue-request instead.")))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <startQueue-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pa10controller-srv:command-val is deprecated.  Use pa10controller-srv:command instead.")
  (command m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <startQueue-request>) ostream)
  "Serializes a message object of type '<startQueue-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'command) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <startQueue-request>) istream)
  "Deserializes a message object of type '<startQueue-request>"
    (cl:setf (cl:slot-value msg 'command) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<startQueue-request>)))
  "Returns string type for a service object of type '<startQueue-request>"
  "pa10controller/startQueueRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'startQueue-request)))
  "Returns string type for a service object of type 'startQueue-request"
  "pa10controller/startQueueRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<startQueue-request>)))
  "Returns md5sum for a message object of type '<startQueue-request>"
  "a044a606792641e1aa8c4251ea3f515b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'startQueue-request)))
  "Returns md5sum for a message object of type 'startQueue-request"
  "a044a606792641e1aa8c4251ea3f515b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<startQueue-request>)))
  "Returns full string definition for message of type '<startQueue-request>"
  (cl:format cl:nil "~%~%~%bool command~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'startQueue-request)))
  "Returns full string definition for message of type 'startQueue-request"
  (cl:format cl:nil "~%~%~%bool command~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <startQueue-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <startQueue-request>))
  "Converts a ROS message object to a list"
  (cl:list 'startQueue-request
    (cl:cons ':command (command msg))
))
;//! \htmlinclude startQueue-response.msg.html

(cl:defclass <startQueue-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass startQueue-response (<startQueue-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <startQueue-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'startQueue-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pa10controller-srv:<startQueue-response> is deprecated: use pa10controller-srv:startQueue-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <startQueue-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pa10controller-srv:result-val is deprecated.  Use pa10controller-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <startQueue-response>) ostream)
  "Serializes a message object of type '<startQueue-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <startQueue-response>) istream)
  "Deserializes a message object of type '<startQueue-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<startQueue-response>)))
  "Returns string type for a service object of type '<startQueue-response>"
  "pa10controller/startQueueResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'startQueue-response)))
  "Returns string type for a service object of type 'startQueue-response"
  "pa10controller/startQueueResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<startQueue-response>)))
  "Returns md5sum for a message object of type '<startQueue-response>"
  "a044a606792641e1aa8c4251ea3f515b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'startQueue-response)))
  "Returns md5sum for a message object of type 'startQueue-response"
  "a044a606792641e1aa8c4251ea3f515b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<startQueue-response>)))
  "Returns full string definition for message of type '<startQueue-response>"
  (cl:format cl:nil "~%~%bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'startQueue-response)))
  "Returns full string definition for message of type 'startQueue-response"
  (cl:format cl:nil "~%~%bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <startQueue-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <startQueue-response>))
  "Converts a ROS message object to a list"
  (cl:list 'startQueue-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'startQueue)))
  'startQueue-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'startQueue)))
  'startQueue-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'startQueue)))
  "Returns string type for a service object of type '<startQueue>"
  "pa10controller/startQueue")