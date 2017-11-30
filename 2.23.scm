; (define (for-each proc over-list)
;   (if (null? over-list)
;       over-list
;       (proc (car over-list)
;        (for-each proc (cdr over-list)))))
 (define (for-each proc items) 
   (let ((items-cdr (cdr items))) 
     (proc (car items)) 
     (if (not (null? items-cdr)) 
         (for-each proc items-cdr) 
         #t))) 


(for-each (lambda (x) 
			(newline)
			(display x))
		  (list 1 2 3 4))