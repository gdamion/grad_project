; Auto-generated. Do not edit!


(cl:in-package rosepl_wrapper_mn-msg)


;//! \htmlinclude PowerlinkIn.msg.html

(cl:defclass <PowerlinkIn> (roslisp-msg-protocol:ros-message)
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
   (cmdvel_lwheel
    :reader cmdvel_lwheel
    :initarg :cmdvel_lwheel
    :type cl:integer
    :initform 0)
   (cmdvel_rwheel
    :reader cmdvel_rwheel
    :initarg :cmdvel_rwheel
    :type cl:integer
    :initform 0))
)

(cl:defclass PowerlinkIn (<PowerlinkIn>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PowerlinkIn>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PowerlinkIn)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosepl_wrapper_mn-msg:<PowerlinkIn> is deprecated: use rosepl_wrapper_mn-msg:PowerlinkIn instead.")))

(cl:ensure-generic-function 'shm_name-val :lambda-list '(m))
(cl:defmethod shm_name-val ((m <PowerlinkIn>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosepl_wrapper_mn-msg:shm_name-val is deprecated.  Use rosepl_wrapper_mn-msg:shm_name instead.")
  (shm_name m))

(cl:ensure-generic-function 'pid-val :lambda-list '(m))
(cl:defmethod pid-val ((m <PowerlinkIn>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosepl_wrapper_mn-msg:pid-val is deprecated.  Use rosepl_wrapper_mn-msg:pid instead.")
  (pid m))

(cl:ensure-generic-function 'cmdvel_lwheel-val :lambda-list '(m))
(cl:defmethod cmdvel_lwheel-val ((m <PowerlinkIn>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosepl_wrapper_mn-msg:cmdvel_lwheel-val is deprecated.  Use rosepl_wrapper_mn-msg:cmdvel_lwheel instead.")
  (cmdvel_lwheel m))

(cl:ensure-generic-function 'cmdvel_rwheel-val :lambda-list '(m))
(cl:defmethod cmdvel_rwheel-val ((m <PowerlinkIn>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosepl_wrapper_mn-msg:cmdvel_rwheel-val is deprecated.  Use rosepl_wrapper_mn-msg:cmdvel_rwheel instead.")
  (cmdvel_rwheel m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PowerlinkIn>) ostream)
  "Serializes a message object of type '<PowerlinkIn>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'shm_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'shm_name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pid)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'pid)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'cmdvel_lwheel)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'cmdvel_rwheel)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PowerlinkIn>) istream)
  "Deserializes a message object of type '<PowerlinkIn>"
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
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cmdvel_lwheel) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cmdvel_rwheel) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PowerlinkIn>)))
  "Returns string type for a message object of type '<PowerlinkIn>"
  "rosepl_wrapper_mn/PowerlinkIn")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PowerlinkIn)))
  "Returns string type for a message object of type 'PowerlinkIn"
  "rosepl_wrapper_mn/PowerlinkIn")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PowerlinkIn>)))
  "Returns md5sum for a message object of type '<PowerlinkIn>"
  "084629ffa8e3d4d7e9182ff9bbabd096")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PowerlinkIn)))
  "Returns md5sum for a message object of type 'PowerlinkIn"
  "084629ffa8e3d4d7e9182ff9bbabd096")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PowerlinkIn>)))
  "Returns full string definition for message of type '<PowerlinkIn>"
  (cl:format cl:nil "# Generated with epl_ros_generator.py~%~%# openPOWERLINK variables:~%string shm_name~%uint16 pid~%~%# xap.h variables:~%int64 cmdvel_lwheel~%int64 cmdvel_rwheel~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PowerlinkIn)))
  "Returns full string definition for message of type 'PowerlinkIn"
  (cl:format cl:nil "# Generated with epl_ros_generator.py~%~%# openPOWERLINK variables:~%string shm_name~%uint16 pid~%~%# xap.h variables:~%int64 cmdvel_lwheel~%int64 cmdvel_rwheel~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PowerlinkIn>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'shm_name))
     2
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PowerlinkIn>))
  "Converts a ROS message object to a list"
  (cl:list 'PowerlinkIn
    (cl:cons ':shm_name (shm_name msg))
    (cl:cons ':pid (pid msg))
    (cl:cons ':cmdvel_lwheel (cmdvel_lwheel msg))
    (cl:cons ':cmdvel_rwheel (cmdvel_rwheel msg))
))
