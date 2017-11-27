(load "/Users/jinzhan/Desktop/dev/practiceProject/SICP/utility.scm")
;fixed-point
(define tolerance 0.00001)

;*************************寻找不去点法解根
(define (fixed-point f first-guess)
  (define (close-enough? v1 v2)
    (< (abs (- v1 v2)) 
       tolerance))
  (define (try guess)
	(let ((next (f guess)))
	  (if (close-enough? guess next)
	      next
	      (try next))))
   (try first-guess))

(define (sqrt x)
  (fixed-point (lambda (y) (average y (/ x y)))
                 1.0))

(sqrt 4)

;*************************区间折半法求零点
(define (search f neg-point pos-point)
  (define (close-enough? x y)
    (< (abs (- y x)) 0.001))
  (let ((midpoint (average neg-point pos-point)))
    (if (close-enough? neg-point pos-point)
        midpoint
        (let ((test-value (f midpoint)))
          (cond ((positive? test-value)
                 (search f neg-point midpoint))
                ((negative? test-value) 
                 (search f midpoint pos-point))
                (else midpoint))))))
;确保两个初始点一正一负
(define (half-interval-method f a b)
  (let ((a-value (f a))
        (b-value (f b)))
    (cond ((and (negative? a-value) (positive? b-value)) 
           (search f a b))
          ((and (positive? a-value) (negative? b-value))  
           (search f b a))
          (else 
           (error "Values are not of opposites sign" a b)))))

(half-interval-method sin 2.0 4.0)






