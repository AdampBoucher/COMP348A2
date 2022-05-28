;Question 1

; (defun sub-list(lst from &optional(to NIL))
;   (cond
;     ((null to) (sub-list lst from (list-length lst)))
;     ((null lst) '())
;     ((> from to) '())
;     ((< from 1) '())
;     ((> to (list-length lst)) '())
;     ((> from 1) (sub-list (cdr lst) (- from 1) (- to 1)))
;     (t (cons (car lst) (sub-list (cdr lst) from (- to 1))))
;   )
; )
; (print (sub-list '(1 4 10) 2 3))
; (print (sub-list '(1 4 10) 2))
; (print (sub-list '(1 7 12) 1 4))
; (print (sub-list '(1 7 12) 0 1))
; (print (sub-list '(1 6 12) 4 2))
; (print (sub-list '(1 6 12 9 0 10 11) 4 6))
; (print (sub-list '(1 6 12)))

;Question 2
; (defun sub-list2(lst from &optional(to NIL))
;   (cond
;     ((null to) (sub-list2 lst from (list-length lst)))
;     ((null lst) '())
;     ((> from to) '())
;     ((< from 1) (sub-list2 lst 1 to))
;     ((> to (list-length lst)) (sub-list2 lst from (list-length lst)))
;     ((> from 1) (sub-list2 (cdr lst) (- from 1) (- to 1)))
;     (t (cons (car lst) (sub-list2 (cdr lst) from (- to 1))))))

; (print (sub-list2 '(1 4 10) 2 3))
; (print (sub-list2 '(1 4 10) 2))
; (print (sub-list2 '(1 7 12) 1 4))
; (print (sub-list2 '(1 7 12) 0 1))
; (print (sub-list2 '(1 6 12) 4 2))
; (print (sub-list2 '(1 6 12 9 0 10 11) 4 6))
; (print (sub-list2 '(1 6 12)))

; ;Question 3
; (defun sub-list3(lst from &optional(to NIL))
;   (cond
;     ((null to) (sub-list3 lst from (list-length lst)))
;     ((null lst) '())
;     ((> from to) (append (sub-list3 (cdr lst) (- from 1) to) (list (car lst))))
;     ((< from 1) (sub-list3 lst 1 to))
;     ((> to (list-length lst)) (sub-list3 lst from (list-length lst)))
;     ((> from 1) (sub-list3 (cdr lst) (- from 1) (- to 1)))
;     (t (cons (car lst) (sub-list3 (cdr lst) from (- to 1))))
;    )
;)

; (print (sub-list3 '(1 4 10) 3 2))
; (print (sub-list3 '(1 4 10) 3))
; (print (sub-list3 '(1 7 12) 4 0))
; (print (sub-list3 '(1 6 12)))



;Question 4 TODO: REMOVE DUPLICATES
;(defun flatten-nums-nodup(lst)
;    (cond
;        ((null lst) '())
;        ((listp(car lst)) (flatten-nums-nodup(append (car lst) (cdr lst))))
;        ((numberp(car lst))
;            (cons (car lst) (flatten-nums-nodup(cdr lst))))
;        (t (flatten-nums-nodup(cdr lst)))
;    )   
;)

;(print (flatten-nums-nodup '(1 2 (3 1) (a 2.5) (2 4.5) ((1 2)))))





;Question 5

;iterative solution
; (defun tribonacci-seq(n)
;   (let ((first 0) (second 0) (third 0) (next 0)))
;   (lst '(1 0 0))

;   (loop for x from 2 to n 
;     do(let (next + first second third))
;     do(append (lst) (list (next)))
;     do(let (first second))
;     do(let (second third))
;     do(let (third next))
;   )
; )
