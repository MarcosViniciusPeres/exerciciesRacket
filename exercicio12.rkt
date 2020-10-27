#lang racket
(require examples)

;; Numero -> Numero
;; Defina uma função que calcule o fatorial de um número.

;; Entrar com um numero e retornar o fatorial dele.

(examples
 (check-equal? (factorial 5) 120)
 (check-equal? (factorial 0) 1)
 (check-equal? (factorial 1) 1)
 )

;; Modelo do Fatorial
;;(define (factorial number)
;;  (cond
;;    [(= 0 number) ...]
;;    [(= 1 number) ...]
;;    [else ... (factorial (number) ))...]))


(define (factorial number)
  (cond
    [(= 0 number) 1]
    [(= 1 number) (* number 1)]
    [else (* number (factorial (sub1 number)))]))
          
