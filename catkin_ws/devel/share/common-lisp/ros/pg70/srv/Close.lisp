; Auto-generated. Do not edit!


(cl:in-package pg70-srv)


;//! \htmlinclude Close-request.msg.html

(cl:defclass <Close-request> (roslisp-msg-protocol:ros-message)
  ((power
    :reader power
    :initarg :power
    :type cl:float
    :initform 0.0))
)

(cl:defclass Close-request (<Close-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Close-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Close-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pg70-srv:<Close-request> is deprecated: use pg70-srv:Close-request instead.")))

(cl:ensure-generic-function 'power-val :lambda-list '(m))
(cl:defmethod power-val ((m <Close-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pg70-srv:power-val is deprecated.  Use pg70-srv:power instead.")
  (power m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Close-request>) ostream)
  "Serializes a message object of type '<Close-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'power))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Close-request>) istream)
  "Deserializes a message object of type '<Close-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'power) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Close-request>)))
  "Returns string type for a service object of type '<Close-request>"
  "pg70/CloseRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Close-request)))
  "Returns string type for a service object of type 'Close-request"
  "pg70/CloseRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Close-request>)))
  "Returns md5sum for a message object of type '<Close-request>"
  "a528deecbc4be6f38cecca3041d9f6b7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Close-request)))
  "Returns md5sum for a message object of type 'Close-request"
  "a528deecbc4be6f38cecca3041d9f6b7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Close-request>)))
  "Returns full string definition for message of type '<Close-request>"
  (cl:format cl:nil "~%float32 power~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Close-request)))
  "Returns full string definition for message of type 'Close-request"
  (cl:format cl:nil "~%float32 power~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Close-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Close-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Close-request
    (cl:cons ':power (power msg))
))
;//! \htmlinclude Close-response.msg.html

(cl:defclass <Close-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Close-response (<Close-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Close-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Close-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pg70-srv:<Close-response> is deprecated: use pg70-srv:Close-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <Close-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pg70-srv:success-val is deprecated.  Use pg70-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Close-response>) ostream)
  "Serializes a message object of type '<Close-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Close-response>) istream)
  "Deserializes a message object of type '<Close-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Close-response>)))
  "Returns string type for a service object of type '<Close-response>"
  "pg70/CloseResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Close-response)))
  "Returns string type for a service object of type 'Close-response"
  "pg70/CloseResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Close-response>)))
  "Returns md5sum for a message object of type '<Close-response>"
  "a528deecbc4be6f38cecca3041d9f6b7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Close-response)))
  "Returns md5sum for a message object of type 'Close-response"
  "a528deecbc4be6f38cecca3041d9f6b7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Close-response>)))
  "Returns full string definition for message of type '<Close-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Close-response)))
  "Returns full string definition for message of type 'Close-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Close-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Close-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Close-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Close)))
  'Close-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Close)))
  'Close-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Close)))
  "Returns string type for a service object of type '<Close>"
  "pg70/Close")