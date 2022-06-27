(use-package lsp-mode)
(use-package lsp-ui)
(use-package company-lsp)

;; lsp-mode keybinds
(defun lsp-mode-init ()
  (lsp)
  (global-set-key (kbd "M-*") 'xref-pop-marker-stack)
  (global-set-key (kbd "M-.") 'xref-find-definitions)
  (global-set-key (kbd "M-/") 'xref-find-references))

;; lsp-ui config
(setq lsp-ui-doc-enable t)
(setq lsp-ui-doc-header t)
(setq lsp-ui-doc-include-signature t)
(setq lsp-ui-doc-max-width 150)
(setq lsp-ui-doc-max-height 30)
(setq lsp-ui-peek-enable t)
(add-hook 'lsp-mode-hook 'lsp-ui-mode)
