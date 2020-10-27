#lang racket
(require examples)

;; Numero -> Boolean

;;Recursão indireta é quando dois (ou mais) procedimentos usam um ao outro. Defina duas
;;funções impar? e par?, uma em termos da outra. (Dica: O que cada uma deve retornar quando o
;;argumento for 0

;; Entrar com um numero e retornar se ele é par ou impar

(examples
 (check-equal? (is-par 0) #t)
 (check-equal? (is-par 5) #f)
 (check-equal? (is-par 2) #t)

 (check-equal? (is-impar 0) #f)
 (check-equal? (is-impar 5) #t)
 (check-equal? (is-impar 2) #f)
)

;;Modelo par ou ímpar
;;(define (fn-is-par number)
;;(cond
;;  [(= number 0) ...]
;;  [(= (modulo number 2) 0) ...]
;;  [else ...]
;;  )
;;)

(define (is-par number)
  (cond
    [(= number 0) #t]
    [(= (modulo number 2) 0) #t]
    [else #f]))

(define (is-impar number)
  (not (is-par number)))