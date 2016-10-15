(defun beautify-json ()
  (interactive)
  (let ((b (if mark-active (min (point) (mark)) (point-min)))
        (e (if mark-active (max (point) (mark)) (point-max))))
    (shell-command-on-region b e "python -mjson.tool" (current-buffer) t)))

(autoload 'js2-mode "js2-mode" nil t)
(autoload 'js2x-mode "js2x-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
(add-to-list 'auto-mode-alist '("\\.jsx\\'" . js2-jsx-mode))

(setq js-indent-level 2)
(setq jsx-indent-level 2)
(setq coffee-tab-width 2)

;;(flycheck-add-mode 'javascript-eslint 'js2-jsx-mode)
;;(add-hook 'js2-jsx-mode-hook 'flycheck-mode)

;;; Tern
(add-hook 'js2-mode-hook
          (lambda ()
            (tern-mode t)))
(add-hook 'js2x-mode-hook
          (lambda ()
            (tern-mode t)))

(eval-after-load 'tern
   '(progn
      (require 'tern-auto-complete)
      (tern-ac-setup)))


(provide 'init-js)
