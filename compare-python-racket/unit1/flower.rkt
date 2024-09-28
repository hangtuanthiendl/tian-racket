#lang racket
(require 2htdp/image)

; Create leaves (green ellipses)
(define leaf1
  (rotate -45 (ellipse 40 20 'solid "olivedrab")))
(define leaf2
  (rotate 45 (ellipse 60 20 'solid "olivedrab")))


; Position the leaves
(define leaves
  (beside/align 'center
    leaf1
    leaf2))

; Create the flower
(define flower
  (above
    (beside 
      (crop 40 0 40 40 (circle 40 'solid "lightcoral"))
      (crop 0 0 40 40 (circle 40 'solid "palevioletred")))
    (beside 
      (crop 0 40 40 40 (circle 40 'solid "lightcoral"))
      (crop 40 40 40 40 (circle 40 'solid "palevioletred")))))


; Create the stem (a green rectangle)
(define stem
  (scene+curve (rectangle 100 100 "solid" "white")
               -40 -27 0 1
               120 120 0 1
               "olivedrab"))


(define tulip
  (above
   flower
    (overlay/align 'center 'top
      leaves
      stem)
    ))

(text/font "Hello! I am Thien Hang" 24 "olivedrab"
             "Gill Sans" 'swiss 'normal 'bold #f)
; Display the tulip
tulip

(overlay (rectangle 40 100 "solid" "orange")
           (ellipse 80 80 "solid" "orange"))

