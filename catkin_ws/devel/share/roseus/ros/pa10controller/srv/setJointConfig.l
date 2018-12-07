;; Auto-generated. Do not edit!


(when (boundp 'pa10controller::setJointConfig)
  (if (not (find-package "PA10CONTROLLER"))
    (make-package "PA10CONTROLLER"))
  (shadow 'setJointConfig (find-package "PA10CONTROLLER")))
(unless (find-package "PA10CONTROLLER::SETJOINTCONFIG")
  (make-package "PA10CONTROLLER::SETJOINTCONFIG"))
(unless (find-package "PA10CONTROLLER::SETJOINTCONFIGREQUEST")
  (make-package "PA10CONTROLLER::SETJOINTCONFIGREQUEST"))
(unless (find-package "PA10CONTROLLER::SETJOINTCONFIGRESPONSE")
  (make-package "PA10CONTROLLER::SETJOINTCONFIGRESPONSE"))

(in-package "ROS")





(defclass pa10controller::setJointConfigRequest
  :super ros::object
  :slots (_gripper _positions _commands ))

(defmethod pa10controller::setJointConfigRequest
  (:init
   (&key
    ((:gripper __gripper) nil)
    ((:positions __positions) (make-array 7 :initial-element 0.0 :element-type :float))
    ((:commands __commands) (make-array 7 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _gripper __gripper)
   (setq _positions __positions)
   (setq _commands __commands)
   self)
  (:gripper
   (&optional __gripper)
   (if __gripper (setq _gripper __gripper)) _gripper)
  (:positions
   (&optional __positions)
   (if __positions (setq _positions __positions)) _positions)
  (:commands
   (&optional __commands)
   (if __commands (setq _commands __commands)) _commands)
  (:serialization-length
   ()
   (+
    ;; bool _gripper
    1
    ;; float32[7] _positions
    (* 4    7)
    ;; float32[7] _commands
    (* 4    7)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _gripper
       (if _gripper (write-byte -1 s) (write-byte 0 s))
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
   ;; bool _gripper
     (setq _gripper (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
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

(defclass pa10controller::setJointConfigResponse
  :super ros::object
  :slots ())

(defmethod pa10controller::setJointConfigResponse
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

(defclass pa10controller::setJointConfig
  :super ros::object
  :slots ())

(setf (get pa10controller::setJointConfig :md5sum-) "46282454b294ac7d0c48434b1d003f7a")
(setf (get pa10controller::setJointConfig :datatype-) "pa10controller/setJointConfig")
(setf (get pa10controller::setJointConfig :request) pa10controller::setJointConfigRequest)
(setf (get pa10controller::setJointConfig :response) pa10controller::setJointConfigResponse)

(defmethod pa10controller::setJointConfigRequest
  (:response () (instance pa10controller::setJointConfigResponse :init)))

(setf (get pa10controller::setJointConfigRequest :md5sum-) "46282454b294ac7d0c48434b1d003f7a")
(setf (get pa10controller::setJointConfigRequest :datatype-) "pa10controller/setJointConfigRequest")
(setf (get pa10controller::setJointConfigRequest :definition-)
      "

bool gripper
float32[7] positions
float32[7] commands
---


")

(setf (get pa10controller::setJointConfigResponse :md5sum-) "46282454b294ac7d0c48434b1d003f7a")
(setf (get pa10controller::setJointConfigResponse :datatype-) "pa10controller/setJointConfigResponse")
(setf (get pa10controller::setJointConfigResponse :definition-)
      "

bool gripper
float32[7] positions
float32[7] commands
---


")



(provide :pa10controller/setJointConfig "46282454b294ac7d0c48434b1d003f7a")


