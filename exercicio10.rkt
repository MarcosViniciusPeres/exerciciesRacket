#lang racket
(require examples)

;;Defina uma função que receba como entrada uma lista de números e devolva uma lista com os mesmos
;;valores de entrada mas em ordem não decrescente. (Lembre-se de aplicar a receita de projeto, não
;;tente implementar um método de ordenação qualquer, a receita te levará a implementar um método
;;específico). Dica: use a função insere-ordenado.

;; ListaDeNumeros -> ListaDeNumeros
;; Entrar com uma lista qualquer e retornar uma lista em ordem crescente ordenado.

(examples
 (check-equal? (ordena empty)
               empty)
 (check-equal? (ordena (list 2))
               (list 2))
 (check-equal? (ordena (list 3 2))
               (list 2 3))
 (check-equal? (ordena (list 5 -2 3))
               (list -2 3 5))
 (check-equal? (ordena (list 1 9 5 -2 8 3))
               (list -2 1 3 5 8 9)))


;; Modelo para lista
;;(define (fn-para-ldn ldn)
;;  (cond
;;    [(empty? ldn) ...]
;;    [else ... (first ldn)
;;          ... (fn-para-ldn (rest ldn)) ... ]))

;; Modelo para lista
(define (sort-list lst numero)
  (cond
    [(empty? lst) (cons numero empty)]
    [(< numero (first lst)) (cons numero lst)]
    [else (cons (first lst)
                (sort-list (rest lst) numero))]))

(define (ordena lst)
  (cond
    [(empty? lst) empty]
    [else (sort-list (ordena (rest lst)) (first lst))]))


