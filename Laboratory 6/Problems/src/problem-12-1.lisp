(defun deep-sum (lst)
  (let ((item (first lst))
        (tail (rest lst)))
    (cond ((null lst) 0)
          ((listp item)
           (+ (deep-sum item)
              (deep-sum tail)))
          (t (+ item (deep-sum tail))))))