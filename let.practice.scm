(let ((i 2)(j 2))
	(+ i j));4

(let ((i 1))
    (let ((j (+ i 2)))
		(* i j)));3

; (let ((i 1) (j (+ i 2)))
; 	(* i j));报Unbound variable: i 错误

(let* ((i 1) (j (+ i 2)))
	(* i j))

