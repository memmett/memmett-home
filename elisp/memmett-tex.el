
(require 'tex-site)

(add-hook 'LaTeX-mode-hook 'turn-on-reftex)

(custom-set-variables
 '(TeX-source-specials-mode t)
 '(reftex-plug-into-AUCTeX t)
 '(reftex-default-label-alist-entries
   '(AMSTeX amsmath endnotes fancybox floatfig longtable picinpar rotating
	    sidecap subfigure supertab wrapfig LaTeX))
 '(font-latex-fontify-script 'nil))

(provide 'memmett-tex)
