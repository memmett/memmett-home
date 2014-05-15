;; change magit diff colors

(add-to-list 'load-path "~/.memmett-emacs.d/magit")

(eval-after-load 'magit
  '(progn
     (set-face-foreground 'magit-diff-add "green3")
     (set-face-foreground 'magit-diff-del "red3")
     (when (not window-system)
       (set-face-background 'magit-item-highlight "black"))))

(require 'magit)

(provide 'memmett-magit)
