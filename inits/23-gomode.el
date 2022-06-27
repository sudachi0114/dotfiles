(use-package go-mode)

;; go get で入れたツールのパスを通す
(add-to-list 'exec-path (expand-file-name "/Users/sudachi/go/bin/"))

;; go-modeのときlspする
(add-hook 'go-mode-hook #'lsp-deferred)
;; yasnippetをインストールしていない or snippetを使わない
(with-eval-after-load 'lsp-mode
  (setq lsp-enable-snippet nil))

(defun go-mode-omnibus ()
  ;; Go code formatting by goimports
  (setq gofmt-command "goimports")
  (add-hook 'before-save-hook 'gofmt-before-save)
  ;; Customize compile command to run go build
  (if (not (string-match "go" compile-command))
      (set (make-local-variable 'compile-command)
           "go build -v && go test -v && go vet"))
  )
(add-hook 'go-mode-hook 'go-mode-omnibus)
