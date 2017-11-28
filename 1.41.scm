(define (double f)
  (lambda (x) 
  		(f (f x))))

((double 1+) 5);7

(((double double) 1+) 5);9

(((double (double double)) 1+) 5);16+5=21


