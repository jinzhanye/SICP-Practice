(load "/Users/jinzhan/Desktop/dev/practiceProject/SICP/1.42.scm")

(define (repeated f n)
  	(define (iter i g)
    	(if (>= i n)
        	g
        	(iter (1+ i)	
         	  	  (compose g f))))
   	(iter 1 f))

((repeated square 2) 5)