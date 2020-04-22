;; Auto-generated. Do not edit!


(when (boundp 'rosepl_wrapper_mn::SignalSync)
  (if (not (find-package "ROSEPL_WRAPPER_MN"))
    (make-package "ROSEPL_WRAPPER_MN"))
  (shadow 'SignalSync (find-package "ROSEPL_WRAPPER_MN")))
(unless (find-package "ROSEPL_WRAPPER_MN::SIGNALSYNC")
  (make-package "ROSEPL_WRAPPER_MN::SIGNALSYNC"))
(unless (find-package "ROSEPL_WRAPPER_MN::SIGNALSYNCREQUEST")
  (make-package "ROSEPL_WRAPPER_MN::SIGNALSYNCREQUEST"))
(unless (find-package "ROSEPL_WRAPPER_MN::SIGNALSYNCRESPONSE")
  (make-package "ROSEPL_WRAPPER_MN::SIGNALSYNCRESPONSE"))

(in-package "ROS")





(defclass rosepl_wrapper_mn::SignalSyncRequest
  :super ros::object
  :slots (_do_add _pid ))

(defmethod rosepl_wrapper_mn::SignalSyncRequest
  (:init
   (&key
    ((:do_add __do_add) nil)
    ((:pid __pid) 0)
    )
   (send-super :init)
   (setq _do_add __do_add)
   (setq _pid (round __pid))
   self)
  (:do_add
   (&optional __do_add)
   (if __do_add (setq _do_add __do_add)) _do_add)
  (:pid
   (&optional __pid)
   (if __pid (setq _pid __pid)) _pid)
  (:serialization-length
   ()
   (+
    ;; bool _do_add
    1
    ;; uint16 _pid
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _do_add
       (if _do_add (write-byte -1 s) (write-byte 0 s))
     ;; uint16 _pid
       (write-word _pid s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _do_add
     (setq _do_add (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint16 _pid
     (setq _pid (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass rosepl_wrapper_mn::SignalSyncResponse
  :super ros::object
  :slots (_success ))

(defmethod rosepl_wrapper_mn::SignalSyncResponse
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

(defclass rosepl_wrapper_mn::SignalSync
  :super ros::object
  :slots ())

(setf (get rosepl_wrapper_mn::SignalSync :md5sum-) "242caa9d447108ca38b61cc3364649f4")
(setf (get rosepl_wrapper_mn::SignalSync :datatype-) "rosepl_wrapper_mn/SignalSync")
(setf (get rosepl_wrapper_mn::SignalSync :request) rosepl_wrapper_mn::SignalSyncRequest)
(setf (get rosepl_wrapper_mn::SignalSync :response) rosepl_wrapper_mn::SignalSyncResponse)

(defmethod rosepl_wrapper_mn::SignalSyncRequest
  (:response () (instance rosepl_wrapper_mn::SignalSyncResponse :init)))

(setf (get rosepl_wrapper_mn::SignalSyncRequest :md5sum-) "242caa9d447108ca38b61cc3364649f4")
(setf (get rosepl_wrapper_mn::SignalSyncRequest :datatype-) "rosepl_wrapper_mn/SignalSyncRequest")
(setf (get rosepl_wrapper_mn::SignalSyncRequest :definition-)
      "bool do_add
uint16 pid
---
bool success

")

(setf (get rosepl_wrapper_mn::SignalSyncResponse :md5sum-) "242caa9d447108ca38b61cc3364649f4")
(setf (get rosepl_wrapper_mn::SignalSyncResponse :datatype-) "rosepl_wrapper_mn/SignalSyncResponse")
(setf (get rosepl_wrapper_mn::SignalSyncResponse :definition-)
      "bool do_add
uint16 pid
---
bool success

")



(provide :rosepl_wrapper_mn/SignalSync "242caa9d447108ca38b61cc3364649f4")


