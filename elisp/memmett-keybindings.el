
(global-set-key [f7] 'compile)
(global-set-key [f8] 'recompile)
(global-set-key [f9] 'fullscreen)

(global-set-key [f2] (lambda () (interactive) (shell-command "/home/memmett/bin/remote emacs_f2 &")))
(global-set-key [XF86AudioPrev] (lambda () (interactive) (shell-command "/home/memmett/bin/remote emacs_f3 &")))
(global-set-key [XF86AudioPlay] (lambda () (interactive) (shell-command "/home/memmett/bin/remote emacs_f4 &")))
(global-set-key [XF86AudioNext] (lambda () (interactive) (shell-command "/home/memmett/bin/remote emacs_f5 &")))
(global-set-key [f6] (lambda () (interactive) (shell-command "/home/memmett/bin/remote emacs_f6 &")))


(provide 'memmett-keybindings)