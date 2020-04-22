
(cl:in-package :asdf)

(defsystem "rosepl_wrapper_cn-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "SdoTransfer" :depends-on ("_package_SdoTransfer"))
    (:file "_package_SdoTransfer" :depends-on ("_package"))
    (:file "SignalSync" :depends-on ("_package_SignalSync"))
    (:file "_package_SignalSync" :depends-on ("_package"))
  ))