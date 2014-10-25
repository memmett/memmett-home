
(add-to-list 'load-path "~/projects/memmett-home/elisp/color-theme")
(require 'color-theme)
(require 'color-theme-solarized)
(color-theme-initialize)
(color-theme-solarized-dark)
;(color-theme-solarized-light)

(setenv "LD_LIBRARY_PATH" "/home/memmett/gcc-4.7/lib:/home/memmett/gcc-4.7/lib64")

(add-to-list 'load-path "~/projects/org-mode/lisp")
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))

(require 'package)
(add-to-list 'package-archives
  '("melpa" . "http://melpa.milkbox.net/packages/") t)

(package-initialize)

(require 'helm-config)

;; (define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action) ; rebihnd tab to do persistent action
;; (define-key helm-map (kbd "C-i") 'helm-execute-persistent-action) ; make TAB works in terminal
;; (define-key helm-map (kbd "C-z")  'helm-select-action) ; list actions using C-z

(helm-mode -1)
(global-set-key (kbd "C-c h") 'helm-mini)

(require 'hungry-delete)
(global-hungry-delete-mode)


(projectile-global-mode)

(require 'haskell-mode-autoloads)

;(require 'multiple-cursors)
;(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)

(org-babel-do-load-languages
 'org-babel-load-languages
 '((shell . t)
   (emacs-lisp . t)
   (python . t)
   ))

(setq ido-enable-flex-matching t)
(setq ido-everywhere t)

(blink-cursor-mode -1)
(column-number-mode 1)
(display-time-mode 1)
(global-font-lock-mode 1)
(iswitchb-mode -1)
(line-number-mode 1)
(menu-bar-mode -1)
(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)
(scroll-bar-mode -1)
(show-paren-mode 1)
(tool-bar-mode -1)
(which-function-mode)
(winner-mode 1)
(ido-mode 1)
(setq-default indent-tabs-mode nil)

(custom-set-variables
 '(c-hungry-delete-key t)
 '(c-insert-tab-function 'indent-relative)
 '(c-syntactic-indentation t)
 '(c-tab-always-indent t)
 '(default-major-mode 'text-mode)
 '(display-time-24hr-format t)
 '(enable-recursive-minibuffers t)
 '(special-display-buffer-names
   '("*compilation*" "*grep*" "*tex-shell*" "*asy-compilation*" "*Async Shell Command*"))
 '(ediff-window-setup-function 'ediff-setup-windows-plain)
 '(ediff-split-window-function 'split-window-horizontally)
 '(ispell-dictionary "en_CA"))

(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(font-latex-math-face ((((class color) (background dark)) (:foreground "#93a1a1"))))
 '(font-latex-sectioning-0-face ((t (:inherit font-latex-sectioning-1-face))))
 '(font-latex-sectioning-1-face ((t (:inherit font-latex-sectioning-2-face))))
 '(font-latex-sectioning-2-face ((t (:inherit font-latex-sectioning-3-face))))
 '(font-latex-sectioning-3-face ((t (:inherit font-latex-sectioning-4-face))))
 '(font-latex-sectioning-4-face ((t (:inherit font-latex-sectioning-5-face)))))

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
