(load "/Users/jinzhan/Desktop/dev/practiceProject/SICP/utility.scm")

(define (average x y)
  (/ (+ x y) 2))

(define (improve guess x); (x + (x/y))/2
  (average (/ x guess) guess))

(define (sqrt-iter guess x)
  (if (close-enough? guess x)
       guess
       (sqrt-iter (improve guess x) x)))

(define (sqrt x)
  (sqrt-iter 1.0 x))

; (sqrt 4)

;***********black box*******************
(define (sqrt-black-box x)
  (define (close-enough? guess)
  	(< (abs (- (square guess) x)) 0.001))
  (define (improve guess)
  	(average (/ x guess) guess))
  (define (sqrt-iter guess)
	  (if (close-enough? guess)
	       guess
	       (sqrt-iter (improve guess))))
  (sqrt-iter 1.0))

(sqrt-black-box 9)