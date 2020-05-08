;; Auto-generated. Do not edit!


(when (boundp 'rosepl_wrapper_mn::SdoTransfer)
  (if (not (find-package "ROSEPL_WRAPPER_MN"))
    (make-package "ROSEPL_WRAPPER_MN"))
  (shadow 'SdoTransfer (find-package "ROSEPL_WRAPPER_MN")))
(unless (find-package "ROSEPL_WRAPPER_MN::SDOTRANSFER")
  (make-package "ROSEPL_WRAPPER_MN::SDOTRANSFER"))
(unless (find-package "ROSEPL_WRAPPER_MN::SDOTRANSFERREQUEST")
  (make-package "ROSEPL_WRAPPER_MN::SDOTRANSFERREQUEST"))
(unless (find-package "ROSEPL_WRAPPER_MN::SDOTRANSFERRESPONSE")
  (make-package "ROSEPL_WRAPPER_MN::SDOTRANSFERRESPONSE"))

(in-package "ROS")





(defclass rosepl_wrapper_mn::SdoTransferRequest
  :super ros::object
  :slots (_action _pid _node _index _subindex _write _data _size ))

(defmethod rosepl_wrapper_mn::SdoTransferRequest
  (:init
   (&key
    ((:action __action) 0)
    ((:pid __pid) 0)
    ((:node __node) 0)
    ((:index __index) 0)
    ((:subindex __subindex) 0)
    ((:write __write) nil)
    ((:data __data) 0)
    ((:size __size) 0)
    )
   (send-super :init)
   (setq _action (round __action))
   (setq _pid (round __pid))
   (setq _node (round __node))
   (setq _index (round __index))
   (setq _subindex (round __subindex))
   (setq _write __write)
   (setq _data (round __data))
   (setq _size (round __size))
   self)
  (:action
   (&optional __action)
   (if __action (setq _action __action)) _action)
  (:pid
   (&optional __pid)
   (if __pid (setq _pid __pid)) _pid)
  (:node
   (&optional __node)
   (if __node (setq _node __node)) _node)
  (:index
   (&optional __index)
   (if __index (setq _index __index)) _index)
  (:subindex
   (&optional __subindex)
   (if __subindex (setq _subindex __subindex)) _subindex)
  (:write
   (&optional __write)
   (if __write (setq _write __write)) _write)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:size
   (&optional __size)
   (if __size (setq _size __size)) _size)
  (:serialization-length
   ()
   (+
    ;; uint8 _action
    1
    ;; uint16 _pid
    2
    ;; uint8 _node
    1
    ;; uint16 _index
    2
    ;; uint16 _subindex
    2
    ;; bool _write
    1
    ;; uint64 _data
    8
    ;; uint16 _size
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _action
       (write-byte _action s)
     ;; uint16 _pid
       (write-word _pid s)
     ;; uint8 _node
       (write-byte _node s)
     ;; uint16 _index
       (write-word _index s)
     ;; uint16 _subindex
       (write-word _subindex s)
     ;; bool _write
       (if _write (write-byte -1 s) (write-byte 0 s))
     ;; uint64 _data
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _data (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _data) (= (length (_data . bv)) 2)) ;; bignum
              (write-long (ash (elt (_data . bv) 0) 0) s)
              (write-long (ash (elt (_data . bv) 1) -1) s))
             ((and (class _data) (= (length (_data . bv)) 1)) ;; big1
              (write-long (elt (_data . bv) 0) s)
              (write-long (if (>= _data 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _data s)(write-long (if (>= _data 0) 0 #xffffffff) s)))
     ;; uint16 _size
       (write-word _size s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _action
     (setq _action (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _pid
     (setq _pid (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _node
     (setq _node (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _index
     (setq _index (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _subindex
     (setq _subindex (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; bool _write
     (setq _write (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint64 _data
     
#+(or :alpha :irix6 :x86_64)
      (setf _data (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _data (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; uint16 _size
     (setq _size (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass rosepl_wrapper_mn::SdoTransferResponse
  :super ros::object
  :slots (_error _data _is_ready ))

(defmethod rosepl_wrapper_mn::SdoTransferResponse
  (:init
   (&key
    ((:error __error) 0)
    ((:data __data) 0)
    ((:is_ready __is_ready) nil)
    )
   (send-super :init)
   (setq _error (round __error))
   (setq _data (round __data))
   (setq _is_ready __is_ready)
   self)
  (:error
   (&optional __error)
   (if __error (setq _error __error)) _error)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:is_ready
   (&optional __is_ready)
   (if __is_ready (setq _is_ready __is_ready)) _is_ready)
  (:serialization-length
   ()
   (+
    ;; uint16 _error
    2
    ;; uint64 _data
    8
    ;; bool _is_ready
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _error
       (write-word _error s)
     ;; uint64 _data
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _data (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _data) (= (length (_data . bv)) 2)) ;; bignum
              (write-long (ash (elt (_data . bv) 0) 0) s)
              (write-long (ash (elt (_data . bv) 1) -1) s))
             ((and (class _data) (= (length (_data . bv)) 1)) ;; big1
              (write-long (elt (_data . bv) 0) s)
              (write-long (if (>= _data 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _data s)(write-long (if (>= _data 0) 0 #xffffffff) s)))
     ;; bool _is_ready
       (if _is_ready (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _error
     (setq _error (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint64 _data
     
#+(or :alpha :irix6 :x86_64)
      (setf _data (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _data (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; bool _is_ready
     (setq _is_ready (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass rosepl_wrapper_mn::SdoTransfer
  :super ros::object
  :slots ())

(setf (get rosepl_wrapper_mn::SdoTransfer :md5sum-) "7e21ae9a3de205dc320e50907fc35cdc")
(setf (get rosepl_wrapper_mn::SdoTransfer :datatype-) "rosepl_wrapper_mn/SdoTransfer")
(setf (get rosepl_wrapper_mn::SdoTransfer :request) rosepl_wrapper_mn::SdoTransferRequest)
(setf (get rosepl_wrapper_mn::SdoTransfer :response) rosepl_wrapper_mn::SdoTransferResponse)

(defmethod rosepl_wrapper_mn::SdoTransferRequest
  (:response () (instance rosepl_wrapper_mn::SdoTransferResponse :init)))

(setf (get rosepl_wrapper_mn::SdoTransferRequest :md5sum-) "7e21ae9a3de205dc320e50907fc35cdc")
(setf (get rosepl_wrapper_mn::SdoTransferRequest :datatype-) "rosepl_wrapper_mn/SdoTransferRequest")
(setf (get rosepl_wrapper_mn::SdoTransferRequest :definition-)
      "uint8 action
uint16 pid
uint8 node
uint16 index
uint16 subindex
bool write
uint64 data
uint16 size
---
uint16 error
uint64 data
bool is_ready
")

(setf (get rosepl_wrapper_mn::SdoTransferResponse :md5sum-) "7e21ae9a3de205dc320e50907fc35cdc")
(setf (get rosepl_wrapper_mn::SdoTransferResponse :datatype-) "rosepl_wrapper_mn/SdoTransferResponse")
(setf (get rosepl_wrapper_mn::SdoTransferResponse :definition-)
      "uint8 action
uint16 pid
uint8 node
uint16 index
uint16 subindex
bool write
uint64 data
uint16 size
---
uint16 error
uint64 data
bool is_ready
")



(provide :rosepl_wrapper_mn/SdoTransfer "7e21ae9a3de205dc320e50907fc35cdc")


