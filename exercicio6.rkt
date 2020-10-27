#lang racket

(require examples)

;;Defina uma função que receba como entrada uma lista lst de números naturais e devolva uma lista
;;que é como lst mas sem os números pares.

;; ListaDeNumero -> ListaDeNumero

(examples
 (check-equal? (listWithoutPair empty) empty)
 (check-equal? (listWithoutPair (cons 1 (cons 2 (cons 3 empty)))) (cons 1 (cons 3 empty)))
 (check-equal? (listWithoutPair (cons 1 (cons 3 empty))) (cons 1 (cons 3 empty)))
 )


;; Modelo para lista
;;(define (fn-para-ldn ldn)
;;  (cond
;;    [(empty? ldn) ...]
;;    [else ... (first ldn)
;;          ... (fn-para-ldn (rest ldn)) ... ]))


(define (listWithoutPair lst)
  (cond
   [(empty? lst) empty]
   [else (if (or (< (first lst) 0 ) (= (modulo (first lst) 2) 0))
            (listWithoutPair (rest lst))
            (cons (first lst) (listWithoutPair (rest lst))))]))

             
    