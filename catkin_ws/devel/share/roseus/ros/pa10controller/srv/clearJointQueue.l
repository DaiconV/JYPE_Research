;; Auto-generated. Do not edit!


(when (boundp 'pa10controller::clearJointQueue)
  (if (not (find-package "PA10CONTROLLER"))
    (make-package "PA10CONTROLLER"))
  (shadow 'clearJointQueue (find-package "PA10CONTROLLER")))
(unless (find-package "PA10CONTROLLER::CLEARJOINTQUEUE")
  (make-package "PA10CONTROLLER::CLEARJOINTQUEUE"))
(unless (find-package "PA10CONTROLLER::CLEARJOINTQUEUEREQUEST")
  (make-package "PA10CONTROLLER::CLEARJOINTQUEUEREQUEST"))
(unless (find-package "PA10CONTROLLER::CLEARJOINTQUEUERESPONSE")
  (make-package "PA10CONTROLLER::CLEARJOINTQUEUERESPONSE"))

(in-package "ROS")





(intern "*CMD_STOP*" (find-package "PA10CONTROLLER::CLEARJOINTQUEUEREQUEST"))
(shadow '*CMD_STOP* (find-package "PA10CONTROLLER::CLEARJOINTQUEUEREQUEST"))
(defconstant pa10controller::clearJointQueueRequest::*CMD_STOP* 1)
(intern "*CMD_FORWARD*" (find-package "PA10CONTROLLER::CLEARJOINTQUEUEREQUEST"))
(shadow '*CMD_FORWARD* (find-package "PA10CONTROLLER::CLEARJOINTQUEUEREQUEST"))
(defconstant pa10controller::clearJointQueueRequest::*CMD_FORWARD* 2)
(intern "*CMD_REVERSE*" (find-package "PA10CONTROLLER::CLEARJOINTQUEUEREQUEST"))
(shadow '*CMD_REVERSE* (find-package "PA10CONTROLLER::CLEARJOINTQUEUEREQUEST"))
(defconstant pa10controller::clearJointQueueRequest::*CMD_REVERSE* 3)
(intern "*CMD_GRIP*" (find-package "PA10CONTROLLER::CLEARJOINTQUEUEREQUEST"))
(shadow '*CMD_GRIP* (find-package "PA10CONTROLLER::CLEARJOINTQUEUEREQUEST"))
(defconstant pa10controller::clearJointQueueRequest::*CMD_GRIP* 4)
(intern "*CMD_RELEASE*" (find-package "PA10CONTROLLER::CLEARJOINTQUEUEREQUEST"))
(shadow '*CMD_RELEASE* (find-package "PA10CONTROLLER::CLEARJOINTQUEUEREQUEST"))
(defconstant pa10controller::clearJointQueueRequest::*CMD_RELEASE* 5)
(defclass pa10controller::clearJointQueueRequest
  :super ros::object
  :slots (_command ))

(defmethod pa10controller::clearJointQueueRequest
  (:init
   (&key
    ((:command __command) 0)
    )
   (send-super :init)
   (setq _command (round __command))
   self)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:serialization-length
   ()
   (+
    ;; int8 _command
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _command
       (write-byte _command s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _command
     (setq _command (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _command 127) (setq _command (- _command 256)))
   ;;
   self)
  )

(defclass pa10controller::clearJointQueueResponse
  :super ros::object
  :slots (_result ))

(defmethod pa10controller::clearJointQueueResponse
  (:init
   (&key
    ((:result __result) nil)
    )
   (send-super :init)
   (setq _result __result)
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; bool _result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass pa10controller::clearJointQueue
  :super ros::object
  :slots ())

(setf (get pa10controller::clearJointQueue :md5sum-) "c825eadd789321366b3e11633a4f982b")
(setf (get pa10controller::clearJointQueue :datatype-) "pa10controller/clearJointQueue")
(setf (get pa10controller::clearJointQueue :request) pa10controller::clearJointQueueRequest)
(setf (get pa10controller::clearJointQueue :response) pa10controller::clearJointQueueResponse)

(defmethod pa10controller::clearJointQueueRequest
  (:response () (instance pa10controller::clearJointQueueResponse :init)))

(setf (get pa10controller::clearJointQueueRequest :md5sum-) "c825eadd789321366b3e11633a4f982b")
(setf (get pa10controller::clearJointQueueRequest :datatype-) "pa10controller/clearJointQueueRequest")
(setf (get pa10controller::clearJointQueueRequest :definition-)
      "
int8 CMD_STOP=1
int8 CMD_FORWARD=2
int8 CMD_REVERSE=3
int8 CMD_GRIP=4
int8 CMD_RELEASE=5


int8 command
---


bool result

")

(setf (get pa10controller::clearJointQueueResponse :md5sum-) "c825eadd789321366b3e11633a4f982b")
(setf (get pa10controller::clearJointQueueResponse :datatype-) "pa10controller/clearJointQueueResponse")
(setf (get pa10controller::clearJointQueueResponse :definition-)
      "
int8 CMD_STOP=1
int8 CMD_FORWARD=2
int8 CMD_REVERSE=3
int8 CMD_GRIP=4
int8 CMD_RELEASE=5


int8 command
---


bool result

")



(provide :pa10controller/clearJointQueue "c825eadd789321366b3e11633a4f982b")


