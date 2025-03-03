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

;Testing
(define my-mult (hyper +) )
(my-mult 2 3) 
(my-mult 0 1) 
(define my-exp (hyper my-mult))
(my-exp -2 -13) 
(my-exp 26 12) 
(define my-tetra (hyper my-exp))
(my-tetra 9 0) 
