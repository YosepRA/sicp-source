#lang sicp

; 1.1.4 - Compound Procedures

(define (square x) (* x x))

(square 10) ; 100
(square (+ 2 10)) ; 144
(square (+ 2 3)) ; 25
(square (square 10)) ; 10^4
(square (square 3)) ; 81
(+ (square 2) (square 3)) ; 13

(define (sum-of-squares x y)
  (+ (square x) (square y)))

(sum-of-squares 2 3) ; 13
(sum-of-squares 2 4) ; 20
(sum-of-squares (+ 2 3) (* 2 4)) ; 89

(define (f a)
  (sum-of-squares (+ a 1) (* a 2)))

(f 5) ; 136
(f 10) ; 521
(f 21) ; 2248
