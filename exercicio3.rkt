#lang racket
(require examples)
;; Defina uma lista e um elemento a e devolva uma lista com esse a no final
;; (ListaNumeros, Numero) -> ListaNumeros

;;Exmplos
(examples
 (check-equal? (insertEnd empty 2) (cons 2 empty))
 (check-equal? (insertEnd (cons 2 (cons 3 (cons 4 empty))) 9) (cons 2 (cons 3 (cons 4 (cons 9 empty)))))
 )

;; Modelo para lista
;;(define (fn-para-ldn ldn)
;;  (cond
;;    [(empty? ldn) ...]
;;    [else ... (first ldn)
;;          ... (fn-para-ldn (rest ldn)) ... ]))

(define (insertEnd ldn numero)
  (cond
    [(empty? ldn) (cons numero empty)]
    [else (cons (first ldn) (insertEnd (rest ldn) numero)) ]))