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
  :slots (_shm_name _pid _mm_x_pos _mm_y_pos _mm_z_pos _mm_x_orient _mm_y_orient _mm_z_orient _mm_w_orient _odom_lwheel _odom_rwheel ))

(defmethod rosepl_wrapper_cn::PowerlinkIn
  (:init
   (&key
    ((:shm_name __shm_name) "")
    ((:pid __pid) 0)
    ((:mm_x_pos __mm_x_pos) 0)
    ((:mm_y_pos __mm_y_pos) 0)
    ((:mm_z_pos __mm_z_pos) 0)
    ((:mm_x_orient __mm_x_orient) 0)
    ((:mm_y_orient __mm_y_orient) 0)
    ((:mm_z_orient __mm_z_orient) 0)
    ((:mm_w_orient __mm_w_orient) 0)
    ((:odom_lwheel __odom_lwheel) 0)
    ((:odom_rwheel __odom_rwheel) 0)
    )
   (send-super :init)
   (setq _shm_name (string __shm_name))
   (setq _pid (round __pid))
   (setq _mm_x_pos (round __mm_x_pos))
   (setq _mm_y_pos (round __mm_y_pos))
   (setq _mm_z_pos (round __mm_z_pos))
   (setq _mm_x_orient (round __mm_x_orient))
   (setq _mm_y_orient (round __mm_y_orient))
   (setq _mm_z_orient (round __mm_z_orient))
   (setq _mm_w_orient (round __mm_w_orient))
   (setq _odom_lwheel (round __odom_lwheel))
   (setq _odom_rwheel (round __odom_rwheel))
   self)
  (:shm_name
   (&optional __shm_name)
   (if __shm_name (setq _shm_name __shm_name)) _shm_name)
  (:pid
   (&optional __pid)
   (if __pid (setq _pid __pid)) _pid)
  (:mm_x_pos
   (&optional __mm_x_pos)
   (if __mm_x_pos (setq _mm_x_pos __mm_x_pos)) _mm_x_pos)
  (:mm_y_pos
   (&optional __mm_y_pos)
   (if __mm_y_pos (setq _mm_y_pos __mm_y_pos)) _mm_y_pos)
  (:mm_z_pos
   (&optional __mm_z_pos)
   (if __mm_z_pos (setq _mm_z_pos __mm_z_pos)) _mm_z_pos)
  (:mm_x_orient
   (&optional __mm_x_orient)
   (if __mm_x_orient (setq _mm_x_orient __mm_x_orient)) _mm_x_orient)
  (:mm_y_orient
   (&optional __mm_y_orient)
   (if __mm_y_orient (setq _mm_y_orient __mm_y_orient)) _mm_y_orient)
  (:mm_z_orient
   (&optional __mm_z_orient)
   (if __mm_z_orient (setq _mm_z_orient __mm_z_orient)) _mm_z_orient)
  (:mm_w_orient
   (&optional __mm_w_orient)
   (if __mm_w_orient (setq _mm_w_orient __mm_w_orient)) _mm_w_orient)
  (:odom_lwheel
   (&optional __odom_lwheel)
   (if __odom_lwheel (setq _odom_lwheel __odom_lwheel)) _odom_lwheel)
  (:odom_rwheel
   (&optional __odom_rwheel)
   (if __odom_rwheel (setq _odom_rwheel __odom_rwheel)) _odom_rwheel)
  (:serialization-length
   ()
   (+
    ;; string _shm_name
    4 (length _shm_name)
    ;; uint16 _pid
    2
    ;; int64 _mm_x_pos
    8
    ;; int64 _mm_y_pos
    8
    ;; int64 _mm_z_pos
    8
    ;; int64 _mm_x_orient
    8
    ;; int64 _mm_y_orient
    8
    ;; int64 _mm_z_orient
    8
    ;; int64 _mm_w_orient
    8
    ;; int64 _odom_lwheel
    8
    ;; int64 _odom_rwheel
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
     ;; int64 _mm_x_pos
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _mm_x_pos (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _mm_x_pos) (= (length (_mm_x_pos . bv)) 2)) ;; bignum
              (write-long (ash (elt (_mm_x_pos . bv) 0) 0) s)
              (write-long (ash (elt (_mm_x_pos . bv) 1) -1) s))
             ((and (class _mm_x_pos) (= (length (_mm_x_pos . bv)) 1)) ;; big1
              (write-long (elt (_mm_x_pos . bv) 0) s)
              (write-long (if (>= _mm_x_pos 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _mm_x_pos s)(write-long (if (>= _mm_x_pos 0) 0 #xffffffff) s)))
     ;; int64 _mm_y_pos
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _mm_y_pos (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _mm_y_pos) (= (length (_mm_y_pos . bv)) 2)) ;; bignum
              (write-long (ash (elt (_mm_y_pos . bv) 0) 0) s)
              (write-long (ash (elt (_mm_y_pos . bv) 1) -1) s))
             ((and (class _mm_y_pos) (= (length (_mm_y_pos . bv)) 1)) ;; big1
              (write-long (elt (_mm_y_pos . bv) 0) s)
              (write-long (if (>= _mm_y_pos 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _mm_y_pos s)(write-long (if (>= _mm_y_pos 0) 0 #xffffffff) s)))
     ;; int64 _mm_z_pos
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _mm_z_pos (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _mm_z_pos) (= (length (_mm_z_pos . bv)) 2)) ;; bignum
              (write-long (ash (elt (_mm_z_pos . bv) 0) 0) s)
              (write-long (ash (elt (_mm_z_pos . bv) 1) -1) s))
             ((and (class _mm_z_pos) (= (length (_mm_z_pos . bv)) 1)) ;; big1
              (write-long (elt (_mm_z_pos . bv) 0) s)
              (write-long (if (>= _mm_z_pos 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _mm_z_pos s)(write-long (if (>= _mm_z_pos 0) 0 #xffffffff) s)))
     ;; int64 _mm_x_orient
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _mm_x_orient (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _mm_x_orient) (= (length (_mm_x_orient . bv)) 2)) ;; bignum
              (write-long (ash (elt (_mm_x_orient . bv) 0) 0) s)
              (write-long (ash (elt (_mm_x_orient . bv) 1) -1) s))
             ((and (class _mm_x_orient) (= (length (_mm_x_orient . bv)) 1)) ;; big1
              (write-long (elt (_mm_x_orient . bv) 0) s)
              (write-long (if (>= _mm_x_orient 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _mm_x_orient s)(write-long (if (>= _mm_x_orient 0) 0 #xffffffff) s)))
     ;; int64 _mm_y_orient
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _mm_y_orient (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _mm_y_orient) (= (length (_mm_y_orient . bv)) 2)) ;; bignum
              (write-long (ash (elt (_mm_y_orient . bv) 0) 0) s)
              (write-long (ash (elt (_mm_y_orient . bv) 1) -1) s))
             ((and (class _mm_y_orient) (= (length (_mm_y_orient . bv)) 1)) ;; big1
              (write-long (elt (_mm_y_orient . bv) 0) s)
              (write-long (if (>= _mm_y_orient 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _mm_y_orient s)(write-long (if (>= _mm_y_orient 0) 0 #xffffffff) s)))
     ;; int64 _mm_z_orient
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _mm_z_orient (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _mm_z_orient) (= (length (_mm_z_orient . bv)) 2)) ;; bignum
              (write-long (ash (elt (_mm_z_orient . bv) 0) 0) s)
              (write-long (ash (elt (_mm_z_orient . bv) 1) -1) s))
             ((and (class _mm_z_orient) (= (length (_mm_z_orient . bv)) 1)) ;; big1
              (write-long (elt (_mm_z_orient . bv) 0) s)
              (write-long (if (>= _mm_z_orient 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _mm_z_orient s)(write-long (if (>= _mm_z_orient 0) 0 #xffffffff) s)))
     ;; int64 _mm_w_orient
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _mm_w_orient (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _mm_w_orient) (= (length (_mm_w_orient . bv)) 2)) ;; bignum
              (write-long (ash (elt (_mm_w_orient . bv) 0) 0) s)
              (write-long (ash (elt (_mm_w_orient . bv) 1) -1) s))
             ((and (class _mm_w_orient) (= (length (_mm_w_orient . bv)) 1)) ;; big1
              (write-long (elt (_mm_w_orient . bv) 0) s)
              (write-long (if (>= _mm_w_orient 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _mm_w_orient s)(write-long (if (>= _mm_w_orient 0) 0 #xffffffff) s)))
     ;; int64 _odom_lwheel
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _odom_lwheel (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _odom_lwheel) (= (length (_odom_lwheel . bv)) 2)) ;; bignum
              (write-long (ash (elt (_odom_lwheel . bv) 0) 0) s)
              (write-long (ash (elt (_odom_lwheel . bv) 1) -1) s))
             ((and (class _odom_lwheel) (= (length (_odom_lwheel . bv)) 1)) ;; big1
              (write-long (elt (_odom_lwheel . bv) 0) s)
              (write-long (if (>= _odom_lwheel 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _odom_lwheel s)(write-long (if (>= _odom_lwheel 0) 0 #xffffffff) s)))
     ;; int64 _odom_rwheel
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _odom_rwheel (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _odom_rwheel) (= (length (_odom_rwheel . bv)) 2)) ;; bignum
              (write-long (ash (elt (_odom_rwheel . bv) 0) 0) s)
              (write-long (ash (elt (_odom_rwheel . bv) 1) -1) s))
             ((and (class _odom_rwheel) (= (length (_odom_rwheel . bv)) 1)) ;; big1
              (write-long (elt (_odom_rwheel . bv) 0) s)
              (write-long (if (>= _odom_rwheel 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _odom_rwheel s)(write-long (if (>= _odom_rwheel 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _shm_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _shm_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint16 _pid
     (setq _pid (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int64 _mm_x_pos
#+(or :alpha :irix6 :x86_64)
      (setf _mm_x_pos (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _mm_x_pos (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _mm_y_pos
#+(or :alpha :irix6 :x86_64)
      (setf _mm_y_pos (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _mm_y_pos (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _mm_z_pos
#+(or :alpha :irix6 :x86_64)
      (setf _mm_z_pos (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _mm_z_pos (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _mm_x_orient
#+(or :alpha :irix6 :x86_64)
      (setf _mm_x_orient (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _mm_x_orient (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _mm_y_orient
#+(or :alpha :irix6 :x86_64)
      (setf _mm_y_orient (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _mm_y_orient (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _mm_z_orient
#+(or :alpha :irix6 :x86_64)
      (setf _mm_z_orient (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _mm_z_orient (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _mm_w_orient
#+(or :alpha :irix6 :x86_64)
      (setf _mm_w_orient (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _mm_w_orient (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _odom_lwheel
#+(or :alpha :irix6 :x86_64)
      (setf _odom_lwheel (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _odom_lwheel (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _odom_rwheel
#+(or :alpha :irix6 :x86_64)
      (setf _odom_rwheel (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _odom_rwheel (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
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

(setf (get rosepl_wrapper_cn::PowerlinkIn :md5sum-) "43ef1fa8f235c243a4ab2c833daf73da")
(setf (get rosepl_wrapper_cn::PowerlinkIn :datatype-) "rosepl_wrapper_cn/PowerlinkIn")
(setf (get rosepl_wrapper_cn::PowerlinkIn :definition-)
      "# Generated with epl_ros_generator.py

# openPOWERLINK variables:
string shm_name
uint16 pid

# xap.h variables:
# uint8 DigitalOutput
int64 mm_x_pos
int64 mm_y_pos
int64 mm_z_pos
int64 mm_x_orient
int64 mm_y_orient
int64 mm_z_orient
int64 mm_w_orient
int64 odom_lwheel
int64 odom_rwheel

")



(provide :rosepl_wrapper_cn/PowerlinkIn "43ef1fa8f235c243a4ab2c833daf73da")


