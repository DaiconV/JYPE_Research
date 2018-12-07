
(cl:in-package :asdf)

(defsystem "pa10controller-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "addToQueue" :depends-on ("_package_addToQueue"))
    (:file "_package_addToQueue" :depends-on ("_package"))
    (:file "clearJointQueue" :depends-on ("_package_clearJointQueue"))
    (:file "_package_clearJointQueue" :depends-on ("_package"))
    (:file "getJointConfig" :depends-on ("_package_getJointConfig"))
    (:file "_package_getJointConfig" :depends-on ("_package"))
    (:file "setJointConfig" :depends-on ("_package_setJointConfig"))
    (:file "_package_setJointConfig" :depends-on ("_package"))
    (:file "startPA10" :depends-on ("_package_startPA10"))
    (:file "_package_startPA10" :depends-on ("_package"))
    (:file "startQueue" :depends-on ("_package_startQueue"))
    (:file "_package_startQueue" :depends-on ("_package"))
  ))