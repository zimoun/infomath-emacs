(defvar ox-reveal-path
  (expand-file-name "elpa/org-reveal.git" user-emacs-directory))
(defvar htmlize-path
  (expand-file-name "elpa/htmlize.git" user-emacs-directory))

(defun git-clone (from to)
  (when (not (file-directory-p to))
      (shell-command (format
                      "git clone %s %s" from to))))

(git-clone "https://github.com/yjwen/org-reveal.git" ox-reveal-path)
(git-clone "https://github.com/emacsmirror/htmlize.git" htmlize-path)


(add-to-list 'load-path ox-reveal-path)
(add-to-list 'load-path htmlize-path)

(require 'ox-reveal)
