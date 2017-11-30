(load "/Users/jinzhan/Desktop/dev/practiceProject/SICP/utility.scm")
;**********2.11
;有理数运算
(define (add-rat x y)
  (make-rate (+ (* (numer x) (denom y))
			    (* (numer y) (denom x)))
			 (* (denom x) (denom y))))

(define (sub-rat x y)
  (make-rate (- (* (numer x) (denom y))
			    (* (numer y) (denom x)))
			 (* (denom x) (denom y))))	

(define (mul-rat x y)
  (make-rate (* (numer x) (numer y))
			 (* (denom x) (denom y))))

(define (div-rat x y)
  (make-rate (* (numer x) (denom y))
			 (* (denom x) (numer y))))		

;有理数数据抽象
(define (equla-rat? x y)
  (= (* (numer x)(denom y))
	 (* (numer y)(denom x))))

;简化版
(define (make-rate n d)
  (let ((g (gcd n d)))
    (cons (/ n g) (/ d g))))

(define (numer x)
  (car x))

(define (denom x)
  (cdr x))

(define one-half (make-rate 1 2))
(define one-third (make-rate 1 3))

; (print-rat (add-rat one-half one-third))
; (print-rat (add-rat one-third one-third))

;**********2.12
;原始未简化版
(define (make-rate n d) (cons n d))
;在取分子、分母时简化
(define (numer x)
  (let ((g (gcd (car x) (cdr x))))
    (/ (car x) g)))

(define (denom x)
  (let ((g (gcd (car x) (cdr x))))
    (/ (cdr x) g)))

(print-rat (add-rat one-third one-third))
