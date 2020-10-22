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
;; init-loader split-configration-file
;;----------
(require 'init-loader)
(init-loader-load "~/.emacs.d/inits/")

;; emacs package 分割管理
;;  https://qiita.com/skkzsh/items/20af9affd5cc1e9678f8
;;  https://blog.shibayu36.org/entry/2013/12/03/213942
;;  http://emacs.rubikitch.com/init-loader/
;;  http://fnwiya.hatenablog.com/entry/2015/09/04/emacs%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB%E5%88%86%E5%89%B2%E3%81%AE%E8%A9%B1

;; package の削除
;; package-utils を install しよう
;; http://emacs.rubikitch.com/package-utils/


;; ==========


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(atom-one-dark-theme solarized-theme auto-complete package-utils go-mode nyan-mode monokai-theme init-loader hiwin)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
