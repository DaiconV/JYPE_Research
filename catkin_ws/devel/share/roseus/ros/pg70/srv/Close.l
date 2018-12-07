;; Auto-generated. Do not edit!


(when (boundp 'pg70::Close)
  (if (not (find-package "PG70"))
    (make-package "PG70"))
  (shadow 'Close (find-package "PG70")))
(unless (find-package "PG70::CLOSE")
  (make-package "PG70::CLOSE"))
(unless (find-package "PG70::CLOSEREQUEST")
  (make-package "PG70::CLOSEREQUEST"))
(unless (find-package "PG70::CLOSERESPONSE")
  (make-package "PG70::CLOSERESPONSE"))

(in-package "ROS")





(defclass pg70::CloseRequest
  :super ros::object
  :slots (_power ))

(defmethod pg70::CloseRequest
  (:init
   (&key
    ((:power __power) 0.0)
    )
   (send-super :init)
   (setq _power (float __power))
   self)
  (:power
   (&optional __power)
   (if __power (setq _power __power)) _power)
  (:serialization-length
   ()
   (+
    ;; float32 _power
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _power
       (sys::poke _power (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _power
     (setq _power (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass pg70::CloseResponse
  :super ros::object
  :slots (_success ))

(defmethod pg70::CloseResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass pg70::Close
  :super ros::object
  :slots ())

(setf (get pg70::Close :md5sum-) "a528deecbc4be6f38cecca3041d9f6b7")
(setf (get pg70::Close :datatype-) "pg70/Close")
(setf (get pg70::Close :request) pg70::CloseRequest)
(setf (get pg70::Close :response) pg70::CloseResponse)

(defmethod pg70::CloseRequest
  (:response () (instance pg70::CloseResponse :init)))

(setf (get pg70::CloseRequest :md5sum-) "a528deecbc4be6f38cecca3041d9f6b7")
(setf (get pg70::CloseRequest :datatype-) "pg70/CloseRequest")
(setf (get pg70::CloseRequest :definition-)
      "
float32 power
---
bool success

")

(setf (get pg70::CloseResponse :md5sum-) "a528deecbc4be6f38cecca3041d9f6b7")
(setf (get pg70::CloseResponse :datatype-) "pg70/CloseResponse")
(setf (get pg70::CloseResponse :definition-)
      "
float32 power
---
bool success

")



(provide :pg70/Close "a528deecbc4be6f38cecca3041d9f6b7")


