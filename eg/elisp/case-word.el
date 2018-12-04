(defun eg/upcase-word ()
  "Change from any word to UPPERCASE."
  (interactive)
  (let ((beg (progn
               (backward-word)
               (point)))
        (end (progn
               (forward-word)
               (point))))
        (upcase-region beg end)))

(defun eg/downcase-word ()
  "Change from any word to DOWNCASE."
  (interactive)
  (let ((beg (progn
               (backward-word)
               (point)))
        (end (progn
               (forward-word)
               (point))))
        (downcase-region beg end)))
