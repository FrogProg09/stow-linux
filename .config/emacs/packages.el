;; Package manifest
;; Each use-package form here ensures the package is installed.
;; Configuration lives in config.el.

;;; Code:

(use-package no-littering :ensure t)

(use-package evil :ensure t)
(use-package evil-collection :ensure t)
(use-package evil-commentary :ensure t)
(use-package undo-tree :ensure t)

(use-package pdf-tools :ensure t)

(use-package tree-sitter :ensure t)
(use-package vertico :ensure t)
(use-package consult :ensure t)

(use-package corfu :ensure t)
(use-package cape :ensure t)
(use-package flycheck :ensure t)
(use-package orderless :ensure t)

(use-package magit :ensure t)
(use-package vterm :ensure t)

(use-package doom-themes :ensure t)
(use-package doom-modeline :ensure t)

(use-package diredfl :ensure t)
(use-package rainbow-delimiters :ensure t)
(use-package diff-hl :ensure t)
(use-package splash-screen
  :ensure t
  :vc (:url "https://github.com/rougier/emacs-splash" :branch "master"))

;;; packages.el ends here
