#lang sicp

; 1.1.7: Example - Square Roots by Newton's Method

(define (square x) (* x x))

;(define (sqrt x)
;  (the y (and (> y 0)
;              (= (square y) x))))

; Newton's Method of Successive Approximations
; 0.5  2/0.5 = 4  (0.5 + 4) / 2 = 2.25
; 2.25  2/2.25 = 0.889  (2.25 + 0.889) / 2 = 1.569
; 1.569  2/1.569 = 1.275 (1.569 + 1.275) / 2 = 1.422
; 1.442  2/1.422 = 1.406  (1.442 + 1.406) / 2 = 1.424
; 1.424  2/1.424 = 1.404  (1.424 + 1.404) / 2 = 1.414

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (sqrt x)
  (sqrt-iter 1.0 x))

(sqrt 9) ; 3.00009155413138

(sqrt 2) ; 1.4142156862745097

































