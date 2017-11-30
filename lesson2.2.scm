(load "/Users/jinzhan/Desktop/dev/practiceProject/SICP/utility.scm")

(define nil -1)

(define 1-to-4 
	(cons 1 
		  (cons 2
		  		(cons 3
		  			  (cons 4 nil)))))

; (displayln (car 1-to-4))
; (displayln (car (cdr 1-to-4)))
; (displayln (car (cdr (cdr 1-to-4))))
; (displayln (car (cdr (cdr (cdr 1-to-4)))))

(define 1-to-4 (list 1 2 3 4))

1-to-4

(car 1-to-4)
(cdr 1-to-4)
(car (cdr 1-to-4))
(cons 10 1-to-4)

;list.get(index)操作
(define (list-ref items n)
  (if (= n 0)
      (car items)
      (list-ref (cdr items) (- n 1))))

(define squares (list 1 4 9 16 25))

;list.length操作
(list-ref squares 3);16

(define (length items)
  (if (null? items)
      0
      (+ 1 (length (cdr items)))))

(define odds (list 1 3 5 7))
(length odds)

;list.length iterative style
(define (length items)
  (define (length-iter a count)
    (if (null? a)
        count
        (length-iter (cdr a) (+ 1 count))))
  (length-iter items 0))

(length odds)

;append
(define (append list1 list2)
  (if (null? list1);一直向下遍历直到找到list1的尾结点
      list2
      (cons (car list1) (append (cdr list1) list2))))

(append squares odds)
(append odds squares)

;*********************Map over lists
(define (scale-list items factor)
  (if (null? items)
      items
      (cons (* (car items) factor)
            (scale-list (cdr items)
                        factor))))

(scale-list (list 1 2 3 4 5) 10);(10 20 30 40 50)

;map
(define (map proc items)
  (if (null? items)
      items
      (cons (proc (car items))
            (map proc (cdr items)))))

(map abs (list -10 2.5 -11.6 17))


(map (lambda (x) (* x x)) (list 1 2 3 4))






