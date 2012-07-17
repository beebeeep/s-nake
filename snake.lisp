
(defun list-sum(a b) 
  (if (= (list-length a) (list-length b))
    (loop for x in a
	  for y in b
	  collect (+ x y))
    nil	
    ))

(defvar game (list 
	       :snake (list 
			:body (list
				(list 6 4)
				(list 5 4)
				(list 4 4))
			:heading (list 1 0))
	       :eggs (list 1 2) 
	       :stat (list
		       :grow 0)))

(defun do-step (g)
  (list 
    :snake (let 
	     (
	      (snake (getf g :snake))
	      (head (car (getf (getf g :snake) :body))))
	     (list 
	       :body (append
		       (list (list-sum head (getf snake :heading)))
		       (getf snake :body))
	       :heading (getf snake :heading)))
    :eggs (getf g :eggs)
    :stat (getf g :stat)))
