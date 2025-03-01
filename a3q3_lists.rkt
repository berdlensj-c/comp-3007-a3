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

(define (count x L)

    (define list `())

    ; (display (list-ref L 0))
    ; (newline)

    ( if (equal? (length L) 0)

        (display "t")

        ;there is something wrong with this do 
        (do ((i 0 (+ i 1)) )
            (equal? i (- (length L) 1))
           

            (if (equal? (list-ref L i) x)
                (append list '(i))

                (display "t")
            )

            (display (length list))

        )  
    )  

    (length list)

)

(count 2 '(1 2 1 2 3 1 2 2 1))





