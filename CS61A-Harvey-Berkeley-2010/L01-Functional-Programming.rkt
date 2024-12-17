#lang simply-scheme

(+ 10 5)

(+ 10 5 (* 2 3)) ; 21

'(it is the main)

(define pi 3.14)

(* pi 5 5)

(define (square x)
  (* x x))

(square (* 2 3))

(butfirst 'hello) ; '(ello)

(first (first (butfirst '(hello world)))) ; 'h

(define (plural wd)
  (if (equal? (last wd) 'y)
      (word (bl wd) 'ies)
      (word wd 's)))

(plural 'city) ; 'cities
(plural 'racoon) ; 'racoons
(plural 'fly) ; 'flies

; ============================== ;

(define (pigl wd)
  (if (pigl-done? wd)
      (word wd 'ay)
      (pigl (word (bf wd) (first wd)))))

(define (pigl-done? wd)
  (vowels? (first wd)))

(define (vowels? letter)
  (member? letter '(a i u e o)))

(pigl 'scheme) ; 'emeschay
(pigl 'mtech) ; 'echmtay











