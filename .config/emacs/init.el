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

(setq evil-want-keybinding nil)
(setq evil-want-integration t)   

(setq inhibit-startup-message t
      visible-bell nil)

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
   '(company company-fuzzy company-spell consult doom-themes
	     evil-collection magit marginalia orderless vertico)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
