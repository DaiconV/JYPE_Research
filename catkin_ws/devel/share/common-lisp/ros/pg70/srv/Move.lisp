; Auto-generated. Do not edit!


(cl:in-package pg70-srv)


;//! \htmlinclude Move-request.msg.html

(cl:defclass <Move-request> (roslisp-msg-protocol:ros-message)
  ((pos
    :reader pos
    :initarg :pos
    :type cl:float
    :initform 0.0))
)

(cl:defclass Move-request (<Move-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Move-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Move-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pg70-srv:<Move-request> is deprecated: use pg70-srv:Move-request instead.")))

(cl:ensure-generic-function 'pos-val :lambda-list '(m))
(cl:defmethod pos-val ((m <Move-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pg70-srv:pos-val is deprecated.  Use pg70-srv:pos instead.")
  (pos m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Move-request>) ostream)
  "Serializes a message object of type '<Move-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pos))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Move-request>) istream)
  "Deserializes a message object of type '<Move-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pos) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Move-request>)))
  "Returns string type for a service object of type '<Move-request>"
  "pg70/MoveRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Move-request)))
  "Returns string type for a service object of type 'Move-request"
  "pg70/MoveRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Move-request>)))
  "Returns md5sum for a message object of type '<Move-request>"
  "6e8de7de8f3900ccfb2f0286718a113d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Move-request)))
  "Returns md5sum for a message object of type 'Move-request"
  "6e8de7de8f3900ccfb2f0286718a113d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Move-request>)))
  "Returns full string definition for message of type '<Move-request>"
  (cl:format cl:nil "~%float32 pos~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Move-request)))
  "Returns full string definition for message of type 'Move-request"
  (cl:format cl:nil "~%float32 pos~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Move-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Move-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Move-request
    (cl:cons ':pos (pos msg))
))
;//! \htmlinclude Move-response.msg.html

(cl:defclass <Move-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Move-response (<Move-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Move-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Move-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pg70-srv:<Move-response> is deprecated: use pg70-srv:Move-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <Move-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pg70-srv:success-val is deprecated.  Use pg70-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Move-response>) ostream)
  "Serializes a message object of type '<Move-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Move-response>) istream)
  "Deserializes a message object of type '<Move-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Move-response>)))
  "Returns string type for a service object of type '<Move-response>"
  "pg70/MoveResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Move-response)))
  "Returns string type for a service object of type 'Move-response"
  "pg70/MoveResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Move-response>)))
  "Returns md5sum for a message object of type '<Move-response>"
  "6e8de7de8f3900ccfb2f0286718a113d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Move-response)))
  "Returns md5sum for a message object of type 'Move-response"
  "6e8de7de8f3900ccfb2f0286718a113d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Move-response>)))
  "Returns full string definition for message of type '<Move-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Move-response)))
  "Returns full string definition for message of type 'Move-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Move-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Move-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Move-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Move)))
  'Move-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Move)))
  'Move-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Move)))
  "Returns string type for a service object of type '<Move>"
  "pg70/Move")