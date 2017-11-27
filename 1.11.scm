;iterative
(define (f-iter a b c i n)
    (if (= i n)
        c
        (f-iter (+ a (* 2 b) (* 3 c))   ; new a
                a                       ; new b
                b                       ; new c
                (+ i 1)
                n)))

(define (f-iterative n)
  (f-iter 2 1 0 0 n))

;以上迭代相当于
;var a = 2
;   ,b = 1
;   ,c = 0;
;for(var i = 0; i != n; i++){
;		a = a+2b+3c;
;		b = a;
;		c = b;
;   }
;var res = c;


;recursive
(define (f-recursive n)
  (if (< n 3)
      n
      (+ (f-recursive (- n 1))
	     (* (f-recursive (- n 2)) 2)
	     (* (f-recursive (- n 3)) 3))))

; (f-recursive 10)
; (f-iterative 3)
