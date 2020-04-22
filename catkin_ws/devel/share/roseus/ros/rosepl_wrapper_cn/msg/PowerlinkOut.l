;; Auto-generated. Do not edit!


(when (boundp 'rosepl_wrapper_cn::PowerlinkOut)
  (if (not (find-package "ROSEPL_WRAPPER_CN"))
    (make-package "ROSEPL_WRAPPER_CN"))
  (shadow 'PowerlinkOut (find-package "ROSEPL_WRAPPER_CN")))
(unless (find-package "ROSEPL_WRAPPER_CN::POWERLINKOUT")
  (make-package "ROSEPL_WRAPPER_CN::POWERLINKOUT"))

(in-package "ROS")
;;//! \htmlinclude PowerlinkOut.msg.html


(defclass rosepl_wrapper_cn::PowerlinkOut
  :super ros::object
  :slots (_shm_name _pid _DigitalInput ))

(defmethod rosepl_wrapper_cn::PowerlinkOut
  (:init
   (&key
    ((:shm_name __shm_name) "")
    ((:pid __pid) 0)
    ((:DigitalInput __DigitalInput) 0)
    )
   (send-super :init)
   (setq _shm_name (string __shm_name))
   (setq _pid (round __pid))
   (setq _DigitalInput (round __DigitalInput))
   self)
  (:shm_name
   (&optional __shm_name)
   (if __shm_name (setq _shm_name __shm_name)) _shm_name)
  (:pid
   (&optional __pid)
   (if __pid (setq _pid __pid)) _pid)
  (:DigitalInput
   (&optional __DigitalInput)
   (if __DigitalInput (setq _DigitalInput __DigitalInput)) _DigitalInput)
  (:serialization-length
   ()
   (+
    ;; string _shm_name
    4 (length _shm_name)
    ;; uint16 _pid
    2
    ;; uint8 _DigitalInput
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _shm_name
       (write-long (length _shm_name) s) (princ _shm_name s)
     ;; uint16 _pid
       (write-word _pid s)
     ;; uint8 _DigitalInput
       (write-byte _DigitalInput s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _shm_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _shm_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint16 _pid
     (setq _pid (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _DigitalInput
     (setq _DigitalInput (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get rosepl_wrapper_cn::PowerlinkOut :md5sum-) "8531aafcaf639a04b50bb4ea10f69ede")
(setf (get rosepl_wrapper_cn::PowerlinkOut :datatype-) "rosepl_wrapper_cn/PowerlinkOut")
(setf (get rosepl_wrapper_cn::PowerlinkOut :definition-)
      "# Generated with epl_ros_generator.py

# openPOWERLINK variables:
string shm_name
uint16 pid

# xap.h variables:
uint8 DigitalInput

")



(provide :rosepl_wrapper_cn/PowerlinkOut "8531aafcaf639a04b50bb4ea10f69ede")


