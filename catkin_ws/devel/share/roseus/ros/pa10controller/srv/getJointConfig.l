;; Auto-generated. Do not edit!


(when (boundp 'pa10controller::getJointConfig)
  (if (not (find-package "PA10CONTROLLER"))
    (make-package "PA10CONTROLLER"))
  (shadow 'getJointConfig (find-package "PA10CONTROLLER")))
(unless (find-package "PA10CONTROLLER::GETJOINTCONFIG")
  (make-package "PA10CONTROLLER::GETJOINTCONFIG"))
(unless (find-package "PA10CONTROLLER::GETJOINTCONFIGREQUEST")
  (make-package "PA10CONTROLLER::GETJOINTCONFIGREQUEST"))
(unless (find-package "PA10CONTROLLER::GETJOINTCONFIGRESPONSE")
  (make-package "PA10CONTROLLER::GETJOINTCONFIGRESPONSE"))

(in-package "ROS")





(defclass pa10controller::getJointConfigRequest
  :super ros::object
  :slots ())

(defmethod pa10controller::getJointConfigRequest
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

(defclass pa10controller::getJointConfigResponse
  :super ros::object
  :slots (_positions _commands ))

(defmethod pa10controller::getJointConfigResponse
  (:init
   (&key
    ((:positions __positions) (make-array 7 :initial-element 0.0 :element-type :float))
    ((:commands __commands) (make-array 7 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _positions __positions)
   (setq _commands __commands)
   self)
  (:positions
   (&optional __positions)
   (if __positions (setq _positions __positions)) _positions)
  (:commands
   (&optional __commands)
   (if __commands (setq _commands __commands)) _commands)
  (:serialization-length
   ()
   (+
    ;; float32[7] _positions
    (* 4    7)
    ;; float32[7] _commands
    (* 4    7)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[7] _positions
     (dotimes (i 7)
       (sys::poke (elt _positions i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[7] _commands
     (dotimes (i 7)
       (sys::poke (elt _commands i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[7] _positions
   (dotimes (i (length _positions))
     (setf (elt _positions i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32[7] _commands
   (dotimes (i (length _commands))
     (setf (elt _commands i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;;
   self)
  )

(defclass pa10controller::getJointConfig
  :super ros::object
  :slots ())

(setf (get pa10controller::getJointConfig :md5sum-) "8b59e38f5296df3482c671e5301fa089")
(setf (get pa10controller::getJointConfig :datatype-) "pa10controller/getJointConfig")
(setf (get pa10controller::getJointConfig :request) pa10controller::getJointConfigRequest)
(setf (get pa10controller::getJointConfig :response) pa10controller::getJointConfigResponse)

(defmethod pa10controller::getJointConfigRequest
  (:response () (instance pa10controller::getJointConfigResponse :init)))

(setf (get pa10controller::getJointConfigRequest :md5sum-) "8b59e38f5296df3482c671e5301fa089")
(setf (get pa10controller::getJointConfigRequest :datatype-) "pa10controller/getJointConfigRequest")
(setf (get pa10controller::getJointConfigRequest :definition-)
      "

---


float32[7] positions
float32[7] commands
")

(setf (get pa10controller::getJointConfigResponse :md5sum-) "8b59e38f5296df3482c671e5301fa089")
(setf (get pa10controller::getJointConfigResponse :datatype-) "pa10controller/getJointConfigResponse")
(setf (get pa10controller::getJointConfigResponse :definition-)
      "

---


float32[7] positions
float32[7] commands
")



(provide :pa10controller/getJointConfig "8b59e38f5296df3482c671e5301fa089")


