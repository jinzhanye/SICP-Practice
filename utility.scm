(define (average x y)
  (/ (+ x y) 2))

(define (cube x)
  (* x x x))


(define (close-enough? guess x); |guess^2 -x| < 0.001
  (< (abs (- (square guess) x)) 0.001))

;分子
(define (numer-term i)
    (cond ((= i 1)
            2)
          ((even? i)
            (+ i 2))
          (else
            (+ i 1))))
;分母
(define (denom-term i)
    (if (odd? i)
        (+ i 2)
        (+ i 1)))

(define (accumulate combiner null-value term a next b) 
     (if (> a b) null-value 
        (combiner (term a) (accumulate combiner null-value term (next a) next b))))

(define (smallest-div n) 
  (define (divides? a b) 
    (= 0 (remainder b a))) 
  (define (find-div n test) 
     (cond ((> (square test) n) n) ((divides? test n) test) 
           (else (find-div n (+ test 1))))) 
  (find-div n 2)) 

;素数检测
(define (prime? n) 
  (if (= n 1) false (= n (smallest-div n))))

;互素检测
(define (coprime? i n)
    (and (< i n)
         (= 1 (gcd i n))))

;求导,即f'(x) = (f(x+dx) - f(x))/dx
(define (deriv g)
  (define dx 0.00001)
  (lambda (x) 
    (/ (- (g (+ x dx)) (g x))
       dx)))