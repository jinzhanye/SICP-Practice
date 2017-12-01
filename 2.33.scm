(load "/Users/jinzhan/Desktop/dev/practiceProject/SICP/lesson2.2.3.scm")
(define nil '())

(define (map p sequnce)
  (accmulate (lambda (x y) 
  	       		(cons (p x) y)) 
             nil 
             sequnce))


(define (append seq1 seq2)
  (accmulate cons seq2 seq1))


(define (length sequnce)
  (accmulate (lambda (x y) (+ 1 y)) 
		     0 
			 sequnce))