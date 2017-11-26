;***************************recursion
(define (factorial-1 n)
  (if (= n 1)
      1
      (* n (factorial(- n 1)))))

; (factorial-1 6)

;***************************liner iterative
(define (fact-iter product counter max-count)
  (if (> counter max-count)
      product
      (fact-iter (* counter product) 
			     (+ counter 1) 
			     max-count)))

(define (factorial-2 n)
  (fact-iter 1 1 n))

; (factorial-2 6)

;***************************tree recursion
(define (fib n)
  (cond ((= n 0) 0)
        ((= n 1) 1)
    	(else (+ (fib (- n 1))
    			 (fib (- n 2))))))

(fib 6)