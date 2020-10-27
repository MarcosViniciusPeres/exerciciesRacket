#lang racket
(require examples)

;; Defina uma função que receba como entrada uma lista lst e devolva uma nova lista que é
;; como lst com apenas uma ocorrência dos elementos repetidos consecutivos.

;; ListaNumero -> ListaNumero

;; Inserir uma lista de numeros e retornar uma lista de numeros sem numeros repetidos.

(examples
 (check-equal? (no-repeat-list empty) empty)
 (check-equal? (no-repeat-list (list 1 2 3)) (list 1 2 3))
 (check-equal? (no-repeat-list (list 1 1 2 2 3 3)) (list 1 2 3))
 )

;; Modelo para lista
;;(define (fn-para-ldn ldn)
;;  (cond
;;    [(empty? ldn) ...]
;;    [else ... (first ldn)
;;          ... (fn-para-ldn (rest ldn)) ... ]))

(define (verify-list lst numero)
  (cond
    [(empty? lst) (cons numero empty)]
    [(= (first lst) numero) (verify-list (rest lst) (first lst))]
    [else (cons numero (verify-list (rest lst) (first lst)))]))

;; Modelo para lista
(define (no-repeat-list lst)
  (cond
    [(empty? lst) empty]
    [(verify-list (rest lst) (first lst))]))
         