(ql:quickload '(cl-who hunchentoot parenscript))
(defpackage :diebag (:use :cl :cl-who :hunchentoot :parenscript))

(defclass roll ()
  ((id :reader id :initarg :id) (result :accessor result :initarg :result)))

(defvar *rolls* '())

(defun roll-from-id (id) (find id *rolls* :test #'string-equal :key #'id))

(defun set-roll (id result) (push (make-instance 'roll :id id :result result) *rolls*))
