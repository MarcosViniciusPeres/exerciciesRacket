#lang racket

(require examples)

(define (count function lst)
  (cond
       [(empty? lst) 0]
       [(function (first lst)) (+ 1 (count function (rest lst)))]
       [else (count function (rest lst))]
       )
  )