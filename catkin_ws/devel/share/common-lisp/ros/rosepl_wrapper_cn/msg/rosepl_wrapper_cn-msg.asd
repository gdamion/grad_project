
(cl:in-package :asdf)

(defsystem "rosepl_wrapper_cn-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "PowerlinkIn" :depends-on ("_package_PowerlinkIn"))
    (:file "_package_PowerlinkIn" :depends-on ("_package"))
    (:file "PowerlinkOut" :depends-on ("_package_PowerlinkOut"))
    (:file "_package_PowerlinkOut" :depends-on ("_package"))
  ))