;name: berdlens jean-charles student number: 101232931 
#lang racket 


(define (repeat x n)

    (if (<= n 0)
        
        '()

        (cons  x (repeat x (- n 1)))
    
    )

)


; (repeat 'a 10)
; (repeat 'a -1)
; (repeat 'a 0)
; (repeat 'a 100)

; (define (alternate list1 list2)

;     (define altList '())

;     (if (< (length altList) (+ (length list1) (length list2)))
;         '()

        
;     )

; )



;add more tests 
(define (count x L)


    (if (= 0 (length L))
        0

        (+ 
            (if (= x (car L ))
                1
                0
            ) 
            (count x (cdr L))
        )

    )

)

(count 2 '(1 2 1 2 3 1 2 2 1))
(count 4 '(1 2 1 2 3 1 2 2 1))
(count 2 '())



;have to find all the unique elements in the list first and then we can count 
(define (mode L)

    (define (helper x )

    )



)


