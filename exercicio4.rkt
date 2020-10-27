#lang racket
(require examples)

;; Defina uma funcao que receba uma lista e retorne uma lista inversa.
;; ListaDeNumero -> ListaDeNumero

#;
(examples
 (check-equal? (inverte empty) empty)
 (check-equal? (inverte (cons 1 (cons 2 (cons 3 empty)))) (cons 3 (cons 2 (cons 1 empty))))
)


;; Modelo para lista
;;(define (fn-para-ldn ldn)
;;  (cond
;;    [(empty? ldn) ...]
;;    [else ... (first ldn)
;;          ... (fn-para-ldn (rest ldn)) ... ]))

(define test (cons 1 (cons 2 (cons 3 empty))))

(define (insertEnd ldn numero)
  (cond
    [(empty? ldn) (cons numero empty)]
    [else (cons (first ldn) (insertEnd (rest ldn) numero)) ]))

(define (inverte lst)
  (cond
    [(empty? lst) empty]
    [else (insertEnd (inverte (rest lst) ) (first lst))]))
                    
                 











