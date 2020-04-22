;; Auto-generated. Do not edit!


(when (boundp 'rosepl_wrapper_mn::PowerlinkIn)
  (if (not (find-package "ROSEPL_WRAPPER_MN"))
    (make-package "ROSEPL_WRAPPER_MN"))
  (shadow 'PowerlinkIn (find-package "ROSEPL_WRAPPER_MN")))
(unless (find-package "ROSEPL_WRAPPER_MN::POWERLINKIN")
  (make-package "ROSEPL_WRAPPER_MN::POWERLINKIN"))

(in-package "ROS")
;;//! \htmlinclude PowerlinkIn.msg.html


(defclass rosepl_wrapper_mn::PowerlinkIn
  :super ros::object
  :slots (_shm_name _pid _CN1_DigitalOutput_00h_AU8_DigitalOutput _CN32_DigitalOutput_00h_AU8_DigitalOutput _CN110_DigitalOutput_00h_AU8_DigitalOutput ))

(defmethod rosepl_wrapper_mn::PowerlinkIn
  (:init
   (&key
    ((:shm_name __shm_name) "")
    ((:pid __pid) 0)
    ((:CN1_DigitalOutput_00h_AU8_DigitalOutput __CN1_DigitalOutput_00h_AU8_DigitalOutput) 0)
    ((:CN32_DigitalOutput_00h_AU8_DigitalOutput __CN32_DigitalOutput_00h_AU8_DigitalOutput) 0)
    ((:CN110_DigitalOutput_00h_AU8_DigitalOutput __CN110_DigitalOutput_00h_AU8_DigitalOutput) 0)
    )
   (send-super :init)
   (setq _shm_name (string __shm_name))
   (setq _pid (round __pid))
   (setq _CN1_DigitalOutput_00h_AU8_DigitalOutput (round __CN1_DigitalOutput_00h_AU8_DigitalOutput))
   (setq _CN32_DigitalOutput_00h_AU8_DigitalOutput (round __CN32_DigitalOutput_00h_AU8_DigitalOutput))
   (setq _CN110_DigitalOutput_00h_AU8_DigitalOutput (round __CN110_DigitalOutput_00h_AU8_DigitalOutput))
   self)
  (:shm_name
   (&optional __shm_name)
   (if __shm_name (setq _shm_name __shm_name)) _shm_name)
  (:pid
   (&optional __pid)
   (if __pid (setq _pid __pid)) _pid)
  (:CN1_DigitalOutput_00h_AU8_DigitalOutput
   (&optional __CN1_DigitalOutput_00h_AU8_DigitalOutput)
   (if __CN1_DigitalOutput_00h_AU8_DigitalOutput (setq _CN1_DigitalOutput_00h_AU8_DigitalOutput __CN1_DigitalOutput_00h_AU8_DigitalOutput)) _CN1_DigitalOutput_00h_AU8_DigitalOutput)
  (:CN32_DigitalOutput_00h_AU8_DigitalOutput
   (&optional __CN32_DigitalOutput_00h_AU8_DigitalOutput)
   (if __CN32_DigitalOutput_00h_AU8_DigitalOutput (setq _CN32_DigitalOutput_00h_AU8_DigitalOutput __CN32_DigitalOutput_00h_AU8_DigitalOutput)) _CN32_DigitalOutput_00h_AU8_DigitalOutput)
  (:CN110_DigitalOutput_00h_AU8_DigitalOutput
   (&optional __CN110_DigitalOutput_00h_AU8_DigitalOutput)
   (if __CN110_DigitalOutput_00h_AU8_DigitalOutput (setq _CN110_DigitalOutput_00h_AU8_DigitalOutput __CN110_DigitalOutput_00h_AU8_DigitalOutput)) _CN110_DigitalOutput_00h_AU8_DigitalOutput)
  (:serialization-length
   ()
   (+
    ;; string _shm_name
    4 (length _shm_name)
    ;; uint16 _pid
    2
    ;; uint8 _CN1_DigitalOutput_00h_AU8_DigitalOutput
    1
    ;; uint8 _CN32_DigitalOutput_00h_AU8_DigitalOutput
    1
    ;; uint8 _CN110_DigitalOutput_00h_AU8_DigitalOutput
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
     ;; uint8 _CN1_DigitalOutput_00h_AU8_DigitalOutput
       (write-byte _CN1_DigitalOutput_00h_AU8_DigitalOutput s)
     ;; uint8 _CN32_DigitalOutput_00h_AU8_DigitalOutput
       (write-byte _CN32_DigitalOutput_00h_AU8_DigitalOutput s)
     ;; uint8 _CN110_DigitalOutput_00h_AU8_DigitalOutput
       (write-byte _CN110_DigitalOutput_00h_AU8_DigitalOutput s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _shm_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _shm_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint16 _pid
     (setq _pid (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _CN1_DigitalOutput_00h_AU8_DigitalOutput
     (setq _CN1_DigitalOutput_00h_AU8_DigitalOutput (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _CN32_DigitalOutput_00h_AU8_DigitalOutput
     (setq _CN32_DigitalOutput_00h_AU8_DigitalOutput (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _CN110_DigitalOutput_00h_AU8_DigitalOutput
     (setq _CN110_DigitalOutput_00h_AU8_DigitalOutput (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get rosepl_wrapper_mn::PowerlinkIn :md5sum-) "83446a679c527fd90cd8516147e626c1")
(setf (get rosepl_wrapper_mn::PowerlinkIn :datatype-) "rosepl_wrapper_mn/PowerlinkIn")
(setf (get rosepl_wrapper_mn::PowerlinkIn :definition-)
      "# Generated with epl_ros_generator.py

# openPOWERLINK variables:
string shm_name
uint16 pid

# xap.h variables:
uint8 CN1_DigitalOutput_00h_AU8_DigitalOutput
uint8 CN32_DigitalOutput_00h_AU8_DigitalOutput
uint8 CN110_DigitalOutput_00h_AU8_DigitalOutput

")



(provide :rosepl_wrapper_mn/PowerlinkIn "83446a679c527fd90cd8516147e626c1")


