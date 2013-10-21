
(add-to-list 'load-path "~/.memmett-emacs.d/auto-complete")

(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.mememtt-emacs.d/ac-dict")
(ac-config-default)

(provide 'memmett-autocomplete)