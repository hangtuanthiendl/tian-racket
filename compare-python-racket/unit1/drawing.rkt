#lang racket
(require 2htdp/image)

; Define some basic shapes
(define red-circle (circle 30 'solid "red"))
(define blue-rectangle (rectangle 50 30 'solid "blue"))
(define green-triangle (triangle 40 'solid "green"))

; Create the text "Hello, I am Thien"
(define text-hello (text "Hello! I am Thien Hang!" 20 "black"))

; Arrange the shapes and text
(define design
  (above
   (beside red-circle blue-rectangle green-triangle)
   (above text-hello text-i-am text-thien)))

; Display the design
design
