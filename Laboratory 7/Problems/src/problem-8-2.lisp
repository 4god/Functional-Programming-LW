(defun do-first-not-number (lst)
  (do* ((sub-list lst (rest sub-list))
        (item (first sub-list) (first sub-list)))
       ((or (null sub-list) 
            (not (numberp item))) 
        item)))