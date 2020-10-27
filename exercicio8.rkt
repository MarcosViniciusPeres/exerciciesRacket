#lang racket
(require examples)

;; Defina uma função que encontre o valor máximo de uma lista de números.
;; ListaDeNumeros -> Numero 

(examples
 (check-equal? (list-max-value empty) 0)
 (check-equal? (list-max-value (cons 1 (cons 2 (cons 3 empty)))) 3)
 (check-equal? (list-max-value (cons 3 (cons 2 (cons 1 empty)))) 3)
 (check-equal? (list-max-value (cons 1 empty)) 1)
)

;; Modelo para lista
;;(define (fn-para-ldn ldn)
;;  (cond
;;    [(empty? ldn) ...]
;;    [else ... (first ldn)
;;          ... (fn-para-ldn (rest ldn)) ... ]))

(define (comparation a b)
  (if (>= a b) a b))

(define (list-max-value lst)
  (cond
    [(empty? lst) 0]
    [(empty? (rest lst)) (first lst)]
    [(comparation (first lst)
           (list-max-value (rest lst)))]))
    
         
    
