(load "/Users/jinzhan/Desktop/dev/practiceProject/SICP/lesson1.3.4.scm")

(define (cubic a b c)
  (lambda (x) 
  	(+ (cube x)
	   (* a (square x))
	   (* b x)
	   c)))

