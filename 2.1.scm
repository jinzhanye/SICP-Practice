(load "/Users/jinzhan/Desktop/dev/practiceProject/SICP/utility.scm")
(define (make-rat n d)
  (let ((g ((if (< d 0) - +) (abs (gcd n d)))))
    (cons (/ n g) (/ d g))))

(print-rat (make-rat 6 -9)) ; -2/3
(print-rat (make-rat -6 9)) ; -2/3
