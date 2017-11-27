(define (fast-expt b n)
  (cond ((= n 0) 1)
        ((even? n) (square (fast-expt b (/ n 2))));eg: n^8 -> n^4*n^4 , 4 -> 2*2
	    (else (* b (fast-expt b (- n 1))))));eg:n^9 -> n*n^8 

