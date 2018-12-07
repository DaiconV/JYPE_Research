; Auto-generated. Do not edit!


(cl:in-package pa10controller-srv)


;//! \htmlinclude startPA10-request.msg.html

(cl:defclass <startPA10-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass startPA10-request (<startPA10-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <startPA10-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'startPA10-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pa10controller-srv:<startPA10-request> is deprecated: use pa10controller-srv:startPA10-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <startPA10-request>) ostream)
  "Serializes a message object of type '<startPA10-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <startPA10-request>) istream)
  "Deserializes a message object of type '<startPA10-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<startPA10-request>)))
  "Returns string type for a service object of type '<startPA10-request>"
  "pa10controller/startPA10Request")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'startPA10-request)))
  "Returns string type for a service object of type 'startPA10-request"
  "pa10controller/startPA10Request")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<startPA10-request>)))
  "Returns md5sum for a message object of type '<startPA10-request>"
  "9d8061d2347621a6ed88451e28811cc7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'startPA10-request)))
  "Returns md5sum for a message object of type 'startPA10-request"
  "9d8061d2347621a6ed88451e28811cc7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<startPA10-request>)))
  "Returns full string definition for message of type '<startPA10-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'startPA10-request)))
  "Returns full string definition for message of type 'startPA10-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <startPA10-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <startPA10-request>))
  "Converts a ROS message object to a list"
  (cl:list 'startPA10-request
))
;//! \htmlinclude startPA10-response.msg.html

(cl:defclass <startPA10-response> (roslisp-msg-protocol:ros-message)
  ((complete
    :reader complete
    :initarg :complete
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass startPA10-response (<startPA10-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <startPA10-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'startPA10-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pa10controller-srv:<startPA10-response> is deprecated: use pa10controller-srv:startPA10-response instead.")))

(cl:ensure-generic-function 'complete-val :lambda-list '(m))
(cl:defmethod complete-val ((m <startPA10-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pa10controller-srv:complete-val is deprecated.  Use pa10controller-srv:complete instead.")
  (complete m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <startPA10-response>) ostream)
  "Serializes a message object of type '<startPA10-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'complete) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <startPA10-response>) istream)
  "Deserializes a message object of type '<startPA10-response>"
    (cl:setf (cl:slot-value msg 'complete) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<startPA10-response>)))
  "Returns string type for a service object of type '<startPA10-response>"
  "pa10controller/startPA10Response")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'startPA10-response)))
  "Returns string type for a service object of type 'startPA10-response"
  "pa10controller/startPA10Response")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<startPA10-response>)))
  "Returns md5sum for a message object of type '<startPA10-response>"
  "9d8061d2347621a6ed88451e28811cc7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'startPA10-response)))
  "Returns md5sum for a message object of type 'startPA10-response"
  "9d8061d2347621a6ed88451e28811cc7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<startPA10-response>)))
  "Returns full string definition for message of type '<startPA10-response>"
  (cl:format cl:nil "bool complete~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'startPA10-response)))
  "Returns full string definition for message of type 'startPA10-response"
  (cl:format cl:nil "bool complete~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <startPA10-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <startPA10-response>))
  "Converts a ROS message object to a list"
  (cl:list 'startPA10-response
    (cl:cons ':complete (complete msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'startPA10)))
  'startPA10-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'startPA10)))
  'startPA10-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'startPA10)))
  "Returns string type for a service object of type '<startPA10>"
  "pa10controller/startPA10")