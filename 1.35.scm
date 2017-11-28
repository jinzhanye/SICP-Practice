(load "/Users/jinzhan/Desktop/dev/practiceProject/SICP/lesson1.3.3.scm")
;*************************寻找不去点法求 ϕ
(fixed-point (lambda (x) (+ (/ 1 x) 1))
			 1.0)