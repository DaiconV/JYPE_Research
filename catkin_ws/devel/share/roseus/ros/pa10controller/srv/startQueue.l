;; Auto-generated. Do not edit!


(when (boundp 'pa10controller::startQueue)
  (if (not (find-package "PA10CONTROLLER"))
    (make-package "PA10CONTROLLER"))
  (shadow 'startQueue (find-package "PA10CONTROLLER")))
(unless (find-package "PA10CONTROLLER::STARTQUEUE")
  (make-package "PA10CONTROLLER::STARTQUEUE"))
(unless (find-package "PA10CONTROLLER::STARTQUEUEREQUEST")
  (make-package "PA10CONTROLLER::STARTQUEUEREQUEST"))
(unless (find-package "PA10CONTROLLER::STARTQUEUERESPONSE")
  (make-package "PA10CONTROLLER::STARTQUEUERESPONSE"))

(in-package "ROS")





(defclass pa10controller::startQueueRequest
  :super ros::object
  :slots (_command ))

(defmethod pa10controller::startQueueRequest
  (:init
   (&key
    ((:command __command) nil)
    )
   (send-super :init)
   (setq _command __command)
   self)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:serialization-length
   ()
   (+
    ;; bool _command
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _command
       (if _command (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _command
     (setq _command (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass pa10controller::startQueueResponse
  :super ros::object
  :slots (_result ))

(defmethod pa10controller::startQueueResponse
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

(defclass pa10controller::startQueue
  :super ros::object
  :slots ())

(setf (get pa10controller::startQueue :md5sum-) "a044a606792641e1aa8c4251ea3f515b")
(setf (get pa10controller::startQueue :datatype-) "pa10controller/startQueue")
(setf (get pa10controller::startQueue :request) pa10controller::startQueueRequest)
(setf (get pa10controller::startQueue :response) pa10controller::startQueueResponse)

(defmethod pa10controller::startQueueRequest
  (:response () (instance pa10controller::startQueueResponse :init)))

(setf (get pa10controller::startQueueRequest :md5sum-) "a044a606792641e1aa8c4251ea3f515b")
(setf (get pa10controller::startQueueRequest :datatype-) "pa10controller/startQueueRequest")
(setf (get pa10controller::startQueueRequest :definition-)
      "


bool command
---


bool result

")

(setf (get pa10controller::startQueueResponse :md5sum-) "a044a606792641e1aa8c4251ea3f515b")
(setf (get pa10controller::startQueueResponse :datatype-) "pa10controller/startQueueResponse")
(setf (get pa10controller::startQueueResponse :definition-)
      "


bool command
---


bool result

")



(provide :pa10controller/startQueue "a044a606792641e1aa8c4251ea3f515b")


