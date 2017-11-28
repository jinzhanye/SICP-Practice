(define (compose f1 f2)
  (lambda (x) 
	  (f1 (f2 x))))

((compose square 1+) 6)