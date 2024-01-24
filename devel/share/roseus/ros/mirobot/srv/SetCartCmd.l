;; Auto-generated. Do not edit!


(when (boundp 'mirobot::SetCartCmd)
  (if (not (find-package "MIROBOT"))
    (make-package "MIROBOT"))
  (shadow 'SetCartCmd (find-package "MIROBOT")))
(unless (find-package "MIROBOT::SETCARTCMD")
  (make-package "MIROBOT::SETCARTCMD"))
(unless (find-package "MIROBOT::SETCARTCMDREQUEST")
  (make-package "MIROBOT::SETCARTCMDREQUEST"))
(unless (find-package "MIROBOT::SETCARTCMDRESPONSE")
  (make-package "MIROBOT::SETCARTCMDRESPONSE"))

(in-package "ROS")





(defclass mirobot::SetCartCmdRequest
  :super ros::object
  :slots (_x _y _z _a _b _c _speed ))

(defmethod mirobot::SetCartCmdRequest
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    ((:a __a) 0.0)
    ((:b __b) 0.0)
    ((:c __c) 0.0)
    ((:speed __speed) 0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   (setq _a (float __a))
   (setq _b (float __b))
   (setq _c (float __c))
   (setq _speed (round __speed))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:a
   (&optional __a)
   (if __a (setq _a __a)) _a)
  (:b
   (&optional __b)
   (if __b (setq _b __b)) _b)
  (:c
   (&optional __c)
   (if __c (setq _c __c)) _c)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:serialization-length
   ()
   (+
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float32 _z
    4
    ;; float32 _a
    4
    ;; float32 _b
    4
    ;; float32 _c
    4
    ;; int32 _speed
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _z
       (sys::poke _z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _a
       (sys::poke _a (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _b
       (sys::poke _b (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _c
       (sys::poke _c (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _speed
       (write-long _speed s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _z
     (setq _z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _a
     (setq _a (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _b
     (setq _b (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _c
     (setq _c (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _speed
     (setq _speed (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass mirobot::SetCartCmdResponse
  :super ros::object
  :slots (_result ))

(defmethod mirobot::SetCartCmdResponse
  (:init
   (&key
    ((:result __result) 0)
    )
   (send-super :init)
   (setq _result (round __result))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; int32 _result
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _result
       (write-long _result s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _result
     (setq _result (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass mirobot::SetCartCmd
  :super ros::object
  :slots ())

(setf (get mirobot::SetCartCmd :md5sum-) "a04e9b461fba38f9b9e9c58e02a554ec")
(setf (get mirobot::SetCartCmd :datatype-) "mirobot/SetCartCmd")
(setf (get mirobot::SetCartCmd :request) mirobot::SetCartCmdRequest)
(setf (get mirobot::SetCartCmd :response) mirobot::SetCartCmdResponse)

(defmethod mirobot::SetCartCmdRequest
  (:response () (instance mirobot::SetCartCmdResponse :init)))

(setf (get mirobot::SetCartCmdRequest :md5sum-) "a04e9b461fba38f9b9e9c58e02a554ec")
(setf (get mirobot::SetCartCmdRequest :datatype-) "mirobot/SetCartCmdRequest")
(setf (get mirobot::SetCartCmdRequest :definition-)
      "float32 x 
float32 y 
float32 z 
float32 a 
float32 b 
float32 c 
int32 speed 
---
int32 result
")

(setf (get mirobot::SetCartCmdResponse :md5sum-) "a04e9b461fba38f9b9e9c58e02a554ec")
(setf (get mirobot::SetCartCmdResponse :datatype-) "mirobot/SetCartCmdResponse")
(setf (get mirobot::SetCartCmdResponse :definition-)
      "float32 x 
float32 y 
float32 z 
float32 a 
float32 b 
float32 c 
int32 speed 
---
int32 result
")



(provide :mirobot/SetCartCmd "a04e9b461fba38f9b9e9c58e02a554ec")


