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

;***************************fib with tree recursion
(define (fib-tree n)
  (cond ((= n 0) 0)
        ((= n 1) 1)
    	(else (+ (fib (- n 1))
    			 (fib (- n 2))))))
; (fib-tree 6)

;***************************fib with liner iterative
(define (fib-iterative n)
  (fib-iter 1 0 n))

(define (fib-iter a b count)
  (if (= count 0)
      b
      (fib-iter (+ a b) a (- count 1))))

; (fib-iterative 6)

;***************************count-change with tree recursion
(define (first-denomination kinds-of-coins);面值种类
  (cond ((= kinds-of-coins 1) 1)
        ((= kinds-of-coins 2) 5)
        ((= kinds-of-coins 3) 10)
        ((= kinds-of-coins 4) 25)
        ((= kinds-of-coins 5) 50)))

(define (cc amount kinds-of-coins)
  (cond ((= amount 0) 1)
        ((or (< amount 0) (= kinds-of-coins 0)) 0)
        (else (+ (cc amount (- kinds-of-coins 1))
                 (cc (- amount (first-denomination kinds-of-coins))
                     kinds-of-coins)))))

(define (count-change amount) (cc amount 5))
(count-change 100)

