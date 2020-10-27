#lang racket
(require examples)

;;Defina uma função que receba como entrada uma lista lst de números em ordem não decrescente e
;;um número n e devolva uma lista com os elementos de lst e com n em ordem não decrescente

;; ListaDeNumeros, Numero -> ListaDeNumeros
(examples
 (check-equal? (sort-list empty 2) (cons 2 empty))
 (check-equal? (sort-list (cons 1 (cons 3 (cons 4 empty))) 2)
               (cons 1 (cons 2 (cons 3 (cons 4 empty)))))
 (check-equal? (sort-list (cons 1 (cons 2 (cons 3 empty))) 4)
               (cons 1 (cons 2 (cons 3 (cons 4 empty)))))
 (check-equal? (sort-list (cons 2 (cons 3 (cons 4 empty))) 1)
               (cons 1 (cons 2 (cons 3 (cons 4 empty)))))
 (check-equal? (sort-list (cons 1 (cons 2 (cons 3 empty))) 2) (cons 1 (cons 2 (cons 2 (cons 3 empty)))))
)

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

     
    

          