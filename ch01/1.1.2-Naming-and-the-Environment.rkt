#lang sicp

; 1.1.2 - Naming and the Environment

(define size 2)

(* size 10)

(define pi 3.14159)

(define radius 10)

(* pi (* radius radius)) ; 314.159

(define circumference (* 2 pi radius))

circumference ; 62.8318
