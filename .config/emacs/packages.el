;; Package manifest
;; Each use-package form here ensures the package is installed.
;; Configuration lives in config.el.

(use-package evil :ensure t)
(use-package evil-collection :ensure t)

(use-package no-littering :ensure t)

(use-package tree-sitter :ensure t)
(use-package vertico :ensure t)
(use-package consult :ensure t)

(use-package company :ensure t)
(use-package company-box
  :ensure t
  :hook (company-mode . company-box-mode))

(use-package lsp-mode :ensure t)
(use-package flycheck :ensure t)

(use-package magit :ensure t)

(use-package doom-themes :ensure t)
(use-package doom-modeline :ensure t)

(use-package diredfl :ensure t)

;;; packages.el ends here
