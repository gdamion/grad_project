;; Auto-generated. Do not edit!


(when (boundp 'rosepl_wrapper_cn::PowerlinkIn)
  (if (not (find-package "ROSEPL_WRAPPER_CN"))
    (make-package "ROSEPL_WRAPPER_CN"))
  (shadow 'PowerlinkIn (find-package "ROSEPL_WRAPPER_CN")))
(unless (find-package "ROSEPL_WRAPPER_CN::POWERLINKIN")
  (make-package "ROSEPL_WRAPPER_CN::POWERLINKIN"))

(in-package "ROS")
;;//! \htmlinclude PowerlinkIn.msg.html


(defclass rosepl_wrapper_cn::PowerlinkIn
  :super ros::object
  :slots (_shm_name _pid _DigitalOutput ))

(defmethod rosepl_wrapper_cn::PowerlinkIn
  (:init
   (&key
    ((:shm_name __shm_name) "")
    ((:pid __pid) 0)
    ((:DigitalOutput __DigitalOutput) 0)
    )
   (send-super :init)
   (setq _shm_name (string __shm_name))
   (setq _pid (round __pid))
   (setq _DigitalOutput (round __DigitalOutput))
   self)
  (:shm_name
   (&optional __shm_name)
   (if __shm_name (setq _shm_name __shm_name)) _shm_name)
  (:pid
   (&optional __pid)
   (if __pid (setq _pid __pid)) _pid)
  (:DigitalOutput
   (&optional __DigitalOutput)
   (if __DigitalOutput (setq _DigitalOutput __DigitalOutput)) _DigitalOutput)
  (:serialization-length
   ()
   (+
    ;; string _shm_name
    4 (length _shm_name)
    ;; uint16 _pid
    2
    ;; uint8 _DigitalOutput
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
     ;; uint8 _DigitalOutput
       (write-byte _DigitalOutput s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _shm_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _shm_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint16 _pid
     (setq _pid (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _DigitalOutput
     (setq _DigitalOutput (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get rosepl_wrapper_cn::PowerlinkIn :md5sum-) "80f0197dc834c087f63affbd7bbe99ab")
(setf (get rosepl_wrapper_cn::PowerlinkIn :datatype-) "rosepl_wrapper_cn/PowerlinkIn")
(setf (get rosepl_wrapper_cn::PowerlinkIn :definition-)
      "# Generated with epl_ros_generator.py

# openPOWERLINK variables:
string shm_name
uint16 pid

# xap.h variables:
uint8 DigitalOutput

")



(provide :rosepl_wrapper_cn/PowerlinkIn "80f0197dc834c087f63affbd7bbe99ab")


