;; Auto-generated. Do not edit!


(when (boundp 'pg70::Open)
  (if (not (find-package "PG70"))
    (make-package "PG70"))
  (shadow 'Open (find-package "PG70")))
(unless (find-package "PG70::OPEN")
  (make-package "PG70::OPEN"))
(unless (find-package "PG70::OPENREQUEST")
  (make-package "PG70::OPENREQUEST"))
(unless (find-package "PG70::OPENRESPONSE")
  (make-package "PG70::OPENRESPONSE"))

(in-package "ROS")





(defclass pg70::OpenRequest
  :super ros::object
  :slots (_power ))

(defmethod pg70::OpenRequest
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

(defclass pg70::OpenResponse
  :super ros::object
  :slots (_success ))

(defmethod pg70::OpenResponse
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

(defclass pg70::Open
  :super ros::object
  :slots ())

(setf (get pg70::Open :md5sum-) "a528deecbc4be6f38cecca3041d9f6b7")
(setf (get pg70::Open :datatype-) "pg70/Open")
(setf (get pg70::Open :request) pg70::OpenRequest)
(setf (get pg70::Open :response) pg70::OpenResponse)

(defmethod pg70::OpenRequest
  (:response () (instance pg70::OpenResponse :init)))

(setf (get pg70::OpenRequest :md5sum-) "a528deecbc4be6f38cecca3041d9f6b7")
(setf (get pg70::OpenRequest :datatype-) "pg70/OpenRequest")
(setf (get pg70::OpenRequest :definition-)
      "
float32 power
---
bool success

")

(setf (get pg70::OpenResponse :md5sum-) "a528deecbc4be6f38cecca3041d9f6b7")
(setf (get pg70::OpenResponse :datatype-) "pg70/OpenResponse")
(setf (get pg70::OpenResponse :definition-)
      "
float32 power
---
bool success

")



(provide :pg70/Open "a528deecbc4be6f38cecca3041d9f6b7")


