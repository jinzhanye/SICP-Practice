(define (accumulate combiner null-value term a next b) 
     (if (> a b) null-value 
        (combiner (term a) (accumulate combiner null-value term (next a) next b))))

(define (product term a next b)
  (accumulate * 1 term a next b))

(define (factorial b)
  	(product  (lambda (x) x) 
  		    1
  		    (lambda (x) (+ 1 x))
  			b))
 
(factorial 10)