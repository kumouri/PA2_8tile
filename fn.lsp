(defun goal-state? (state)
    (let ((goal-list '(1 2 3 8 0 4 7 6 5)))
        (equal state goal-list)        
    )
)

(defun is-child? (state open closed)
(
    
)

(defun generate-successors (state)
    (let ((pos (position 0 state)) 
          (listCopy (copy-list state))
          (shiftList '(-1 -3 1 3))
          (childList nil))
    
        ;check and generate each shift position
        (dolist (i shiftList)
            (cond ((and (<= (+ pos i) 8) (>= (+ pos i) 0)) ;if new position within grid
                        (setf listCopy (copy-list state)) ;recopy state
                        (rotatef (nth pos listCopy) (nth (+ pos i) listCopy)); switch elements
                        (setf childList (append childList (list listCopy)))
                  )       
            )
        )
        (return-from generate-successors childList)    
    )
)
