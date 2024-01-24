;; Auto-generated. Do not edit!


(when (boundp 'mirobot::SetGcodeCmd)
  (if (not (find-package "MIROBOT"))
    (make-package "MIROBOT"))
  (shadow 'SetGcodeCmd (find-package "MIROBOT")))
(unless (find-package "MIROBOT::SETGCODECMD")
  (make-package "MIROBOT::SETGCODECMD"))
(unless (find-package "MIROBOT::SETGCODECMDREQUEST")
  (make-package "MIROBOT::SETGCODECMDREQUEST"))
(unless (find-package "MIROBOT::SETGCODECMDRESPONSE")
  (make-package "MIROBOT::SETGCODECMDRESPONSE"))

(in-package "ROS")





(defclass mirobot::SetGcodeCmdRequest
  :super ros::object
  :slots (_gcode ))

(defmethod mirobot::SetGcodeCmdRequest
  (:init
   (&key
    ((:gcode __gcode) "")
    )
   (send-super :init)
   (setq _gcode (string __gcode))
   self)
  (:gcode
   (&optional __gcode)
   (if __gcode (setq _gcode __gcode)) _gcode)
  (:serialization-length
   ()
   (+
    ;; string _gcode
    4 (length _gcode)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _gcode
       (write-long (length _gcode) s) (princ _gcode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _gcode
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _gcode (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass mirobot::SetGcodeCmdResponse
  :super ros::object
  :slots (_result ))

(defmethod mirobot::SetGcodeCmdResponse
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

(defclass mirobot::SetGcodeCmd
  :super ros::object
  :slots ())

(setf (get mirobot::SetGcodeCmd :md5sum-) "063984922b4c75aaeda3d4d697e63bac")
(setf (get mirobot::SetGcodeCmd :datatype-) "mirobot/SetGcodeCmd")
(setf (get mirobot::SetGcodeCmd :request) mirobot::SetGcodeCmdRequest)
(setf (get mirobot::SetGcodeCmd :response) mirobot::SetGcodeCmdResponse)

(defmethod mirobot::SetGcodeCmdRequest
  (:response () (instance mirobot::SetGcodeCmdResponse :init)))

(setf (get mirobot::SetGcodeCmdRequest :md5sum-) "063984922b4c75aaeda3d4d697e63bac")
(setf (get mirobot::SetGcodeCmdRequest :datatype-) "mirobot/SetGcodeCmdRequest")
(setf (get mirobot::SetGcodeCmdRequest :definition-)
      "string gcode
---
int32 result
")

(setf (get mirobot::SetGcodeCmdResponse :md5sum-) "063984922b4c75aaeda3d4d697e63bac")
(setf (get mirobot::SetGcodeCmdResponse :datatype-) "mirobot/SetGcodeCmdResponse")
(setf (get mirobot::SetGcodeCmdResponse :definition-)
      "string gcode
---
int32 result
")



(provide :mirobot/SetGcodeCmd "063984922b4c75aaeda3d4d697e63bac")


