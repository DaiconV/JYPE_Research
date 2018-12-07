;; Auto-generated. Do not edit!


(when (boundp 'pg70::Move)
  (if (not (find-package "PG70"))
    (make-package "PG70"))
  (shadow 'Move (find-package "PG70")))
(unless (find-package "PG70::MOVE")
  (make-package "PG70::MOVE"))
(unless (find-package "PG70::MOVEREQUEST")
  (make-package "PG70::MOVEREQUEST"))
(unless (find-package "PG70::MOVERESPONSE")
  (make-package "PG70::MOVERESPONSE"))

(in-package "ROS")





(defclass pg70::MoveRequest
  :super ros::object
  :slots (_pos ))

(defmethod pg70::MoveRequest
  (:init
   (&key
    ((:pos __pos) 0.0)
    )
   (send-super :init)
   (setq _pos (float __pos))
   self)
  (:pos
   (&optional __pos)
   (if __pos (setq _pos __pos)) _pos)
  (:serialization-length
   ()
   (+
    ;; float32 _pos
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _pos
       (sys::poke _pos (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _pos
     (setq _pos (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass pg70::MoveResponse
  :super ros::object
  :slots (_success ))

(defmethod pg70::MoveResponse
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

(defclass pg70::Move
  :super ros::object
  :slots ())

(setf (get pg70::Move :md5sum-) "6e8de7de8f3900ccfb2f0286718a113d")
(setf (get pg70::Move :datatype-) "pg70/Move")
(setf (get pg70::Move :request) pg70::MoveRequest)
(setf (get pg70::Move :response) pg70::MoveResponse)

(defmethod pg70::MoveRequest
  (:response () (instance pg70::MoveResponse :init)))

(setf (get pg70::MoveRequest :md5sum-) "6e8de7de8f3900ccfb2f0286718a113d")
(setf (get pg70::MoveRequest :datatype-) "pg70/MoveRequest")
(setf (get pg70::MoveRequest :definition-)
      "
float32 pos
---
bool success

")

(setf (get pg70::MoveResponse :md5sum-) "6e8de7de8f3900ccfb2f0286718a113d")
(setf (get pg70::MoveResponse :datatype-) "pg70/MoveResponse")
(setf (get pg70::MoveResponse :definition-)
      "
float32 pos
---
bool success

")



(provide :pg70/Move "6e8de7de8f3900ccfb2f0286718a113d")


