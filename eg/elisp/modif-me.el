;; Declare variable
(setq x 1)

;; Compute (infix)
(+ x 42)
(* x 4.2)

;; List (linked)
(setq ll (list 1 2 3 4))
;; First element (head)
(car ll)
;; Rest (tail)
(cdr ll)
;; Concatenate lists
(append ll (list 11 22 33 44 55) (list "a" "bb" "ccc"))

(defun hello-world (name)
  "Simply Hello World function.

Do stuff.
And other stuff.
The argument name provides a name to helloing."
  (message "Hello World: %s!" name))

(defun ask-at-point (&optional i-know)
  "Feel free to ask everything."
  (interactive "P")
  (if i-know (message "Quick Answer.")
   (browse-url
    (concat "https://www.ddg.gg/?q=emacs+" (thing-at-point 'symbol)))))
