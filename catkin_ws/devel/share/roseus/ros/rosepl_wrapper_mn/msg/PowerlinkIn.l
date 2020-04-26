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
  :slots (_shm_name _pid _cmdvel_lwheel _cmdvel_rwheel ))

(defmethod rosepl_wrapper_mn::PowerlinkIn
  (:init
   (&key
    ((:shm_name __shm_name) "")
    ((:pid __pid) 0)
    ((:cmdvel_lwheel __cmdvel_lwheel) 0)
    ((:cmdvel_rwheel __cmdvel_rwheel) 0)
    )
   (send-super :init)
   (setq _shm_name (string __shm_name))
   (setq _pid (round __pid))
   (setq _cmdvel_lwheel (round __cmdvel_lwheel))
   (setq _cmdvel_rwheel (round __cmdvel_rwheel))
   self)
  (:shm_name
   (&optional __shm_name)
   (if __shm_name (setq _shm_name __shm_name)) _shm_name)
  (:pid
   (&optional __pid)
   (if __pid (setq _pid __pid)) _pid)
  (:cmdvel_lwheel
   (&optional __cmdvel_lwheel)
   (if __cmdvel_lwheel (setq _cmdvel_lwheel __cmdvel_lwheel)) _cmdvel_lwheel)
  (:cmdvel_rwheel
   (&optional __cmdvel_rwheel)
   (if __cmdvel_rwheel (setq _cmdvel_rwheel __cmdvel_rwheel)) _cmdvel_rwheel)
  (:serialization-length
   ()
   (+
    ;; string _shm_name
    4 (length _shm_name)
    ;; uint16 _pid
    2
    ;; int64 _cmdvel_lwheel
    8
    ;; int64 _cmdvel_rwheel
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _shm_name
       (write-long (length _shm_name) s) (princ _shm_name s)
     ;; uint16 _pid
       (write-word _pid s)
     ;; int64 _cmdvel_lwheel
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _cmdvel_lwheel (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _cmdvel_lwheel) (= (length (_cmdvel_lwheel . bv)) 2)) ;; bignum
              (write-long (ash (elt (_cmdvel_lwheel . bv) 0) 0) s)
              (write-long (ash (elt (_cmdvel_lwheel . bv) 1) -1) s))
             ((and (class _cmdvel_lwheel) (= (length (_cmdvel_lwheel . bv)) 1)) ;; big1
              (write-long (elt (_cmdvel_lwheel . bv) 0) s)
              (write-long (if (>= _cmdvel_lwheel 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _cmdvel_lwheel s)(write-long (if (>= _cmdvel_lwheel 0) 0 #xffffffff) s)))
     ;; int64 _cmdvel_rwheel
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _cmdvel_rwheel (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _cmdvel_rwheel) (= (length (_cmdvel_rwheel . bv)) 2)) ;; bignum
              (write-long (ash (elt (_cmdvel_rwheel . bv) 0) 0) s)
              (write-long (ash (elt (_cmdvel_rwheel . bv) 1) -1) s))
             ((and (class _cmdvel_rwheel) (= (length (_cmdvel_rwheel . bv)) 1)) ;; big1
              (write-long (elt (_cmdvel_rwheel . bv) 0) s)
              (write-long (if (>= _cmdvel_rwheel 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _cmdvel_rwheel s)(write-long (if (>= _cmdvel_rwheel 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _shm_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _shm_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint16 _pid
     (setq _pid (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int64 _cmdvel_lwheel
#+(or :alpha :irix6 :x86_64)
      (setf _cmdvel_lwheel (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _cmdvel_lwheel (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _cmdvel_rwheel
#+(or :alpha :irix6 :x86_64)
      (setf _cmdvel_rwheel (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _cmdvel_rwheel (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(setf (get rosepl_wrapper_mn::PowerlinkIn :md5sum-) "084629ffa8e3d4d7e9182ff9bbabd096")
(setf (get rosepl_wrapper_mn::PowerlinkIn :datatype-) "rosepl_wrapper_mn/PowerlinkIn")
(setf (get rosepl_wrapper_mn::PowerlinkIn :definition-)
      "# Generated with epl_ros_generator.py

# openPOWERLINK variables:
string shm_name
uint16 pid

# xap.h variables:
int64 cmdvel_lwheel
int64 cmdvel_rwheel


")



(provide :rosepl_wrapper_mn/PowerlinkIn "084629ffa8e3d4d7e9182ff9bbabd096")


