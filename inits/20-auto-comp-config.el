;; ----------
;; auto-completion setting file
;; ----------

;; 括弧を自動で補完する
(electric-pair-mode 1)

(require 'auto-complete)
(require 'auto-complete-config)
(ac-config-default)
(global-auto-complete-mode t)
