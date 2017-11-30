(load "/Users/jinzhan/Desktop/dev/practiceProject/SICP/2.2.scm")
(define (high rectangle)
  (- (y-point (top-left-point rectangle))
     (y-point (bottom-right-point rectangle))))

(define (width rectangle)
  (- (x-point (bottom-right-point rectangle))
     (x-point (top-left-point rectangle))))

(define (perimeter rectangle)
  (+ (* 2 (high rectangle))
  	 (* 2 (width rectangle))))

(define (area rectangle) 
  (* (high rectangle) 
  	 (width rectangle)))

(define (top-left-point rectangle)
  (car rectangle))
(define (bottom-right-point rectangle)
  (cdr rectangle))

;假设构造的矩形点a在点b的左边
(define (make-rectangle top-left-point bottom-right-point)
  (cons top-left-point bottom-right-point))

(let ((rectangle (make-rectangle (make-point 0 3)
								 (make-point 4 0))))
	(display (perimeter rectangle))
	(newline)
	(display (area rectangle)))