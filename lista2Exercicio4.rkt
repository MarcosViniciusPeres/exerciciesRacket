#lang racket

(require examples)

(define (continha a b)
  (let ([p (* 3 a)])
    (+ (- p b) (+ p) b)
  ))
