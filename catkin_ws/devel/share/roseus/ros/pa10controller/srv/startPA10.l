;; Auto-generated. Do not edit!


(when (boundp 'pa10controller::startPA10)
  (if (not (find-package "PA10CONTROLLER"))
    (make-package "PA10CONTROLLER"))
  (shadow 'startPA10 (find-package "PA10CONTROLLER")))
(unless (find-package "PA10CONTROLLER::STARTPA10")
  (make-package "PA10CONTROLLER::STARTPA10"))
(unless (find-package "PA10CONTROLLER::STARTPA10REQUEST")
  (make-package "PA10CONTROLLER::STARTPA10REQUEST"))
(unless (find-package "PA10CONTROLLER::STARTPA10RESPONSE")
  (make-package "PA10CONTROLLER::STARTPA10RESPONSE"))

(in-package "ROS")





(defclass pa10controller::startPA10Request
  :super ros::object
  :slots ())

(defmethod pa10controller::startPA10Request
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

(defclass pa10controller::startPA10Response
  :super ros::object
  :slots (_complete ))

(defmethod pa10controller::startPA10Response
  (:init
   (&key
    ((:complete __complete) nil)
    )
   (send-super :init)
   (setq _complete __complete)
   self)
  (:complete
   (&optional __complete)
   (if __complete (setq _complete __complete)) _complete)
  (:serialization-length
   ()
   (+
    ;; bool _complete
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _complete
       (if _complete (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _complete
     (setq _complete (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass pa10controller::startPA10
  :super ros::object
  :slots ())

(setf (get pa10controller::startPA10 :md5sum-) "9d8061d2347621a6ed88451e28811cc7")
(setf (get pa10controller::startPA10 :datatype-) "pa10controller/startPA10")
(setf (get pa10controller::startPA10 :request) pa10controller::startPA10Request)
(setf (get pa10controller::startPA10 :response) pa10controller::startPA10Response)

(defmethod pa10controller::startPA10Request
  (:response () (instance pa10controller::startPA10Response :init)))

(setf (get pa10controller::startPA10Request :md5sum-) "9d8061d2347621a6ed88451e28811cc7")
(setf (get pa10controller::startPA10Request :datatype-) "pa10controller/startPA10Request")
(setf (get pa10controller::startPA10Request :definition-)
      "---
bool complete

")

(setf (get pa10controller::startPA10Response :md5sum-) "9d8061d2347621a6ed88451e28811cc7")
(setf (get pa10controller::startPA10Response :datatype-) "pa10controller/startPA10Response")
(setf (get pa10controller::startPA10Response :definition-)
      "---
bool complete

")



(provide :pa10controller/startPA10 "9d8061d2347621a6ed88451e28811cc7")


