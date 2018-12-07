; Auto-generated. Do not edit!


(cl:in-package pg70-srv)


;//! \htmlinclude Open-request.msg.html

(cl:defclass <Open-request> (roslisp-msg-protocol:ros-message)
  ((power
    :reader power
    :initarg :power
    :type cl:float
    :initform 0.0))
)

(cl:defclass Open-request (<Open-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Open-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Open-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pg70-srv:<Open-request> is deprecated: use pg70-srv:Open-request instead.")))

(cl:ensure-generic-function 'power-val :lambda-list '(m))
(cl:defmethod power-val ((m <Open-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pg70-srv:power-val is deprecated.  Use pg70-srv:power instead.")
  (power m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Open-request>) ostream)
  "Serializes a message object of type '<Open-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'power))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Open-request>) istream)
  "Deserializes a message object of type '<Open-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'power) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Open-request>)))
  "Returns string type for a service object of type '<Open-request>"
  "pg70/OpenRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Open-request)))
  "Returns string type for a service object of type 'Open-request"
  "pg70/OpenRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Open-request>)))
  "Returns md5sum for a message object of type '<Open-request>"
  "a528deecbc4be6f38cecca3041d9f6b7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Open-request)))
  "Returns md5sum for a message object of type 'Open-request"
  "a528deecbc4be6f38cecca3041d9f6b7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Open-request>)))
  "Returns full string definition for message of type '<Open-request>"
  (cl:format cl:nil "~%float32 power~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Open-request)))
  "Returns full string definition for message of type 'Open-request"
  (cl:format cl:nil "~%float32 power~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Open-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Open-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Open-request
    (cl:cons ':power (power msg))
))
;//! \htmlinclude Open-response.msg.html

(cl:defclass <Open-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Open-response (<Open-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Open-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Open-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pg70-srv:<Open-response> is deprecated: use pg70-srv:Open-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <Open-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pg70-srv:success-val is deprecated.  Use pg70-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Open-response>) ostream)
  "Serializes a message object of type '<Open-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Open-response>) istream)
  "Deserializes a message object of type '<Open-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Open-response>)))
  "Returns string type for a service object of type '<Open-response>"
  "pg70/OpenResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Open-response)))
  "Returns string type for a service object of type 'Open-response"
  "pg70/OpenResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Open-response>)))
  "Returns md5sum for a message object of type '<Open-response>"
  "a528deecbc4be6f38cecca3041d9f6b7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Open-response)))
  "Returns md5sum for a message object of type 'Open-response"
  "a528deecbc4be6f38cecca3041d9f6b7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Open-response>)))
  "Returns full string definition for message of type '<Open-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Open-response)))
  "Returns full string definition for message of type 'Open-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Open-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Open-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Open-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Open)))
  'Open-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Open)))
  'Open-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Open)))
  "Returns string type for a service object of type '<Open>"
  "pg70/Open")