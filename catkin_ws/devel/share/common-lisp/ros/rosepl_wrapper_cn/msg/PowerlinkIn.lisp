; Auto-generated. Do not edit!


(cl:in-package rosepl_wrapper_cn-msg)


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
   (mm_x_pos
    :reader mm_x_pos
    :initarg :mm_x_pos
    :type cl:integer
    :initform 0)
   (mm_y_pos
    :reader mm_y_pos
    :initarg :mm_y_pos
    :type cl:integer
    :initform 0)
   (mm_z_pos
    :reader mm_z_pos
    :initarg :mm_z_pos
    :type cl:integer
    :initform 0)
   (mm_x_orient
    :reader mm_x_orient
    :initarg :mm_x_orient
    :type cl:integer
    :initform 0)
   (mm_y_orient
    :reader mm_y_orient
    :initarg :mm_y_orient
    :type cl:integer
    :initform 0)
   (mm_z_orient
    :reader mm_z_orient
    :initarg :mm_z_orient
    :type cl:integer
    :initform 0)
   (mm_w_orient
    :reader mm_w_orient
    :initarg :mm_w_orient
    :type cl:integer
    :initform 0)
   (odom_lwheel
    :reader odom_lwheel
    :initarg :odom_lwheel
    :type cl:integer
    :initform 0)
   (odom_rwheel
    :reader odom_rwheel
    :initarg :odom_rwheel
    :type cl:integer
    :initform 0))
)

(cl:defclass PowerlinkIn (<PowerlinkIn>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PowerlinkIn>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PowerlinkIn)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosepl_wrapper_cn-msg:<PowerlinkIn> is deprecated: use rosepl_wrapper_cn-msg:PowerlinkIn instead.")))

(cl:ensure-generic-function 'shm_name-val :lambda-list '(m))
(cl:defmethod shm_name-val ((m <PowerlinkIn>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosepl_wrapper_cn-msg:shm_name-val is deprecated.  Use rosepl_wrapper_cn-msg:shm_name instead.")
  (shm_name m))

(cl:ensure-generic-function 'pid-val :lambda-list '(m))
(cl:defmethod pid-val ((m <PowerlinkIn>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosepl_wrapper_cn-msg:pid-val is deprecated.  Use rosepl_wrapper_cn-msg:pid instead.")
  (pid m))

(cl:ensure-generic-function 'mm_x_pos-val :lambda-list '(m))
(cl:defmethod mm_x_pos-val ((m <PowerlinkIn>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosepl_wrapper_cn-msg:mm_x_pos-val is deprecated.  Use rosepl_wrapper_cn-msg:mm_x_pos instead.")
  (mm_x_pos m))

(cl:ensure-generic-function 'mm_y_pos-val :lambda-list '(m))
(cl:defmethod mm_y_pos-val ((m <PowerlinkIn>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosepl_wrapper_cn-msg:mm_y_pos-val is deprecated.  Use rosepl_wrapper_cn-msg:mm_y_pos instead.")
  (mm_y_pos m))

(cl:ensure-generic-function 'mm_z_pos-val :lambda-list '(m))
(cl:defmethod mm_z_pos-val ((m <PowerlinkIn>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosepl_wrapper_cn-msg:mm_z_pos-val is deprecated.  Use rosepl_wrapper_cn-msg:mm_z_pos instead.")
  (mm_z_pos m))

(cl:ensure-generic-function 'mm_x_orient-val :lambda-list '(m))
(cl:defmethod mm_x_orient-val ((m <PowerlinkIn>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosepl_wrapper_cn-msg:mm_x_orient-val is deprecated.  Use rosepl_wrapper_cn-msg:mm_x_orient instead.")
  (mm_x_orient m))

(cl:ensure-generic-function 'mm_y_orient-val :lambda-list '(m))
(cl:defmethod mm_y_orient-val ((m <PowerlinkIn>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosepl_wrapper_cn-msg:mm_y_orient-val is deprecated.  Use rosepl_wrapper_cn-msg:mm_y_orient instead.")
  (mm_y_orient m))

(cl:ensure-generic-function 'mm_z_orient-val :lambda-list '(m))
(cl:defmethod mm_z_orient-val ((m <PowerlinkIn>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosepl_wrapper_cn-msg:mm_z_orient-val is deprecated.  Use rosepl_wrapper_cn-msg:mm_z_orient instead.")
  (mm_z_orient m))

(cl:ensure-generic-function 'mm_w_orient-val :lambda-list '(m))
(cl:defmethod mm_w_orient-val ((m <PowerlinkIn>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosepl_wrapper_cn-msg:mm_w_orient-val is deprecated.  Use rosepl_wrapper_cn-msg:mm_w_orient instead.")
  (mm_w_orient m))

(cl:ensure-generic-function 'odom_lwheel-val :lambda-list '(m))
(cl:defmethod odom_lwheel-val ((m <PowerlinkIn>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosepl_wrapper_cn-msg:odom_lwheel-val is deprecated.  Use rosepl_wrapper_cn-msg:odom_lwheel instead.")
  (odom_lwheel m))

(cl:ensure-generic-function 'odom_rwheel-val :lambda-list '(m))
(cl:defmethod odom_rwheel-val ((m <PowerlinkIn>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosepl_wrapper_cn-msg:odom_rwheel-val is deprecated.  Use rosepl_wrapper_cn-msg:odom_rwheel instead.")
  (odom_rwheel m))
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
  (cl:let* ((signed (cl:slot-value msg 'mm_x_pos)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'mm_y_pos)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'mm_z_pos)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'mm_x_orient)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'mm_y_orient)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'mm_z_orient)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'mm_w_orient)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'odom_lwheel)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'odom_rwheel)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
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
      (cl:setf (cl:slot-value msg 'mm_x_pos) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mm_y_pos) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mm_z_pos) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mm_x_orient) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mm_y_orient) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mm_z_orient) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mm_w_orient) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'odom_lwheel) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'odom_rwheel) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PowerlinkIn>)))
  "Returns string type for a message object of type '<PowerlinkIn>"
  "rosepl_wrapper_cn/PowerlinkIn")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PowerlinkIn)))
  "Returns string type for a message object of type 'PowerlinkIn"
  "rosepl_wrapper_cn/PowerlinkIn")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PowerlinkIn>)))
  "Returns md5sum for a message object of type '<PowerlinkIn>"
  "43ef1fa8f235c243a4ab2c833daf73da")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PowerlinkIn)))
  "Returns md5sum for a message object of type 'PowerlinkIn"
  "43ef1fa8f235c243a4ab2c833daf73da")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PowerlinkIn>)))
  "Returns full string definition for message of type '<PowerlinkIn>"
  (cl:format cl:nil "# Generated with epl_ros_generator.py~%~%# openPOWERLINK variables:~%string shm_name~%uint16 pid~%~%# xap.h variables:~%# uint8 DigitalOutput~%int64 mm_x_pos~%int64 mm_y_pos~%int64 mm_z_pos~%int64 mm_x_orient~%int64 mm_y_orient~%int64 mm_z_orient~%int64 mm_w_orient~%int64 odom_lwheel~%int64 odom_rwheel~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PowerlinkIn)))
  "Returns full string definition for message of type 'PowerlinkIn"
  (cl:format cl:nil "# Generated with epl_ros_generator.py~%~%# openPOWERLINK variables:~%string shm_name~%uint16 pid~%~%# xap.h variables:~%# uint8 DigitalOutput~%int64 mm_x_pos~%int64 mm_y_pos~%int64 mm_z_pos~%int64 mm_x_orient~%int64 mm_y_orient~%int64 mm_z_orient~%int64 mm_w_orient~%int64 odom_lwheel~%int64 odom_rwheel~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PowerlinkIn>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'shm_name))
     2
     8
     8
     8
     8
     8
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PowerlinkIn>))
  "Converts a ROS message object to a list"
  (cl:list 'PowerlinkIn
    (cl:cons ':shm_name (shm_name msg))
    (cl:cons ':pid (pid msg))
    (cl:cons ':mm_x_pos (mm_x_pos msg))
    (cl:cons ':mm_y_pos (mm_y_pos msg))
    (cl:cons ':mm_z_pos (mm_z_pos msg))
    (cl:cons ':mm_x_orient (mm_x_orient msg))
    (cl:cons ':mm_y_orient (mm_y_orient msg))
    (cl:cons ':mm_z_orient (mm_z_orient msg))
    (cl:cons ':mm_w_orient (mm_w_orient msg))
    (cl:cons ':odom_lwheel (odom_lwheel msg))
    (cl:cons ':odom_rwheel (odom_rwheel msg))
))
