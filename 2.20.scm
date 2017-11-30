(define (same-parity . w)
  (define (same-parity-iter n list1)
    (cond ((null? list1) list1)
    	  ((even? n) (same-parity-iter (+ 1 n) (cdr list1)))
          ((odd? n) (cons (car list1) (same-parity-iter (+ 1 n) (cdr list1))))))
  (same-parity-iter 1 w))

(same-parity 1 2 3 4 5 6 7 8 9)
(same-parity 2 3 4 6 7)

