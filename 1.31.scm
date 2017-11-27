(load "/Users/jinzhan/Desktop/dev/practiceProject/SICP/utility.scm")
;iterative
; (define (product term a next b)
;   (define (iter a result)
;     (if (> a b)
;         result
;         (iter (next a) 
;         	  (* result (term a)))))
;   (iter a 1))

;recursion
(define (product term a next b) 
     (if (> a b) 1 
        (* (term a) (product term (next a) next b)))) 

; (define (factorial b)
;   	(product  (lambda (x) x) 
;   		    1
;   		    (lambda (x) (+ 1 x))
;   			b))

; (factorial 10)

(define (pi n)
	(define (next x)
	  (+ x 1))
    (* 4
        (exact->inexact
            (/ (product numer-term
                        1
                        next
                        n)
               (product denom-term 
                        1
                        next
                        n)))))

(pi 10000)