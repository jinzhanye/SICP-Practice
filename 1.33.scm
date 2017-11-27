(load "/Users/jinzhan/Desktop/dev/practiceProject/SICP/utility.scm")

(define (filtered-accumulate filter combiner null-value term a next b) 
     (if (> a b) null-value
     	(if (filter a)
     	    (combiner (term a) 
     	    		  (filtered-accumulate filter combiner null-value term (next a) next b))
     	    (combiner null-value 
     	    		  (filtered-accumulate filter combiner null-value term (next a) next b)))))

(define (sum-square-prime a b)
  (filtered-accumulate prime? 
  					   + 
  					   0 
  					   square 
  					   a 
  					   1+ 
  					   b))

(define (product-coprime a  b)
  (filtered-accumulate (lambda (x) (coprime? x b)) * 1 (lambda (x) x) a 1+ b))


(sum-square-prime 1 5); 38
(product-coprime 1 10);189