;; Package manifest
;; Each use-package form here ensures the package is installed.
;; Configuration lives in config.el.

(use-package evil :ensure t)
(use-package evil-collection :ensure t)

(use-package vertico :ensure t)
(use-package orderless :ensure t)
(use-package marginalia :ensure t)
(use-package consult :ensure t)

(use-package company :ensure t)
(use-package company-fuzzy :ensure t)
(use-package company-spell :ensure t)

(use-package magit :ensure t)

(use-package doom-themes :ensure t)
