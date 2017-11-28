(load "/Users/jinzhan/Desktop/dev/practiceProject/SICP/utility.scm")
;*************************fixed-point average-damping
(define tolerance 0.00001)

(define (fixed-point f first-guess)
  (define (close-enough? v1 v2)
    (< (abs (- v1 v2)) 
       tolerance))
  (define (try guess)
	 (let ((next (f guess)))
	   (if (close-enough? guess next)
	      next
	      (try next))))
   (try first-guess))

(define (average-damping f)
  (lambda (x) (average x (f x))))

((average-damping square) 10)

(define (sqrt x)
  (fixed-point (average-damping (lambda (y) (/ x y)))
                1.0))

; (sqrt 4)
;*************************Newton's method
(define (newton-transform g)
  (lambda (x) (- x 
                (/ (g x) 
                   ((deriv g) x)))))

(define (newtons-method g guess)
  (fixed-point (newton-transform g) guess))

(define (sqrt x)
  (newtons-method (lambda (y) (- (square y) x)) 
                  1.0))

(sqrt 4)

;*************************more abstract
(define (fixed-point-of-transform g transform guess)
  (fixed-point (transform g) guess))

(define (sqrt-newton x)
  (fixed-point-of-transform (lambda (y) (- (square y) x)) 
                            newton-transform
                            1.0))

(define (sqrt-average-damping x)
  (fixed-point-of-transform (lambda (y) (/ x y)) 
                            average-damping
                            1.0))

