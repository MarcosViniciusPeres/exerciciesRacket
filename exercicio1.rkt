#lang racket
(require examples)

;; Defina uma função que calcule a quantidade de elementos de uma lista.
;; ListaDeNumeros -> Numero

;; Exemplos da Função
(examples
 (check-equal? (tamLista empty) 0)
 (check-equal? (tamLista (cons 2 empty)) 1)
 (check-equal? (tamLista (cons 2(cons 3(cons 4 empty)))) 3)
 )

;; Modelo para lista
;;(define (fn-para-ldn ldn)
;;  (cond
;;    [(empty? ldn) ...]
;;    [else ... (first ldn)
;;          ... (fn-para-ldn (rest ldn)) ... ]))

;; Corpo
(define (tamLista lst)
  (cond
    [(empty? lst)  0]
    [else (+ 1 (tamLista (rest lst)))]))


