#lang racket 
;name: berdlens jean-charles student number: 101232931 
(define (upper int)
    (car int )

)

(define (lower int)
    (cdr int )

)

(define (make-interval a b)
    
    (if (> a b )
        (cons b a)
    
        (cons a b)
    )

)

;Testing 
(make-interval 1 3)
(make-interval 1 2)
(make-interval 2 7)
(make-interval 2 2)


(define (add-interval intervalA intervalB)

    (make-interval (+ (lower intervalA)(lower intervalB)) (+ (upper intervalA)(upper intervalB)))

)

;Testing
(add-interval (cons 1 2) (cons 2 3))
(add-interval ( cons -1 -2) (cons 2 3))
(add-interval (cons 0 0) (cons 0 0))
(add-interval (cons 3 2) (cons 2 6))


(define (subtract-interval intervalA intervalB)

    (make-interval (- (lower intervalA)(upper intervalB)) (- (upper intervalA)(lower intervalB)))

)

;Testing
(subtract-interval (cons 1 2) (cons 2 3))
(subtract-interval ( cons -1 -2) (cons 2 3))
(subtract-interval (cons 0 0) (cons 0 0))
(subtract-interval (cons 3 2) (cons 2 6))


(define (multiply-interval intervalA intervalB)

    (make-interval (min (* (lower intervalA)(lower intervalB) ) (* (lower intervalA) (upper intervalB)) (*(upper intervalA)(lower intervalB)) (*(upper intervalA)(upper intervalB))) 
        (max (* (lower intervalA)(lower intervalB) ) (* (lower intervalA) (upper intervalB)) (*(upper intervalA)(lower intervalB)) (*(upper intervalA)(upper intervalB)))
    )
)

;Testing
(multiply-interval (cons 1 2) (cons 2 3))
(multiply-interval ( cons -1 -2) (cons 2 3))
(multiply-interval (cons 0 0) (cons 0 0))
(multiply-interval (cons 3 2) (cons 2 6))


(define (divide-interval intervalA intervalB)
    ( if (or (= (lower intervalB) 0 )(= (upper intervalB) 0))
        (display "cannot divide by zero\n" )

        (multiply-interval intervalA (cons (/ 1 (lower intervalB)) (/ 1 (upper intervalB)) ) )
    )
   
)

;Testing
(divide-interval (cons 1 2) (cons 2 3))
(divide-interval ( cons -1 -2) (cons 2 3))
(divide-interval (cons 0 0) (cons 0 0))
(divide-interval (cons 3 2) (cons 2 6))

