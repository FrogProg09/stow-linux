;; ████████ ████     ████     ██       ██████   ████████
;;░██░░░░░ ░██░██   ██░██    ████     ██░░░░██ ██░░░░░░
;;░██      ░██░░██ ██ ░██   ██░░██   ██    ░░ ░██
;;░███████ ░██ ░░███  ░██  ██  ░░██ ░██       ░█████████
;;░██░░░░  ░██  ░░█   ░██ ██████████░██       ░░░░░░░░██
;;░██      ░██   ░    ░██░██░░░░░░██░░██    ██       ░██
;;░████████░██        ░██░██     ░██ ░░██████  ████████
;;░░░░░░░░ ░░         ░░ ░░      ░░   ░░░░░░  ░░░░░░░░
;;
;;                 MAIN CONFIGURATION FILE
;;                                  by Frogprog (https://github.com/FrogProg09/)

;; Setup structure:
;; - init.el (entry point)
;; - packages.el (install packages)
;; - config.el (configure system and packages)

;;; Code:

(setq evil-want-keybinding nil)
(setq evil-want-integration t)

(setq inhibit-startup-message nil
      visible-bell nil)

(setq make-backup-files nil)

(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

(global-display-line-numbers-mode 1)

(setq select-enable-clipboard t
      select-enable-primary t)

(require 'package)
(setq package-archives '(("gnu"   . "https://elpa.gnu.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")
                         ("org"   . "https://orgmode.org/elpa/")))
(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))

(load (concat user-emacs-directory "packages"))
(load (concat user-emacs-directory "config"))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(all-the-icons-dired cape company company-box company-fuzzy
                         company-spell consult corfu diff-hl diredfl
                         dirvish doom-modeline doom-themes eat elsa
                         emacs-splash evil-collection evil-commentary
                         flycheck lsp-mode lsp-ui magit marginalia
                         no-littering orderless rainbow-delimiters
                         splash-screen tree-sitter vertico vterm))
 '(package-vc-selected-packages
   '((splash-screen :url "https://github.com/rougier/emacs-splash"
                    :branch "master"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;; init.el ends here
