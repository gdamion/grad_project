; Auto-generated. Do not edit!


(cl:in-package rosepl_wrapper_mn-srv)


;//! \htmlinclude SdoTransfer-request.msg.html

(cl:defclass <SdoTransfer-request> (roslisp-msg-protocol:ros-message)
  ((action
    :reader action
    :initarg :action
    :type cl:fixnum
    :initform 0)
   (pid
    :reader pid
    :initarg :pid
    :type cl:fixnum
    :initform 0)
   (node
    :reader node
    :initarg :node
    :type cl:fixnum
    :initform 0)
   (index
    :reader index
    :initarg :index
    :type cl:fixnum
    :initform 0)
   (subindex
    :reader subindex
    :initarg :subindex
    :type cl:fixnum
    :initform 0)
   (write
    :reader write
    :initarg :write
    :type cl:boolean
    :initform cl:nil)
   (data
    :reader data
    :initarg :data
    :type cl:integer
    :initform 0)
   (size
    :reader size
    :initarg :size
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SdoTransfer-request (<SdoTransfer-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SdoTransfer-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SdoTransfer-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosepl_wrapper_mn-srv:<SdoTransfer-request> is deprecated: use rosepl_wrapper_mn-srv:SdoTransfer-request instead.")))

(cl:ensure-generic-function 'action-val :lambda-list '(m))
(cl:defmethod action-val ((m <SdoTransfer-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosepl_wrapper_mn-srv:action-val is deprecated.  Use rosepl_wrapper_mn-srv:action instead.")
  (action m))

(cl:ensure-generic-function 'pid-val :lambda-list '(m))
(cl:defmethod pid-val ((m <SdoTransfer-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosepl_wrapper_mn-srv:pid-val is deprecated.  Use rosepl_wrapper_mn-srv:pid instead.")
  (pid m))

(cl:ensure-generic-function 'node-val :lambda-list '(m))
(cl:defmethod node-val ((m <SdoTransfer-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosepl_wrapper_mn-srv:node-val is deprecated.  Use rosepl_wrapper_mn-srv:node instead.")
  (node m))

(cl:ensure-generic-function 'index-val :lambda-list '(m))
(cl:defmethod index-val ((m <SdoTransfer-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosepl_wrapper_mn-srv:index-val is deprecated.  Use rosepl_wrapper_mn-srv:index instead.")
  (index m))

(cl:ensure-generic-function 'subindex-val :lambda-list '(m))
(cl:defmethod subindex-val ((m <SdoTransfer-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosepl_wrapper_mn-srv:subindex-val is deprecated.  Use rosepl_wrapper_mn-srv:subindex instead.")
  (subindex m))

(cl:ensure-generic-function 'write-val :lambda-list '(m))
(cl:defmethod write-val ((m <SdoTransfer-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosepl_wrapper_mn-srv:write-val is deprecated.  Use rosepl_wrapper_mn-srv:write instead.")
  (write m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <SdoTransfer-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosepl_wrapper_mn-srv:data-val is deprecated.  Use rosepl_wrapper_mn-srv:data instead.")
  (data m))

(cl:ensure-generic-function 'size-val :lambda-list '(m))
(cl:defmethod size-val ((m <SdoTransfer-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosepl_wrapper_mn-srv:size-val is deprecated.  Use rosepl_wrapper_mn-srv:size instead.")
  (size m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SdoTransfer-request>) ostream)
  "Serializes a message object of type '<SdoTransfer-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'action)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pid)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'pid)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'index)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'index)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'subindex)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'subindex)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'write) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'data)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'data)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'data)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'data)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'data)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'data)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'data)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'data)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'size)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'size)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SdoTransfer-request>) istream)
  "Deserializes a message object of type '<SdoTransfer-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'action)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pid)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'pid)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'node)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'index)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'index)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'subindex)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'subindex)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'write) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'data)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'data)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'data)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'data)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'data)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'data)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'data)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'data)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'size)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'size)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SdoTransfer-request>)))
  "Returns string type for a service object of type '<SdoTransfer-request>"
  "rosepl_wrapper_mn/SdoTransferRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SdoTransfer-request)))
  "Returns string type for a service object of type 'SdoTransfer-request"
  "rosepl_wrapper_mn/SdoTransferRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SdoTransfer-request>)))
  "Returns md5sum for a message object of type '<SdoTransfer-request>"
  "7e21ae9a3de205dc320e50907fc35cdc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SdoTransfer-request)))
  "Returns md5sum for a message object of type 'SdoTransfer-request"
  "7e21ae9a3de205dc320e50907fc35cdc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SdoTransfer-request>)))
  "Returns full string definition for message of type '<SdoTransfer-request>"
  (cl:format cl:nil "uint8 action~%uint16 pid~%uint8 node~%uint16 index~%uint16 subindex~%bool write~%uint64 data~%uint16 size~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SdoTransfer-request)))
  "Returns full string definition for message of type 'SdoTransfer-request"
  (cl:format cl:nil "uint8 action~%uint16 pid~%uint8 node~%uint16 index~%uint16 subindex~%bool write~%uint64 data~%uint16 size~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SdoTransfer-request>))
  (cl:+ 0
     1
     2
     1
     2
     2
     1
     8
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SdoTransfer-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SdoTransfer-request
    (cl:cons ':action (action msg))
    (cl:cons ':pid (pid msg))
    (cl:cons ':node (node msg))
    (cl:cons ':index (index msg))
    (cl:cons ':subindex (subindex msg))
    (cl:cons ':write (write msg))
    (cl:cons ':data (data msg))
    (cl:cons ':size (size msg))
))
;//! \htmlinclude SdoTransfer-response.msg.html

(cl:defclass <SdoTransfer-response> (roslisp-msg-protocol:ros-message)
  ((error
    :reader error
    :initarg :error
    :type cl:fixnum
    :initform 0)
   (data
    :reader data
    :initarg :data
    :type cl:integer
    :initform 0)
   (is_ready
    :reader is_ready
    :initarg :is_ready
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SdoTransfer-response (<SdoTransfer-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SdoTransfer-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SdoTransfer-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosepl_wrapper_mn-srv:<SdoTransfer-response> is deprecated: use rosepl_wrapper_mn-srv:SdoTransfer-response instead.")))

(cl:ensure-generic-function 'error-val :lambda-list '(m))
(cl:defmethod error-val ((m <SdoTransfer-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosepl_wrapper_mn-srv:error-val is deprecated.  Use rosepl_wrapper_mn-srv:error instead.")
  (error m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <SdoTransfer-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosepl_wrapper_mn-srv:data-val is deprecated.  Use rosepl_wrapper_mn-srv:data instead.")
  (data m))

(cl:ensure-generic-function 'is_ready-val :lambda-list '(m))
(cl:defmethod is_ready-val ((m <SdoTransfer-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosepl_wrapper_mn-srv:is_ready-val is deprecated.  Use rosepl_wrapper_mn-srv:is_ready instead.")
  (is_ready m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SdoTransfer-response>) ostream)
  "Serializes a message object of type '<SdoTransfer-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'error)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'data)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'data)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'data)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'data)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'data)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'data)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'data)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'data)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_ready) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SdoTransfer-response>) istream)
  "Deserializes a message object of type '<SdoTransfer-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'error)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'data)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'data)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'data)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'data)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'data)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'data)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'data)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'data)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'is_ready) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SdoTransfer-response>)))
  "Returns string type for a service object of type '<SdoTransfer-response>"
  "rosepl_wrapper_mn/SdoTransferResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SdoTransfer-response)))
  "Returns string type for a service object of type 'SdoTransfer-response"
  "rosepl_wrapper_mn/SdoTransferResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SdoTransfer-response>)))
  "Returns md5sum for a message object of type '<SdoTransfer-response>"
  "7e21ae9a3de205dc320e50907fc35cdc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SdoTransfer-response)))
  "Returns md5sum for a message object of type 'SdoTransfer-response"
  "7e21ae9a3de205dc320e50907fc35cdc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SdoTransfer-response>)))
  "Returns full string definition for message of type '<SdoTransfer-response>"
  (cl:format cl:nil "uint16 error~%uint64 data~%bool is_ready~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SdoTransfer-response)))
  "Returns full string definition for message of type 'SdoTransfer-response"
  (cl:format cl:nil "uint16 error~%uint64 data~%bool is_ready~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SdoTransfer-response>))
  (cl:+ 0
     2
     8
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SdoTransfer-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SdoTransfer-response
    (cl:cons ':error (error msg))
    (cl:cons ':data (data msg))
    (cl:cons ':is_ready (is_ready msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SdoTransfer)))
  'SdoTransfer-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SdoTransfer)))
  'SdoTransfer-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SdoTransfer)))
  "Returns string type for a service object of type '<SdoTransfer>"
  "rosepl_wrapper_mn/SdoTransfer")