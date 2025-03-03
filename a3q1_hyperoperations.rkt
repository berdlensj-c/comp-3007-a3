;name: berdlens jean-charles student number: 101232931 
#lang racket 

(define (hyper x)
  (define (func a b)
    (if (<= b 1)
        a
        (x a (func a (- b 1)))
    )
  )
  func  
)

(define my-mult (hyper +) )
(define my-exp (hyper my-mult))
(my-exp 2 4) 
(define my-tetra (hyper my-exp))
(my-tetra 2 4) 
