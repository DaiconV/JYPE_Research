
(cl:in-package :asdf)

(defsystem "pg70-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Close" :depends-on ("_package_Close"))
    (:file "_package_Close" :depends-on ("_package"))
    (:file "Home" :depends-on ("_package_Home"))
    (:file "_package_Home" :depends-on ("_package"))
    (:file "Move" :depends-on ("_package_Move"))
    (:file "_package_Move" :depends-on ("_package"))
    (:file "Open" :depends-on ("_package_Open"))
    (:file "_package_Open" :depends-on ("_package"))
    (:file "Stop" :depends-on ("_package_Stop"))
    (:file "_package_Stop" :depends-on ("_package"))
  ))