;; Part 1 - Map
(defun myMap (f l)
  (if (equal l nil)
    nil (cons (funcall f (car l)) (myMap f (cdr l))
        )
  )
)
;; Part 2 - Flattening
(defun myFlatten (l)
  (if (equal l nil)
        nil
        (append (car l) (myFlatten (cdr l))
        )
  )
)
;; Part 3 - Flat mapping
(defun myflatMap (f l)
  (let ((flatten (myFlatten l)))
    (myMap f flatten))
)
