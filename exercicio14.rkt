#lang racket
(require examples)


;; Numero, Numero -> Numero
;;Defina uma função que receba como entrada um número qualquer 𝑎 e um número natural 𝑛 e calcule
;;o valor 𝑎N

;; Vai receber um numero a e um n e vai fazer o numero a elevado a n

(examples
 (check-equal? (function-pow 0 1) 0)
 (check-equal? (function-pow 10 0) 1)
 (check-equal? (function-pow 2 2) 4)
)

;; Modelo
;;(define (fn-pow number exponent)
;;cond(
;;     [(= exponent 0) ...]
;;     [(= number 0) ...]
;;     [else ... (fn-pow number exponent)]
;;     )
;;)

(define (function-pow number exponent)
  (cond
     [(= exponent 0) 1]
     [(= number 0) 0]
     [else (* number (function-pow number (sub1 exponent)))]))
 



