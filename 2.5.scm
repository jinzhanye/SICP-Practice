(define zero
  (lambda (f) 
  	(lambda (x) x)))

(define (add-1 n)
  (lambda (f) 
	(lambda (x) 
	  (f ((n f) x)))))

; (zero 3)
; (add-1 8)
; (add-1 zero)
(define (one f) (add-1 zero))

((zero square) 2)
