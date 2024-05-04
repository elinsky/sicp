(define (square x) 
        (* x x))

(define (sum_squares a b)
        (+ (square a)
	   (square b)))

; does not handle less than or equal to
(define (smallest a b c)
        (cond ((and (<= a b)
		    (<= a c))
	       a)
	      ((and (<= b a)
		    (<= b c))
	       b)
	      ((<= c a) c)))

(define (sum_of_squares_largest a b c)
        (cond ((= a
		  (smallest a b c))
	       (sum_squares b c))
	      ((= b
		  (smallest a b c))
	       (sum_squares a c))
	      (else (sum_squares a b))))

;(sum_of_squares_largest 1 2 3)
;(sum_of_squares_largest 2 1 3)
(sum_of_squares_largest 1 2 1)
