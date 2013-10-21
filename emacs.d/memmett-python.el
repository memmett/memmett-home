;(require 'python-mode)
;(setq py-shell-name "/home/memmett/anaconda/bin/python")
;(setq ipython-command "/home/memmett/anaconda/bin/ipython")
;(require 'ipython)



;(setenv "PYTHONPATH" "/home/memmett/projects/pfasst:/home/memmett/projects/pypfasst:/home/memmett/projects/sympy:/home/memmett/projects/pyweno:/home/memmett/projects/BoxLib/Src/Python")
;(setenv "LD_LIBRARY_PATH" "")
;(setenv "LD_LIBRARY_PATH" "/home/memmett/gcc-4.8/lib:/home/memmett/gcc-4.8/lib64:/home/memmett/openmm/lib")




;; python
;  (setq auto-mode-alist (cons '("\\.py$" . python-mode) auto-mode-alist))
;  (setq interpreter-mode-alist (cons '("python" . python-mode)
;                                     interpreter-mode-alist))
;  (autoload 'python-mode "python-mode" "Python editing mode." t)
;  (setq ipython-command "/usr/local/bin/ipython")
;  (setq py-python-command-args '("-pylab" "-colors" "Linux"))
;  (require 'ipython)

;(require 'pymacs)
;(pymacs-load "ropemacs" "rope-")
;(setq ropemacs-enable-autoimport t)

;; (setq pycodechecker "/home/memmett/projects/pylint_etc_wrapper/pylint_etc_wrapper.py")
;; (when (load "flymake" t)
;;   (load-library "flymake-cursor")
;;   (defun dss/flymake-pycodecheck-init ()
;;     (let* ((temp-file (flymake-init-create-temp-buffer-copy
;;                        'flymake-create-temp-inplace))
;;            (local-file (file-relative-name
;;                         temp-file
;;                         (file-name-directory buffer-file-name))))
;;       (list pycodechecker (list local-file))))
;;   (add-to-list 'flymake-allowed-file-name-masks
;;                '("\\.py\\'" dss/flymake-pycodecheck-init)))

(provide 'memmett-python)