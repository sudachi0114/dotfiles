;; ----------
;; Markdown mode configuration
;;   cf. https://github.com/jrblevin/markdown-mode/tree/cf6403186119cd3d25adc702845f969071060e20
;; ----------
(use-package markdown-mode
			 :ensure t
			 :commands (markdown-mode gfm-mode)
			 :mode (("README\\.md\\'" . gfm-mode)
					("\\.md\\'" . markdown-mode)
					("\\.md\\'" . markdown-mode))
			 :init (setq markdown-command "multimarkdown"))

(autoload 'markdown-mode "markdown-mode"
   "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

(autoload 'gfm-mode "markdown-mode"
   "Major mode for editing GitHub Flavored Markdown files" t)
(add-to-list 'auto-mode-alist '("README\\.md\\'" . gfm-mode))
