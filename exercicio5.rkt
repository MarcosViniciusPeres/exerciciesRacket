#lang racket

(require examples)

;;Defina uma função que determine se uma lista é palíndromo. Dica: use a função inverte.
;; ListaNumeros -> Boolean

(examples
 (check-equal? (isPalindrome empty) #t)
 (check-equal? (isPalindrome (cons 1 (cons 2 (cons 1 empty)))) #t)
 (check-equal? (isPalindrome (cons 1 (cons 2 (cons 3 empty)))) #f)
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

(define (invert lst)
  (cond
    [(empty? lst) empty]
    [else (insertEnd (invert (rest lst) ) (first lst))]))


(define (isPalindrome lst)
 (cond
  [(empty? lst) #t]
  [else (equal? lst (invert lst))]))