;; Auto-generated. Do not edit!


(when (boundp 'pa10controller::addToQueue)
  (if (not (find-package "PA10CONTROLLER"))
    (make-package "PA10CONTROLLER"))
  (shadow 'addToQueue (find-package "PA10CONTROLLER")))
(unless (find-package "PA10CONTROLLER::ADDTOQUEUE")
  (make-package "PA10CONTROLLER::ADDTOQUEUE"))
(unless (find-package "PA10CONTROLLER::ADDTOQUEUEREQUEST")
  (make-package "PA10CONTROLLER::ADDTOQUEUEREQUEST"))
(unless (find-package "PA10CONTROLLER::ADDTOQUEUERESPONSE")
  (make-package "PA10CONTROLLER::ADDTOQUEUERESPONSE"))

(in-package "ROS")





(defclass pa10controller::addToQueueRequest
  :super ros::object
  :slots (_gripper _endOfQueue _positions _commands ))

(defmethod pa10controller::addToQueueRequest
  (:init
   (&key
    ((:gripper __gripper) nil)
    ((:endOfQueue __endOfQueue) nil)
    ((:positions __positions) (make-array 7 :initial-element 0.0 :element-type :float))
    ((:commands __commands) (make-array 7 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _gripper __gripper)
   (setq _endOfQueue __endOfQueue)
   (setq _positions __positions)
   (setq _commands __commands)
   self)
  (:gripper
   (&optional __gripper)
   (if __gripper (setq _gripper __gripper)) _gripper)
  (:endOfQueue
   (&optional __endOfQueue)
   (if __endOfQueue (setq _endOfQueue __endOfQueue)) _endOfQueue)
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
    ;; bool _endOfQueue
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
     ;; bool _endOfQueue
       (if _endOfQueue (write-byte -1 s) (write-byte 0 s))
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
   ;; bool _endOfQueue
     (setq _endOfQueue (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
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

(defclass pa10controller::addToQueueResponse
  :super ros::object
  :slots (_sucess ))

(defmethod pa10controller::addToQueueResponse
  (:init
   (&key
    ((:sucess __sucess) nil)
    )
   (send-super :init)
   (setq _sucess __sucess)
   self)
  (:sucess
   (&optional __sucess)
   (if __sucess (setq _sucess __sucess)) _sucess)
  (:serialization-length
   ()
   (+
    ;; bool _sucess
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _sucess
       (if _sucess (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _sucess
     (setq _sucess (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass pa10controller::addToQueue
  :super ros::object
  :slots ())

(setf (get pa10controller::addToQueue :md5sum-) "3c31d885a63f71726d73c88c92dde354")
(setf (get pa10controller::addToQueue :datatype-) "pa10controller/addToQueue")
(setf (get pa10controller::addToQueue :request) pa10controller::addToQueueRequest)
(setf (get pa10controller::addToQueue :response) pa10controller::addToQueueResponse)

(defmethod pa10controller::addToQueueRequest
  (:response () (instance pa10controller::addToQueueResponse :init)))

(setf (get pa10controller::addToQueueRequest :md5sum-) "3c31d885a63f71726d73c88c92dde354")
(setf (get pa10controller::addToQueueRequest :datatype-) "pa10controller/addToQueueRequest")
(setf (get pa10controller::addToQueueRequest :definition-)
      "

bool gripper
bool endOfQueue
float32[7] positions
float32[7] commands
---


bool sucess
")

(setf (get pa10controller::addToQueueResponse :md5sum-) "3c31d885a63f71726d73c88c92dde354")
(setf (get pa10controller::addToQueueResponse :datatype-) "pa10controller/addToQueueResponse")
(setf (get pa10controller::addToQueueResponse :definition-)
      "

bool gripper
bool endOfQueue
float32[7] positions
float32[7] commands
---


bool sucess
")



(provide :pa10controller/addToQueue "3c31d885a63f71726d73c88c92dde354")


