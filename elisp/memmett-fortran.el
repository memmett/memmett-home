
(defun f90-find-declaration-block-start()
  "Find beginning of declaration block in F90 code."
  (while (string-match "::" (thing-at-point 'line))
    (forward-line -1))
  (forward-line)
  (line-beginning-position))

(defun f90-find-declaration-block-end()
  "Find end of declaration block in F90 code."
  (while (string-match "::" (thing-at-point 'line))
    (forward-line 1))
  (line-beginning-position))

(defun f90-align-declarations ()
  "Align declaration blocks in F90 code and reformat intent
   attributes."
  (interactive)
  (save-excursion
    (when (string-match "::" (thing-at-point 'line))
      (let (start end)
	(setq start (f90-find-declaration-block-start))
	(setq end (f90-find-declaration-block-end))

	(goto-char start)
	(while (re-search-forward "intent(\s*in\s*)" end t)
	  (replace-match "intent(in   )"))
	(goto-char start)
	(while (re-search-forward "intent(\s*out\s*)" end t)
	  (replace-match "intent(  out)"))
	(goto-char start)
	(while (re-search-forward "intent(\s*inout\s*)" end t)
	  (replace-match "intent(inout)"))

	(goto-char start)
	(setq end (f90-find-declaration-block-end))
	(align-regexp start end "\\(\\s-*\\)\\(intent\\|::\\)" 1 1 t)))))

(defun f90-align ()
  "Align fortran stuff..."
  (interactive)
  (let (line)
    (setq line (thing-at-point 'line))
  (when (string-match "^\s*!" line)
    (fill-paragraph))
  (when (string-match "::" line)
    (f90-align-declarations))
  (when (string-match "=" line)
    (align nil nil))))


(eval-after-load 'f90-mode
  '(add-to-list 'align-rules-list '(f90-assignment
				    (regexp . "[^-=!^&*+<>/| 	\n]\\(\\s-*[-=!^&*+<>/|]*\\)=\\(\\s-*\\)\\([^= 	\n]\\|$\\)")
				    (group 1 2)
				    (modes . '(f90-mode))
				    (justify . t)
				    (tab-stop))))

(add-hook 'f90-mode-hook '(lambda ()
			    (local-set-key (kbd "M-q") 'f90-align)))

(provide 'memmett-fortran)