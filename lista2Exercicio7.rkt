#lang racket
(require examples)
;;Defina a função double que receba como parâmetro uma função de um parâmetro e retorne
;;uma função que aplique a função original duas vezes. Por exemplo, dado que a função add1 adiciona
;;1 ao seu parâmetro, então ((double add1) 3) retorna 5. Qual é o valor retornado por
;;(((double (double double)) add1) 5)


(define (double function n)
  (define (body-function p)
    (p (p n))   
    )
    (body-function function)
  )

(define (triple function n)
  (define (body-function p)
    (p n (p n n))   
    )
    (body-function function)
  )