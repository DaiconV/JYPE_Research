;; Auto-generated. Do not edit!


(when (boundp 'pg70::Stop)
  (if (not (find-package "PG70"))
    (make-package "PG70"))
  (shadow 'Stop (find-package "PG70")))
(unless (find-package "PG70::STOP")
  (make-package "PG70::STOP"))
(unless (find-package "PG70::STOPREQUEST")
  (make-package "PG70::STOPREQUEST"))
(unless (find-package "PG70::STOPRESPONSE")
  (make-package "PG70::STOPRESPONSE"))

(in-package "ROS")





(defclass pg70::StopRequest
  :super ros::object
  :slots ())

(defmethod pg70::StopRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass pg70::StopResponse
  :super ros::object
  :slots (_success ))

(defmethod pg70::StopResponse
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

(defclass pg70::Stop
  :super ros::object
  :slots ())

(setf (get pg70::Stop :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get pg70::Stop :datatype-) "pg70/Stop")
(setf (get pg70::Stop :request) pg70::StopRequest)
(setf (get pg70::Stop :response) pg70::StopResponse)

(defmethod pg70::StopRequest
  (:response () (instance pg70::StopResponse :init)))

(setf (get pg70::StopRequest :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get pg70::StopRequest :datatype-) "pg70/StopRequest")
(setf (get pg70::StopRequest :definition-)
      "
---
bool success

")

(setf (get pg70::StopResponse :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get pg70::StopResponse :datatype-) "pg70/StopResponse")
(setf (get pg70::StopResponse :definition-)
      "
---
bool success

")



(provide :pg70/Stop "358e233cde0c8a8bcfea4ce193f8fc15")


