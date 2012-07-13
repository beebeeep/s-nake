(defun xy(x y) (list :x x :y y))

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
			       (xy 6 4)
			       (xy 5 4)
			       (xy 4 4))
		       :heading (list :x 1 :y 0))
	      :eggs () 
	      :stat (list
			:grow 0)))

(defun do-step (g)
  )
