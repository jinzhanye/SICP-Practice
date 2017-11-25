(define (>= x y) 
     (not (< x y))) 
  
 (define (<= x y) 
     (not (> x y)))

(define (square x) (* x x))

(define (first x y z)
  (cond ((and (>= x y) (>= x z)) x)
        ((and (>= y x) (>= y z)) y)
    	(else z)))

(define (second x y z) 
     (cond ((or (and (<= x y) (>= x z)) 
                (and (>= x y) (<= x z))) x) 
           ((or (and (<= y x) (>= y z)) 
                (and (>= y x) (<= y z))) y) 
           (else z))) 

(define (sum-larger-square x y z)
  (+ (square (first x y z)) (square (second x y z))))

(sum-larger-square 1 2 3)