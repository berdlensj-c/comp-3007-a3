;name: berdlens jean-charles student number: 101232931 
#lang racket 


(define (repeat x n)

    (if (<= n 0)
        
        '()

        (cons  x (repeat x (- n 1)))
    
    )

)

;Testing
(repeat 'a 10)
(repeat 'a -1)
(repeat 'a 0)
(repeat 'a 100)


; (define (alternate list1 list2)

    

;     (define (helper x y num)

;         (cond 
;             ()
        
        
;         )

;         (cond 
;             (
;                 ( and    
;                     (= (length x) num)

;                     ( > (length y)  num)
;                 )
;                 ( car y)
            
;             )

;             (
;                 ( and    
;                     (= (length y) num)

;                     ( > (length x)  num)
;                 )
;                 ( car x)
;             )

;             (
;                 ( and    
;                     (= (length y) num)

;                     ( = (length x)  num)
;                 )
;                 (list ( car x) (car y))
;             )


;             (else (list (helper (cdr x)(cdr y) (+ num 1))))
;         )

    
;     )


;     (helper list1 list2 0)
    
; )

; (alternate '(0 0 0 0) '(1 1 1 1 1 1)) ;→ (0 1 0 1 0 1 0 1 1 1)


(define (count x L)


    (if (= 0 (length L))
        0

        (+ 
            (if (equal? x (car L ))
                1
                0
            ) 
            (count x (cdr L))
        )

    )

)

;Testing
(count 2 '(1 2 1 2 3 1 2 2 1))
(count 4 '(1 2 1 2 3 1 2 2 1))
(count 2 '())
(count 9 '(1 2 1 2 3 1 2 2 1))



(define (mode L)

    (define (helper num currMode lst )

        ( if (null? lst)
            currMode

            (let* ( (curr (car lst))
                    (currNum (count curr lst))
                )
            

            
                (if (> currNum num)
                    (helper currNum curr (cdr lst))

                    (helper num currMode (cdr lst))


                )
            )
        )
    )
    

    (if (null? L)
        '()

        (helper 0 '() L)
    )

)

;Testing
(mode '())
(mode '(1 2 3 1 2 3 1 2 3))
(mode '(a b a c a d d a b c a b)) ;→ a
(mode '(2 b a 3 2 c b 1 b 2 d a)) ;→ 2
