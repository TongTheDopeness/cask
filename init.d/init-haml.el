(add-to-list 'auto-mode-alist '("\\.hamlc$" . haml-mode))

(add-hook 'haml-mode-hook
  '(lambda ()
     (setq indent-tabs-mode nil)
       (define-key haml-mode-map "\C-m" 'newline-and-indent)))

(provide 'init-haml)
