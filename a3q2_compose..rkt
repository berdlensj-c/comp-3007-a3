;name: berdlens jean-charles student number: 101232931 
#lang racket 


(define (compose f g)

    (lambda (x) (f (g x)))


)


(define square (lambda(x)(* x x)))
(define double (lambda(x)(+ x x)))
((compose square double) 3); => 6^2 = 36


(define (divisibleBy x)
    (lambda (y) 
        ( if (= (modulo y x) 0)

            #t

            #f 

        )
        
    )
    
)

(define mod3 (divisibleBy 3))
(mod3 7); => #f
(mod3 9); => #t\
(mod3 12)
