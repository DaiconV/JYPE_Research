;; Auto-generated. Do not edit!


(when (boundp 'pg70::Home)
  (if (not (find-package "PG70"))
    (make-package "PG70"))
  (shadow 'Home (find-package "PG70")))
(unless (find-package "PG70::HOME")
  (make-package "PG70::HOME"))
(unless (find-package "PG70::HOMEREQUEST")
  (make-package "PG70::HOMEREQUEST"))
(unless (find-package "PG70::HOMERESPONSE")
  (make-package "PG70::HOMERESPONSE"))

(in-package "ROS")





(defclass pg70::HomeRequest
  :super ros::object
  :slots ())

(defmethod pg70::HomeRequest
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

(defclass pg70::HomeResponse
  :super ros::object
  :slots (_success ))

(defmethod pg70::HomeResponse
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

(defclass pg70::Home
  :super ros::object
  :slots ())

(setf (get pg70::Home :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get pg70::Home :datatype-) "pg70/Home")
(setf (get pg70::Home :request) pg70::HomeRequest)
(setf (get pg70::Home :response) pg70::HomeResponse)

(defmethod pg70::HomeRequest
  (:response () (instance pg70::HomeResponse :init)))

(setf (get pg70::HomeRequest :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get pg70::HomeRequest :datatype-) "pg70/HomeRequest")
(setf (get pg70::HomeRequest :definition-)
      "
---
bool success

")

(setf (get pg70::HomeResponse :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get pg70::HomeResponse :datatype-) "pg70/HomeResponse")
(setf (get pg70::HomeResponse :definition-)
      "
---
bool success

")



(provide :pg70/Home "358e233cde0c8a8bcfea4ce193f8fc15")


