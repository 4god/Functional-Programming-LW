(defun how-alike-cond (arg1 arg2)
    (cond ((or (= arg1 arg2) (equal arg1 arg2)) `the_same)
          ((and (oddp arg1) (oddp arg2)) `both_odd)
          ((and (evenp arg1) (evenp arg2)) `both_even)
          (t `difference)))