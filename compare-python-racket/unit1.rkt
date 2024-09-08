#lang Racket

;; Racket example
(define (apply-twice func value)
  (func (func value)))

(displayln (apply-twice (lambda (x) (* x 2)) 5))  ;; Output: 20
