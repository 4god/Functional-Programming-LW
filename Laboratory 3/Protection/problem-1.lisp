;;; Квадратное уравнение, спасибо Алексею 
(defun d (a b c)
    (- (* b b) 
       (* 4.0 a c)))

(defun x1 (a b d)
    (/ (- (sqrt d) b) 
       (* 2.0 a)))

(defun x2 (a b d)
    (/ (- 0.0 (sqrt d) b) 
       (* 2.0 a)))

(defun equation (a b c) 
    (if (= a 0.0) 
        (if (= b 0.0)
            (if (= c 0.0)
                (format t "infinity number of solutions")
                (format t "no solutions")
            )
            (format t "x=~A" (/(- 0.0 c) b)) 
        )
        (if (>(D a b c) 0.0)
            (format t "x1=~A x2=~A" (x1 a b(D a b c)) (x2 a b (D a b c)))
            (if (= (D a b c) 0.0)
                (format t "x1=x2=~A"(- 0.0 (/ b (* 2 a))))
                (format t "no solutions")
            )
        )
    )
)
