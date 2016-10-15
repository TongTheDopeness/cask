# Cask

## .emacs

```
(load (expand-file-name (concat (getenv "HOME") "/.emacs.d/init")))
```

## install

```
# install cask
$ curl -fsSL https://raw.githubusercontent.com/cask/cask/master/go | python

$ cd
$ git clone https://github.com/TongTheDopeness/cask.git .emacs.d
$ cd .emacs.d
$ cask install
```
