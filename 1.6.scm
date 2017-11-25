(define (goog-enough? guess x); |guess^2 -x| < 0.001
  (< (abs (- (square guess) x)) 0.001))

(define (average x y)
  (/ (+ x y) 2))

(define (improve guess x); (x + (x/y))/2
  (average (/ x guess) guess))

(define (new-if predicate then-clause else-clause);先对then-clause和else-clause进行eval输出"badgood"(与编译器求值顺序有关)，
		;因为两个函数都是打印输出所以执行打印后then-clause,else-clause都是undefined
    	(cond (predicate then-clause);条件为真，返回then-clause即undefined
          (else else-clause)))


(define (sqrt-iter guess x)
    (new-if (good-enough? guess x) 
            guess
            (sqrt-iter (improve guess x)
                        x)))
(define (sqrt x)
  (sqrt-iter 1.0 x))

; (sqrt 4)
(new-if (= 6 3) 0 5)

; (if #t (display "good") (display "bad"))
(new-if #t (display "good") (display "bad"))
