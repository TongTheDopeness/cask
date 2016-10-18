(require 'cask "~/.cask/cask.el")
(cask-initialize)

(electric-indent-mode 1)

(add-to-list 'load-path "~/.emacs.d/init.d/")

(require 'init-global-configs)
(require 'init-programming-settings)

(windmove-default-keybindings)

(global-set-key (kbd "C-c C-g C-j") 'buf-move-left)
(global-set-key (kbd "C-c C-g C-m") 'buf-move-down)
(global-set-key (kbd "C-c C-g C-n") 'buf-move-down)
(global-set-key (kbd "C-c C-g C-i") 'buf-move-up)
(global-set-key (kbd "C-c C-g C-l") 'buf-move-right)

(global-set-key (kbd "C-c <left>")  'windmove-left)
(global-set-key (kbd "C-c <down>")  'windmove-down)
(global-set-key (kbd "C-c <up>")    'windmove-up)
(global-set-key (kbd "C-c <right>") 'windmove-right)

(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)

(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)



;; (require 'init-fonts)

;; (require 'init-face)


;; theme
;;(load-theme 'zenburn t)
;;(load-theme 'cyberpunk t)
(load-theme 'monokai t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(safe-local-variable-values (quote ((encoding . utf-8) (eval when (and (buffer-file-name) (file-regular-p (buffer-file-name)) (string-match-p "^[^.]" (buffer-file-name))) (emacs-lisp-mode) (when (fboundp (quote flycheck-mode)) (flycheck-mode -1)) (unless (featurep (quote package-build)) (let ((load-path (cons ".." load-path))) (require (quote package-build)))) (package-build-minor-mode))))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
