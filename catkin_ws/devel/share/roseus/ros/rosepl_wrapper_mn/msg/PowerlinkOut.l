;; Auto-generated. Do not edit!


(when (boundp 'rosepl_wrapper_mn::PowerlinkOut)
  (if (not (find-package "ROSEPL_WRAPPER_MN"))
    (make-package "ROSEPL_WRAPPER_MN"))
  (shadow 'PowerlinkOut (find-package "ROSEPL_WRAPPER_MN")))
(unless (find-package "ROSEPL_WRAPPER_MN::POWERLINKOUT")
  (make-package "ROSEPL_WRAPPER_MN::POWERLINKOUT"))

(in-package "ROS")
;;//! \htmlinclude PowerlinkOut.msg.html


(defclass rosepl_wrapper_mn::PowerlinkOut
  :super ros::object
  :slots (_shm_name _pid _CN1_DigitalInput_00h_AU8_DigitalInput _CN32_DigitalInput_00h_AU8_DigitalInput _CN110_DigitalInput_00h_AU8_DigitalInput ))

(defmethod rosepl_wrapper_mn::PowerlinkOut
  (:init
   (&key
    ((:shm_name __shm_name) "")
    ((:pid __pid) 0)
    ((:CN1_DigitalInput_00h_AU8_DigitalInput __CN1_DigitalInput_00h_AU8_DigitalInput) 0)
    ((:CN32_DigitalInput_00h_AU8_DigitalInput __CN32_DigitalInput_00h_AU8_DigitalInput) 0)
    ((:CN110_DigitalInput_00h_AU8_DigitalInput __CN110_DigitalInput_00h_AU8_DigitalInput) 0)
    )
   (send-super :init)
   (setq _shm_name (string __shm_name))
   (setq _pid (round __pid))
   (setq _CN1_DigitalInput_00h_AU8_DigitalInput (round __CN1_DigitalInput_00h_AU8_DigitalInput))
   (setq _CN32_DigitalInput_00h_AU8_DigitalInput (round __CN32_DigitalInput_00h_AU8_DigitalInput))
   (setq _CN110_DigitalInput_00h_AU8_DigitalInput (round __CN110_DigitalInput_00h_AU8_DigitalInput))
   self)
  (:shm_name
   (&optional __shm_name)
   (if __shm_name (setq _shm_name __shm_name)) _shm_name)
  (:pid
   (&optional __pid)
   (if __pid (setq _pid __pid)) _pid)
  (:CN1_DigitalInput_00h_AU8_DigitalInput
   (&optional __CN1_DigitalInput_00h_AU8_DigitalInput)
   (if __CN1_DigitalInput_00h_AU8_DigitalInput (setq _CN1_DigitalInput_00h_AU8_DigitalInput __CN1_DigitalInput_00h_AU8_DigitalInput)) _CN1_DigitalInput_00h_AU8_DigitalInput)
  (:CN32_DigitalInput_00h_AU8_DigitalInput
   (&optional __CN32_DigitalInput_00h_AU8_DigitalInput)
   (if __CN32_DigitalInput_00h_AU8_DigitalInput (setq _CN32_DigitalInput_00h_AU8_DigitalInput __CN32_DigitalInput_00h_AU8_DigitalInput)) _CN32_DigitalInput_00h_AU8_DigitalInput)
  (:CN110_DigitalInput_00h_AU8_DigitalInput
   (&optional __CN110_DigitalInput_00h_AU8_DigitalInput)
   (if __CN110_DigitalInput_00h_AU8_DigitalInput (setq _CN110_DigitalInput_00h_AU8_DigitalInput __CN110_DigitalInput_00h_AU8_DigitalInput)) _CN110_DigitalInput_00h_AU8_DigitalInput)
  (:serialization-length
   ()
   (+
    ;; string _shm_name
    4 (length _shm_name)
    ;; uint16 _pid
    2
    ;; uint8 _CN1_DigitalInput_00h_AU8_DigitalInput
    1
    ;; uint8 _CN32_DigitalInput_00h_AU8_DigitalInput
    1
    ;; uint8 _CN110_DigitalInput_00h_AU8_DigitalInput
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
     ;; uint8 _CN1_DigitalInput_00h_AU8_DigitalInput
       (write-byte _CN1_DigitalInput_00h_AU8_DigitalInput s)
     ;; uint8 _CN32_DigitalInput_00h_AU8_DigitalInput
       (write-byte _CN32_DigitalInput_00h_AU8_DigitalInput s)
     ;; uint8 _CN110_DigitalInput_00h_AU8_DigitalInput
       (write-byte _CN110_DigitalInput_00h_AU8_DigitalInput s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _shm_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _shm_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint16 _pid
     (setq _pid (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _CN1_DigitalInput_00h_AU8_DigitalInput
     (setq _CN1_DigitalInput_00h_AU8_DigitalInput (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _CN32_DigitalInput_00h_AU8_DigitalInput
     (setq _CN32_DigitalInput_00h_AU8_DigitalInput (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _CN110_DigitalInput_00h_AU8_DigitalInput
     (setq _CN110_DigitalInput_00h_AU8_DigitalInput (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get rosepl_wrapper_mn::PowerlinkOut :md5sum-) "1f910c88861ed3545762f094f3ee2af0")
(setf (get rosepl_wrapper_mn::PowerlinkOut :datatype-) "rosepl_wrapper_mn/PowerlinkOut")
(setf (get rosepl_wrapper_mn::PowerlinkOut :definition-)
      "# Generated with epl_ros_generator.py

# openPOWERLINK variables:
string shm_name
uint16 pid

# xap.h variables:
uint8 CN1_DigitalInput_00h_AU8_DigitalInput
uint8 CN32_DigitalInput_00h_AU8_DigitalInput
uint8 CN110_DigitalInput_00h_AU8_DigitalInput

")



(provide :rosepl_wrapper_mn/PowerlinkOut "1f910c88861ed3545762f094f3ee2af0")


