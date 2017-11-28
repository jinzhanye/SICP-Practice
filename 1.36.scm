(load "/Users/jinzhan/Desktop/dev/practiceProject/SICP/utility.scm")

(define tolerance 0.00001)

(define (print-line value)
  (display value)
  (newline))

(define (fixed-point f first-guess)
  (define (close-enough? v1 v2)
    (< (abs (- v1 v2)) 
       tolerance))
  (define (try guess)
  (print-line guess)
	(let ((next (f guess)))
	  (if (close-enough? guess next)
	      next
	      (try next))))
   (try first-guess))

(define (x-to-the-x y)
  (fixed-point (lambda (x) (/ (log y) (log x)))
             10.0))

(define (x-to-the-x-damping y)
  (fixed-point (lambda (x) (average x (/ (log y) (log x))))
             10.0))

; (x-to-the-x 1000)
(x-to-the-x-damping 1000);加上平均阻尼后函数(数学上的函数)的收敛速度会加快