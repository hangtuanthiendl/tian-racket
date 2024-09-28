#lang racket/gui

; Create a bitmap object
(define bmp (make-object bitmap% 100 100))

; Load the bitmap from a file
(send bmp load-file "x.jpg")

; Create a new frame to hold the canvas
(define frame
  (new frame%
    [label "Bitmap Example"]
    [width 200]
    [height 200]))

; Create a canvas to draw the bitmap on
(define cv
  (new canvas%
    [parent frame]
    [paint-callback (lambda (canvas dc)
                      (send dc draw-bitmap bmp 0 0))]))

; Show the frame
(send frame show #t)
