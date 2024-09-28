#lang racket
(require 2htdp/image)

; Create the sun (a yellow circle)
(define sun
  (circle 50 'solid "yellow"))

; Create two mountains using triangles
(define left-mountain
  (triangle 150 'solid "darkgreen"))
(define right-mountain
  (triangle 120 'solid "forestgreen"))

;

; Combine the mountains and the sun
(define scene
  (overlay/align 'center 'top
    sun
    (beside/align 'bottom
      left-mountain
      right-mountain)))

(ellipse 100 60 "solid" "blue")


(define dog
  (overlay/align 'center 'top
    (circle 20 'solid "brown")
    ; (rectangle 40 20 'solid "brown")
    ; (rectangle 10 10 'solid "black")
    ; (circle 20 'solid "brown")
  ))

; Display the scene
scene
dog