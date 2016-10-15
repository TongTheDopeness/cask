(require 'package)
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")
                         ("tromey" . "http://tromey.com/elpa/")
                         ))
(package-initialize)

(require 'cl)

(defvar installing-package-list
  '(ac-js2
    ack-and-a-half
    auto-complete
    auto-complete-clang
    buffer-move
    coffee-mode
    direx
    diminish
    exec-path-from-shell
    expand-region
    feature-mode
    flycheck
    git-gutter
    git-gutter-fringe
    haml-mode
    helm
    helm-ag
    helm-projectile
    hlinum
    jade-mode
    js2-mode
    magit
    move-text
    multiple-cursors
    point-undo
    popwin
    projectile
    projectile-rails
    rainbow-delimiters
    rainbow-mode
    recentf-ext
    rinari
    ruby-block
    ruby-end
    robe
    sass-mode
    scss-mode
    sequential-command
    slim-mode
    smart-compile
    smartparens
    smooth-scroll
    smooth-scrolling
    tabbar
    textmate
    undo-tree
    undohist
    yasnippet
    yaml-mode))

(let ((not-installed (loop for x in installing-package-list
			   when (not (package-installed-p x))
			   collect x)))
  (when not-installed
    (package-refresh-contents)
    (dolist (pkg not-installed)
      (package-install pkg))))

(provide 'init-packages)
