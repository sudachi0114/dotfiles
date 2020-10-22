;; ----------
;; emacs window settings
;; ----------

;; 行番号の表示
(require 'linum)
(global-linum-mode t)

;; 列番号の表示
(column-number-mode t)

;; 対応する括弧のハイライトをする
(show-paren-mode t)

;; Tab / space の可視化
;; (global-whitespace-mode t)

;; region highlight
(transient-mark-mode t)

;; alpha (画面の透過度)
(if window-system
	(progn
	  (set-frame-parameter nil 'alpha 94)))

;; メニューバーを非表示
;; (menu-bar-mode -1)

;; ツールバーを非表示 (Emacs.app)
(tool-bar-mode 0)

;; welcome ページを表示しない
(setq inhibit-startup-message t)

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
(set-face-background 'hiwin-face "gray60")
