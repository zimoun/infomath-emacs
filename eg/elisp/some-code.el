(defun ask-at-point (&optional i-know)
  "Feel free to ask everything."
  (interactive "P")
  (if i-know (message "Quick Answer.")
   (browse-url
    (concat "https://www.ddg.gg/?q=emacs+" (thing-at-point 'symbol)))))
