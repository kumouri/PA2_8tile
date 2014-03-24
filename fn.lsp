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

(defun formatted-output (path)
	(
	)
	#|
	path is a list of a list, any number of nodes with 9 numbers per node
	Display 3 nodes per line
	[ 1 2 3 ]    [ 1 2 3 ]    [ 1 2 3 ]
	[ 4 5 6 ] => [ 4 5 6 ] => [ 4 5 6 ]
	[ 7 8   ]    [ 7 8   ]    [ 7 8   ]
	That's 0 3 6 of each of 0 1 2 nodes
	(for i = 0; i < numNodes / 3; i++)	// Group of 3 nodes
	{
		(for j = 0; j < 3; j++)			// Group of 3 lines for the node
		{
			(for k = 0; k < 3; k++)		// Group of 3 numbers per line per node
			{
				output [ path[i * 3 + j][k * 3] path[i * 3 + j][k * 3] path[i * 3 + j][k * 3] ]
				if(j = 2)				// If we're on the second line
				{
					output " => "
				}
				else					// If we aren't on the second line
				{
					output "    "
				}
			}
		}
	}
	|#
	
)
