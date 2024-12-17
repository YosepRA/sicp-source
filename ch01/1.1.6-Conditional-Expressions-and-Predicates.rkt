#lang sicp

(define (abs x)
  (cond ((> x 0) x)
        ((= x 0) 0)
        ((< x 0) (- x))))

(abs 10) ; 10
(abs 0) ; 0
(abs -10) ; 10

(define (absTwo x)
  (cond ((< x 0) (- x))
        (else x)))

(absTwo 12)
(absTwo 0)
(absTwo -12)

; Special form 'if' for when there are precisely two cases.
; This conditional statement can only support one expression per case (not multiline).
(define (absThree x)
  (if (< x 0) (- x) x))

(absThree 15)
(absThree 0)
(absThree -15)
