(load "/Users/jinzhan/Desktop/dev/practiceProject/SICP/1.43.scm")

(define (average-three a b c)
  (/ (+ a b c) 3))


(define (smooth f)
  (define dx 0.000001)
  (lambda (x) 
  	(average-three (f (- x dx))
  				   (f x)
  				   (f (+ x dx)))))

((smooth square) 5)

(define (smooth-n-times f n)
    (let ((n-times-smooth (repeated smooth n)))
        (n-times-smooth f)))




