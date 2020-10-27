#lang racket
(require examples)

;; Defina uma função que receba com entrada uma lista lst e um elemento a 
;; e devolva uma lista que é como lst mas sem as ocorrências de a.

;; (ListaNumeros, Numero) -> ListaNumeros

;; Exemplos de Funções
(examples
 (check-equal? (remove-list empty 4) empty)
 (check-equal? (remove-list (cons 4 (cons 3 (cons 2 empty))) 4) (cons 3(cons 2 empty)))
 (check-equal? (remove-list (cons 4 (cons 4 (cons 2 empty))) 4) (cons 2 empty))
 )

;; Modelo para lista
;;(define (fn-para-ldn ldn)
;;  (cond
;;    [(empty? ldn) ...]
;;    [else ... (first ldn)
;;          ... (fn-para-ldn (rest ldn)) ... ]))

(define (remove-list ldn numero)
  (cond
    [(empty? ldn) empty]
    [else
     (if (= (first ldn) numero)
         (remove-list (rest ldn) numero)
         (cons (first ldn) (remove-list (rest ldn) numero)))]))

