;; Auto-generated. Do not edit!


(when (boundp 'mirobot::SetHomeCmd)
  (if (not (find-package "MIROBOT"))
    (make-package "MIROBOT"))
  (shadow 'SetHomeCmd (find-package "MIROBOT")))
(unless (find-package "MIROBOT::SETHOMECMD")
  (make-package "MIROBOT::SETHOMECMD"))
(unless (find-package "MIROBOT::SETHOMECMDREQUEST")
  (make-package "MIROBOT::SETHOMECMDREQUEST"))
(unless (find-package "MIROBOT::SETHOMECMDRESPONSE")
  (make-package "MIROBOT::SETHOMECMDRESPONSE"))

(in-package "ROS")





(defclass mirobot::SetHomeCmdRequest
  :super ros::object
  :slots ())

(defmethod mirobot::SetHomeCmdRequest
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

(defclass mirobot::SetHomeCmdResponse
  :super ros::object
  :slots (_result ))

(defmethod mirobot::SetHomeCmdResponse
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

(defclass mirobot::SetHomeCmd
  :super ros::object
  :slots ())

(setf (get mirobot::SetHomeCmd :md5sum-) "034a8e20d6a306665e3a5b340fab3f09")
(setf (get mirobot::SetHomeCmd :datatype-) "mirobot/SetHomeCmd")
(setf (get mirobot::SetHomeCmd :request) mirobot::SetHomeCmdRequest)
(setf (get mirobot::SetHomeCmd :response) mirobot::SetHomeCmdResponse)

(defmethod mirobot::SetHomeCmdRequest
  (:response () (instance mirobot::SetHomeCmdResponse :init)))

(setf (get mirobot::SetHomeCmdRequest :md5sum-) "034a8e20d6a306665e3a5b340fab3f09")
(setf (get mirobot::SetHomeCmdRequest :datatype-) "mirobot/SetHomeCmdRequest")
(setf (get mirobot::SetHomeCmdRequest :definition-)
      "---
int32 result
")

(setf (get mirobot::SetHomeCmdResponse :md5sum-) "034a8e20d6a306665e3a5b340fab3f09")
(setf (get mirobot::SetHomeCmdResponse :datatype-) "mirobot/SetHomeCmdResponse")
(setf (get mirobot::SetHomeCmdResponse :definition-)
      "---
int32 result
")



(provide :mirobot/SetHomeCmd "034a8e20d6a306665e3a5b340fab3f09")


