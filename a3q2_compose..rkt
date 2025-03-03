;name: berdlens jean-charles student number: 101232931 
#lang racket 


(define (compose f g)

    (lambda (x) (f (g x)))


)


(define square (lambda(x)(* x x)))
(define double (lambda(x)(+ x x)))
(define add1 (lambda (x) (+ x 1)))
((compose square double) -1)
((compose double square) 8)
((compose square double) 2)
((compose square add1) 10)


(define (divisibleBy x)
    (lambda (y) 
        ( if (= (modulo y x) 0)

            #t

            #f 

        )
        
    )
    
)

(define mod3 (divisibleBy 3))
(mod3 7)
(mod3 0)
(mod3 12)
(mod3 -3)
