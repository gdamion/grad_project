; Auto-generated. Do not edit!


(cl:in-package rosepl_wrapper_cn-srv)


;//! \htmlinclude SignalSync-request.msg.html

(cl:defclass <SignalSync-request> (roslisp-msg-protocol:ros-message)
  ((do_add
    :reader do_add
    :initarg :do_add
    :type cl:boolean
    :initform cl:nil)
   (pid
    :reader pid
    :initarg :pid
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SignalSync-request (<SignalSync-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SignalSync-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SignalSync-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosepl_wrapper_cn-srv:<SignalSync-request> is deprecated: use rosepl_wrapper_cn-srv:SignalSync-request instead.")))

(cl:ensure-generic-function 'do_add-val :lambda-list '(m))
(cl:defmethod do_add-val ((m <SignalSync-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosepl_wrapper_cn-srv:do_add-val is deprecated.  Use rosepl_wrapper_cn-srv:do_add instead.")
  (do_add m))

(cl:ensure-generic-function 'pid-val :lambda-list '(m))
(cl:defmethod pid-val ((m <SignalSync-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosepl_wrapper_cn-srv:pid-val is deprecated.  Use rosepl_wrapper_cn-srv:pid instead.")
  (pid m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SignalSync-request>) ostream)
  "Serializes a message object of type '<SignalSync-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'do_add) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pid)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'pid)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SignalSync-request>) istream)
  "Deserializes a message object of type '<SignalSync-request>"
    (cl:setf (cl:slot-value msg 'do_add) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pid)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'pid)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SignalSync-request>)))
  "Returns string type for a service object of type '<SignalSync-request>"
  "rosepl_wrapper_cn/SignalSyncRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SignalSync-request)))
  "Returns string type for a service object of type 'SignalSync-request"
  "rosepl_wrapper_cn/SignalSyncRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SignalSync-request>)))
  "Returns md5sum for a message object of type '<SignalSync-request>"
  "242caa9d447108ca38b61cc3364649f4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SignalSync-request)))
  "Returns md5sum for a message object of type 'SignalSync-request"
  "242caa9d447108ca38b61cc3364649f4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SignalSync-request>)))
  "Returns full string definition for message of type '<SignalSync-request>"
  (cl:format cl:nil "bool do_add~%uint16 pid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SignalSync-request)))
  "Returns full string definition for message of type 'SignalSync-request"
  (cl:format cl:nil "bool do_add~%uint16 pid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SignalSync-request>))
  (cl:+ 0
     1
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SignalSync-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SignalSync-request
    (cl:cons ':do_add (do_add msg))
    (cl:cons ':pid (pid msg))
))
;//! \htmlinclude SignalSync-response.msg.html

(cl:defclass <SignalSync-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SignalSync-response (<SignalSync-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SignalSync-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SignalSync-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosepl_wrapper_cn-srv:<SignalSync-response> is deprecated: use rosepl_wrapper_cn-srv:SignalSync-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SignalSync-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosepl_wrapper_cn-srv:success-val is deprecated.  Use rosepl_wrapper_cn-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SignalSync-response>) ostream)
  "Serializes a message object of type '<SignalSync-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SignalSync-response>) istream)
  "Deserializes a message object of type '<SignalSync-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SignalSync-response>)))
  "Returns string type for a service object of type '<SignalSync-response>"
  "rosepl_wrapper_cn/SignalSyncResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SignalSync-response)))
  "Returns string type for a service object of type 'SignalSync-response"
  "rosepl_wrapper_cn/SignalSyncResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SignalSync-response>)))
  "Returns md5sum for a message object of type '<SignalSync-response>"
  "242caa9d447108ca38b61cc3364649f4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SignalSync-response)))
  "Returns md5sum for a message object of type 'SignalSync-response"
  "242caa9d447108ca38b61cc3364649f4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SignalSync-response>)))
  "Returns full string definition for message of type '<SignalSync-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SignalSync-response)))
  "Returns full string definition for message of type 'SignalSync-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SignalSync-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SignalSync-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SignalSync-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SignalSync)))
  'SignalSync-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SignalSync)))
  'SignalSync-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SignalSync)))
  "Returns string type for a service object of type '<SignalSync>"
  "rosepl_wrapper_cn/SignalSync")