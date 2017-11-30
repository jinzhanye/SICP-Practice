; (define (sun-odd-squares tree)
;   (cond ((null? tree) 0)
;         ((not (pair? tree)) 
;          (if (odd? tree)
;              (square tree)
;              0))
;         (else (+ (sun-odd-squares (car tree))
;                  (sun-odd-squares (cdr tree))))))

; (define (even-fibs n)
;   (define (next k)
;     (if (> k n)
;         #t
;         (let ((f (fib k)))
;         	(cons f (next (+ k 1)))
;             (next (+ k 1)))))
;   (next 0))

(define (filter predicate sequence)
  (cond ((null? sequence) #t)
        ((predicate (car sequence)) 
          (cons (car sequence)
	             (filter predicate (cdr sequence))))
        (else (filter predicate (cdr sequence)))))

(filter odd? (list 1 2 3 4 5))

(define (accumulate op initial sequence)
  (if (null? sequence)
      initial
      (op (car sequence)
          (accumulate op initial (cdr sequence)))))

(accumulate + 0 (list 1 2 3 4 5))

(accumulate * 1 (list 1 2 3 4 5))

(accumulate cons #t (list 1 2 3 4 5))

(define (enumrate-interval low high)
  (if (> low high)
      #t
      (cons low
            (enumrate-interval (+ low 1) high))))

(enumrate-interval 2 7)