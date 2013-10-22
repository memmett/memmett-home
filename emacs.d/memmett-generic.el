
(add-to-list 'load-path "~/.memmett-emacs.d/color-theme")
(require 'color-theme)
(require 'color-theme-solarized)
(color-theme-initialize)
;; (color-theme-midnight)
(color-theme-solarized-dark)



(blink-cursor-mode -1)
(column-number-mode 1)
(display-time-mode 1)
(global-font-lock-mode 1)
(iswitchb-mode 1)
(line-number-mode 1)
(menu-bar-mode -1)
(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)
(scroll-bar-mode -1)
(show-paren-mode 1)
(tool-bar-mode -1)
(which-function-mode)
(winner-mode 1)
(ido-mode)

(custom-set-variables
 '(c-hungry-delete-key t)
 '(c-insert-tab-function 'indent-relative)
 '(c-syntactic-indentation t)
 '(c-tab-always-indent t)
 '(default-major-mode 'text-mode)
 '(display-time-24hr-format t)
 '(enable-recursive-minibuffers t)
 '(kept-new-versions 5)
 '(kept-old-versions 5)
 '(version-control t)
 '(special-display-buffer-names
   '("*compilation*" "*grep*" "*tex-shell*" "*asy-compilation*" "*Async Shell Command*"))
 '(ediff-window-setup-function 'ediff-setup-windows-plain)
 '(ediff-split-window-function 'split-window-horizontally)
 '(ispell-dictionary "en_CA"))

(add-hook 'before-save-hook '(lambda () (delete-trailing-whitespace)))

(defun fullscreen ()
  (interactive)
  (x-send-client-message nil 0 nil "_NET_WM_STATE" 32
	    		 '(2 "_NET_WM_STATE_FULLSCREEN" 0)))

;; browse kill ring
;; (require 'browse-kill-ring)
;; (global-set-key (kbd "C-M-y") 'browse-kill-ring)

;; fill adapt
;; (require 'filladapt)
;; (add-hook 'text-mode-hook 'turn-on-filladapt-mode 'turn-on-flyspeel)
;; (setq-default indent-tabs-mode nil)

;; (custom-set-variables
;;  '(color-theme-selection "Black" nil (color-theme)))



(provide 'memmett-generic)
