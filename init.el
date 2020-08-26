;;----------
;; package.el
;;----------
(require 'package)
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/") t)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)
(unless package-archive-contents (package-refresh-contents))


;;----------
;; language
;;----------
;; 日本語設定
(set-language-environment 'Japanese)
(set-language-environment 'utf-8)
(prefer-coding-system 'utf-8)

;;----------
;; preference
;;----------

;; 行番号の表示
(require 'linum)
(global-linum-mode t)

;; 列番号の表示
(column-number-mode t)

;; 対応する括弧のハイライトをする
(show-paren-mode t)

;; 括弧を自動で補完する
(electric-pair-mode 1)

;; Tab size 4
(setq-default tab-width 4)
;; Tab size 4 / Tab 文字を使わない
;; (setq-default tab-width 4 indent-tabs-mode nil)

;; Tab / space の可視化
;; (global-whitespace-mode t)

;; region highlight
(transient-mark-mode t)

;; alpha (画面の透過度)
(if window-system
	(progn
	  (set-frame-parameter nil 'alpha 50)))

;; リージョンのハイライト
(transient-mark-mode 1)

;; タイトルにフルパス表示
(setq frame-title-format "%f")

;; mode line に時刻を表示
(display-time-mode t)

;; 1行ごとの改ページ
(setq scroll-conservatively 1)  ;; t ではダメらしい。

;; ねこ
(nyan-mode 1)

;; アクティブウィンドウ以外を灰色化
(require 'hiwin)
;; hiwin-modeを有効化
(hiwin-activate)
;; 非アクティブウィンドウの背景色を設定
(set-face-background 'hiwin-face "gray30")


;; ----------
;; color theme
;; ----------
(load-theme 'monokai t)
;; (load-theme 'atom-one-dark t)

;; ----------
;; scala
;; ----------
(use-package scala-mode
  :interpreter
    ("scala" . scala-mode))
;; thanks to https://github.com/hvesalai/emacs-scala-mode
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
	(markdown-mode use-package scala-mode nyan-mode monokai-theme hiwin atom-one-dark-theme))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
