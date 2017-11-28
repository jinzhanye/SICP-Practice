(define (iterative-improve good-enough? improve)
  (lambda (guess) 
   (define (iter res)
     (if (good-enough? res)
       	 res	
         (iter (improve guess))))
	(iter guess)))

; (define (iterative-improve improve close-enough?)
; 	(lambda (x) 
; 		    (let ((xim (improve x)))
; 		    	((if (close-enough? x xim)
; 		    	    xim
; 		    	    ((iterative-improve improve close-enough) xim))))))


