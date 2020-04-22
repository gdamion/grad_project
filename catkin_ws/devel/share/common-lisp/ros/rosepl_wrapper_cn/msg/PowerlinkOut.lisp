; Auto-generated. Do not edit!


(cl:in-package rosepl_wrapper_cn-msg)


;//! \htmlinclude PowerlinkOut.msg.html

(cl:defclass <PowerlinkOut> (roslisp-msg-protocol:ros-message)
  ((shm_name
    :reader shm_name
    :initarg :shm_name
    :type cl:string
    :initform "")
   (pid
    :reader pid
    :initarg :pid
    :type cl:fixnum
    :initform 0)
   (DigitalInput
    :reader DigitalInput
    :initarg :DigitalInput
    :type cl:fixnum
    :initform 0))
)

(cl:defclass PowerlinkOut (<PowerlinkOut>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PowerlinkOut>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PowerlinkOut)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosepl_wrapper_cn-msg:<PowerlinkOut> is deprecated: use rosepl_wrapper_cn-msg:PowerlinkOut instead.")))

(cl:ensure-generic-function 'shm_name-val :lambda-list '(m))
(cl:defmethod shm_name-val ((m <PowerlinkOut>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosepl_wrapper_cn-msg:shm_name-val is deprecated.  Use rosepl_wrapper_cn-msg:shm_name instead.")
  (shm_name m))

(cl:ensure-generic-function 'pid-val :lambda-list '(m))
(cl:defmethod pid-val ((m <PowerlinkOut>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosepl_wrapper_cn-msg:pid-val is deprecated.  Use rosepl_wrapper_cn-msg:pid instead.")
  (pid m))

(cl:ensure-generic-function 'DigitalInput-val :lambda-list '(m))
(cl:defmethod DigitalInput-val ((m <PowerlinkOut>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosepl_wrapper_cn-msg:DigitalInput-val is deprecated.  Use rosepl_wrapper_cn-msg:DigitalInput instead.")
  (DigitalInput m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PowerlinkOut>) ostream)
  "Serializes a message object of type '<PowerlinkOut>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'shm_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'shm_name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pid)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'pid)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'DigitalInput)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PowerlinkOut>) istream)
  "Deserializes a message object of type '<PowerlinkOut>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'shm_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'shm_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pid)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'pid)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'DigitalInput)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PowerlinkOut>)))
  "Returns string type for a message object of type '<PowerlinkOut>"
  "rosepl_wrapper_cn/PowerlinkOut")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PowerlinkOut)))
  "Returns string type for a message object of type 'PowerlinkOut"
  "rosepl_wrapper_cn/PowerlinkOut")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PowerlinkOut>)))
  "Returns md5sum for a message object of type '<PowerlinkOut>"
  "8531aafcaf639a04b50bb4ea10f69ede")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PowerlinkOut)))
  "Returns md5sum for a message object of type 'PowerlinkOut"
  "8531aafcaf639a04b50bb4ea10f69ede")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PowerlinkOut>)))
  "Returns full string definition for message of type '<PowerlinkOut>"
  (cl:format cl:nil "# Generated with epl_ros_generator.py~%~%# openPOWERLINK variables:~%string shm_name~%uint16 pid~%~%# xap.h variables:~%uint8 DigitalInput~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PowerlinkOut)))
  "Returns full string definition for message of type 'PowerlinkOut"
  (cl:format cl:nil "# Generated with epl_ros_generator.py~%~%# openPOWERLINK variables:~%string shm_name~%uint16 pid~%~%# xap.h variables:~%uint8 DigitalInput~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PowerlinkOut>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'shm_name))
     2
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PowerlinkOut>))
  "Converts a ROS message object to a list"
  (cl:list 'PowerlinkOut
    (cl:cons ':shm_name (shm_name msg))
    (cl:cons ':pid (pid msg))
    (cl:cons ':DigitalInput (DigitalInput msg))
))
