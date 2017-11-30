(define x (cons (list 1 2) (list 1 2)))

(define (count-leaves x)
  (cond ((null? x) 0)
        ((not (pair? x)) 1)
        (else (+ (count-leaves (car x))
			     (count-leaves (cdr x))))))

(define (scale-tree tree factor)
  (map (lambda (sub-tree) 
		  (if (pair? sub-tree)
		      (scale-tree sub-tree factor)
		      (* sub-tree factor)))
		tree))