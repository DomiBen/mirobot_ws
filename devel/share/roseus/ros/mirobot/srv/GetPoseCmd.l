;; Auto-generated. Do not edit!


(when (boundp 'mirobot::GetPoseCmd)
  (if (not (find-package "MIROBOT"))
    (make-package "MIROBOT"))
  (shadow 'GetPoseCmd (find-package "MIROBOT")))
(unless (find-package "MIROBOT::GETPOSECMD")
  (make-package "MIROBOT::GETPOSECMD"))
(unless (find-package "MIROBOT::GETPOSECMDREQUEST")
  (make-package "MIROBOT::GETPOSECMDREQUEST"))
(unless (find-package "MIROBOT::GETPOSECMDRESPONSE")
  (make-package "MIROBOT::GETPOSECMDRESPONSE"))

(in-package "ROS")





(defclass mirobot::GetPoseCmdRequest
  :super ros::object
  :slots ())

(defmethod mirobot::GetPoseCmdRequest
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

(defclass mirobot::GetPoseCmdResponse
  :super ros::object
  :slots (_result _state _x _y _z _a _b _c _jointAngle_1 _jointAngle_2 _jointAngle_3 _jointAngle_4 _jointAngle_5 _jointAngle_6 _jointAngle_7 ))

(defmethod mirobot::GetPoseCmdResponse
  (:init
   (&key
    ((:result __result) 0)
    ((:state __state) 0)
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    ((:a __a) 0.0)
    ((:b __b) 0.0)
    ((:c __c) 0.0)
    ((:jointAngle_1 __jointAngle_1) 0.0)
    ((:jointAngle_2 __jointAngle_2) 0.0)
    ((:jointAngle_3 __jointAngle_3) 0.0)
    ((:jointAngle_4 __jointAngle_4) 0.0)
    ((:jointAngle_5 __jointAngle_5) 0.0)
    ((:jointAngle_6 __jointAngle_6) 0.0)
    ((:jointAngle_7 __jointAngle_7) 0.0)
    )
   (send-super :init)
   (setq _result (round __result))
   (setq _state (round __state))
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   (setq _a (float __a))
   (setq _b (float __b))
   (setq _c (float __c))
   (setq _jointAngle_1 (float __jointAngle_1))
   (setq _jointAngle_2 (float __jointAngle_2))
   (setq _jointAngle_3 (float __jointAngle_3))
   (setq _jointAngle_4 (float __jointAngle_4))
   (setq _jointAngle_5 (float __jointAngle_5))
   (setq _jointAngle_6 (float __jointAngle_6))
   (setq _jointAngle_7 (float __jointAngle_7))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
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
  (:jointAngle_1
   (&optional __jointAngle_1)
   (if __jointAngle_1 (setq _jointAngle_1 __jointAngle_1)) _jointAngle_1)
  (:jointAngle_2
   (&optional __jointAngle_2)
   (if __jointAngle_2 (setq _jointAngle_2 __jointAngle_2)) _jointAngle_2)
  (:jointAngle_3
   (&optional __jointAngle_3)
   (if __jointAngle_3 (setq _jointAngle_3 __jointAngle_3)) _jointAngle_3)
  (:jointAngle_4
   (&optional __jointAngle_4)
   (if __jointAngle_4 (setq _jointAngle_4 __jointAngle_4)) _jointAngle_4)
  (:jointAngle_5
   (&optional __jointAngle_5)
   (if __jointAngle_5 (setq _jointAngle_5 __jointAngle_5)) _jointAngle_5)
  (:jointAngle_6
   (&optional __jointAngle_6)
   (if __jointAngle_6 (setq _jointAngle_6 __jointAngle_6)) _jointAngle_6)
  (:jointAngle_7
   (&optional __jointAngle_7)
   (if __jointAngle_7 (setq _jointAngle_7 __jointAngle_7)) _jointAngle_7)
  (:serialization-length
   ()
   (+
    ;; int32 _result
    4
    ;; int32 _state
    4
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
    ;; float32 _jointAngle_1
    4
    ;; float32 _jointAngle_2
    4
    ;; float32 _jointAngle_3
    4
    ;; float32 _jointAngle_4
    4
    ;; float32 _jointAngle_5
    4
    ;; float32 _jointAngle_6
    4
    ;; float32 _jointAngle_7
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _result
       (write-long _result s)
     ;; int32 _state
       (write-long _state s)
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
     ;; float32 _jointAngle_1
       (sys::poke _jointAngle_1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _jointAngle_2
       (sys::poke _jointAngle_2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _jointAngle_3
       (sys::poke _jointAngle_3 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _jointAngle_4
       (sys::poke _jointAngle_4 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _jointAngle_5
       (sys::poke _jointAngle_5 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _jointAngle_6
       (sys::poke _jointAngle_6 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _jointAngle_7
       (sys::poke _jointAngle_7 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _result
     (setq _result (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _state
     (setq _state (sys::peek buf ptr- :integer)) (incf ptr- 4)
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
   ;; float32 _jointAngle_1
     (setq _jointAngle_1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _jointAngle_2
     (setq _jointAngle_2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _jointAngle_3
     (setq _jointAngle_3 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _jointAngle_4
     (setq _jointAngle_4 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _jointAngle_5
     (setq _jointAngle_5 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _jointAngle_6
     (setq _jointAngle_6 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _jointAngle_7
     (setq _jointAngle_7 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass mirobot::GetPoseCmd
  :super ros::object
  :slots ())

(setf (get mirobot::GetPoseCmd :md5sum-) "5aef3792e74d728815d4dfbf8b1f490f")
(setf (get mirobot::GetPoseCmd :datatype-) "mirobot/GetPoseCmd")
(setf (get mirobot::GetPoseCmd :request) mirobot::GetPoseCmdRequest)
(setf (get mirobot::GetPoseCmd :response) mirobot::GetPoseCmdResponse)

(defmethod mirobot::GetPoseCmdRequest
  (:response () (instance mirobot::GetPoseCmdResponse :init)))

(setf (get mirobot::GetPoseCmdRequest :md5sum-) "5aef3792e74d728815d4dfbf8b1f490f")
(setf (get mirobot::GetPoseCmdRequest :datatype-) "mirobot/GetPoseCmdRequest")
(setf (get mirobot::GetPoseCmdRequest :definition-)
      "---
int32 result
int32 state
float32 x
float32 y
float32 z
float32 a
float32 b
float32 c
float32 jointAngle_1
float32 jointAngle_2
float32 jointAngle_3
float32 jointAngle_4
float32 jointAngle_5
float32 jointAngle_6
float32 jointAngle_7

")

(setf (get mirobot::GetPoseCmdResponse :md5sum-) "5aef3792e74d728815d4dfbf8b1f490f")
(setf (get mirobot::GetPoseCmdResponse :datatype-) "mirobot/GetPoseCmdResponse")
(setf (get mirobot::GetPoseCmdResponse :definition-)
      "---
int32 result
int32 state
float32 x
float32 y
float32 z
float32 a
float32 b
float32 c
float32 jointAngle_1
float32 jointAngle_2
float32 jointAngle_3
float32 jointAngle_4
float32 jointAngle_5
float32 jointAngle_6
float32 jointAngle_7

")



(provide :mirobot/GetPoseCmd "5aef3792e74d728815d4dfbf8b1f490f")


