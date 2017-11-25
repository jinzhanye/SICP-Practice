(define A1 (* 5 5)) ;相当于 A = 5 * 5
(define (A2) (* 5 5)) ;相当于定义一个函数,该函数名为A

(define (square x) (* x x))
(define square2 (lambda (x)
					(* x x)))

(define (sum-of-squares x y)
  (+ (square x) (square y)))

; branch control
(define (abs x)
  (cond ((> x 0) x)
      ((= x 0) 0)
      ((< x 0) (- x))))
; branch control with 'if' is the same as 'cond'
(define (absIf x)
  (if (< x 0)
      (- x)
      x))

; (sum-of-squares 5 6)

; (abs 9)

; (absIf -8)
(square2 2)
