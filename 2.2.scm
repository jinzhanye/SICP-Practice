(load "/Users/jinzhan/Desktop/dev/practiceProject/SICP/utility.scm")
(define (print-point p)
  (newline)
  (display "(")
  (display (x-point p))
  (display ",")
  (display (y-point p))
  (display ")"))

(define (make-segment point-a point-b)
  (cons point-a point-b))

(define (start-segment segment)
  (car segment))

(define (end-segment segment)
  (cdr segment))

(define (make-point x y)
  (cons x y))

(define (x-point point)
  (car point))

(define (y-point point)
  (cdr point))

(define (mid-point segment)
  (cons	(average (x-point (start-segment segment)) (x-point (end-segment segment)))
  		(average (y-point (start-segment segment)) (y-point (end-segment segment)))))

; (print-point (make-point 2 4))

; (let ((segment (make-segment (make-point 2 4)
; 			    (make-point 4 8))))
; 	(print-point (mid-point segment)))

