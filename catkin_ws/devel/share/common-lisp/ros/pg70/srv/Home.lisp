; Auto-generated. Do not edit!


(cl:in-package pg70-srv)


;//! \htmlinclude Home-request.msg.html

(cl:defclass <Home-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Home-request (<Home-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Home-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Home-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pg70-srv:<Home-request> is deprecated: use pg70-srv:Home-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Home-request>) ostream)
  "Serializes a message object of type '<Home-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Home-request>) istream)
  "Deserializes a message object of type '<Home-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Home-request>)))
  "Returns string type for a service object of type '<Home-request>"
  "pg70/HomeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Home-request)))
  "Returns string type for a service object of type 'Home-request"
  "pg70/HomeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Home-request>)))
  "Returns md5sum for a message object of type '<Home-request>"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Home-request)))
  "Returns md5sum for a message object of type 'Home-request"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Home-request>)))
  "Returns full string definition for message of type '<Home-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Home-request)))
  "Returns full string definition for message of type 'Home-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Home-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Home-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Home-request
))
;//! \htmlinclude Home-response.msg.html

(cl:defclass <Home-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Home-response (<Home-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Home-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Home-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pg70-srv:<Home-response> is deprecated: use pg70-srv:Home-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <Home-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pg70-srv:success-val is deprecated.  Use pg70-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Home-response>) ostream)
  "Serializes a message object of type '<Home-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Home-response>) istream)
  "Deserializes a message object of type '<Home-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Home-response>)))
  "Returns string type for a service object of type '<Home-response>"
  "pg70/HomeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Home-response)))
  "Returns string type for a service object of type 'Home-response"
  "pg70/HomeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Home-response>)))
  "Returns md5sum for a message object of type '<Home-response>"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Home-response)))
  "Returns md5sum for a message object of type 'Home-response"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Home-response>)))
  "Returns full string definition for message of type '<Home-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Home-response)))
  "Returns full string definition for message of type 'Home-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Home-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Home-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Home-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Home)))
  'Home-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Home)))
  'Home-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Home)))
  "Returns string type for a service object of type '<Home>"
  "pg70/Home")