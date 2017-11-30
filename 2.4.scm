; (define (cons x y)
;   (define (dispatch m)
;     (cond ((= m 0) x)
;           ((= m 1) y)
; 	      (else (error "Argument not 0 or 1: CONS" m))))
;   dispatch)

; (define (car z) (z 0))
; (define (cdr z) (z 1))

(define (cons x y)
  (lambda (m) (m x y)))

(define (car z)
  (z (lambda (p q) p)))

(define (cdr z)
  (z (lambda (p q) q)))

(let ((point (cons 3 7)))
	(newline)
	(display (car point))
	(newline)
	(display (cdr point)))

