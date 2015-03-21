(defun first-not-null-list (lst)
  (let ((item (first lst))
        (tail (rest lst)))
    (cond ((null lst) nil)
          ((atom item) 
           (first-not-null-list tail))
          (t item))))