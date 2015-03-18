(defun quicksort (l)
  (let ((pivot (first l)))
    (if (rest l)
        (nconc (quicksort (remove-if-not #'(lambda (x) (< x pivot)) l))
               (remove-if-not #'(lambda (x) (= x pivot)) l)
               (quicksort (remove-if-not #'(lambda (x) (> x pivot)) l)))
        l)))