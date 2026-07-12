;;; package --- Summary
;;; Commentary:
;; CONFIGURATION FILE
;;                  by Frogprog (https://github.com/FrogProg09)

;;; Code:

;; LOOK AND FEEL

(set-face-attribute 'default nil
                    :font "JetBrainsMono Nerd Font Mono"
                    :height 170)

(hl-line-mode 1)
(load-theme 'doom-gruvbox t)
(doom-modeline-mode 1)
(blink-cursor-mode -1)


;; PACKAGE CONFIG


;; Vim motions
(use-package evil
  :demand
  :config
  (setq evil-want-integration t)
  (evil-mode 1)
  (evil-define-key 'normal dired-mode-map
    "h" 'dired-up-directory
    "l" 'dired-find-file))

(use-package evil-collection
  :after evil
  :config
  (evil-collection-init))

;; Make dired look pretty
(use-package diredfl
  :hook (dired-mode . diredfl-mode))

;; Syntax highlighting (https://www.masteringemacs.org/article/how-to-get-started-tree-sitter)
(setq treesit-language-source-alist
   '((bash "https://github.com/tree-sitter/tree-sitter-bash")
     (cmake "https://github.com/uyha/tree-sitter-cmake")
     (css "https://github.com/tree-sitter/tree-sitter-css")
     (elisp "https://github.com/Wilfred/tree-sitter-elisp")
     (go "https://github.com/tree-sitter/tree-sitter-go")
     (html "https://github.com/tree-sitter/tree-sitter-html")
     (javascript "https://github.com/tree-sitter/tree-sitter-javascript" "master" "src")
     (json "https://github.com/tree-sitter/tree-sitter-json")
     (make "https://github.com/alemuller/tree-sitter-make")
     (markdown "https://github.com/ikatyang/tree-sitter-markdown")
     (python "https://github.com/tree-sitter/tree-sitter-python")
     (toml "https://github.com/tree-sitter/tree-sitter-toml")
     (yaml "https://github.com/ikatyang/tree-sitter-yaml")))


;; Autocompletion
;; https://company-mode.github.io/


(add-hook 'after-init-hook #'global-flycheck-mode)

(global-company-mode 1)

(setq company-minimum-prefix-length 2
      company-tooltip-limit 10
      company-tooltip-maximum-width 100
      company-selection-wrap-around t
      company-idle-delay 0.5)


(vertico-mode 1)

;; LSP (built-in)
;;(use-package eglot
;;  :defer t
;;  :hook ((python-mode . eglot-ensure)
;;         (c-mode . eglot-ensure)
;;         (c++-mode . eglot-ensure)
;;	 (lua-mode . eglot-ensure)))


;;(use-package orderless
 ;; :config
 ;; (setq completion-styles '(orderless basic)
 ;;       completion-category-defaults nil
 ;;       completion-category-overrides '((file (styles partial-completion)))))

;;(use-package marginalia
;;  :config
;;  (marginalia-mode 1))

;;(use-package consult
;;  :bind (("C-x b" . consult-buffer)
;;         ("M-y" . consult-yank-pop)))

;; make magit fullscreen in current buffer
(use-package magit
  :defer 2                          ;; load after 2s idle
  :config
  (setq magit-display-buffer-function #'magit-display-buffer-fullframe-status-v1
        magit-bury-buffer-function #'magit-restore-window-configuration))




;; KEYBINDIGS



(defvar my-leader-key (make-sparse-keymap)
  "Leader key prefix map.")

(define-key evil-normal-state-map (kbd "SPC") my-leader-key)
(define-key evil-motion-state-map (kbd "SPC") my-leader-key)
(define-key evil-visual-state-map (kbd "SPC") my-leader-key)


(defvar my-b-map (make-sparse-keymap)
  "Prefix for SPC b ...")
(define-key my-leader-key (kbd "b") my-b-map)

(defvar my-f-map (make-sparse-keymap)
  "Prefix for SPC f ...")
(define-key my-leader-key (kbd "f") my-f-map)

(with-eval-after-load 'magit
  (evil-define-key 'normal magit-status-mode-map
    "s" 'magit-stage
    "S" 'magit-stage-modified))


(define-key my-f-map (kbd "c")
  (lambda ()
    (interactive)
    (dired "~/.dotfiles/.config/emacs/")))

(with-eval-after-load 'dired
  (evil-define-key 'normal dired-mode-map (kbd "N") #'dired-create-empty-file))

(define-key my-f-map (kbd "f") 'dired-jump)
(define-key my-leader-key (kbd ":") 'execute-extended-command)
(define-key my-leader-key (kbd "g") 'magit-status)
(define-key my-b-map (kbd "b") 'consult-buffer)
(define-key my-b-map (kbd "i") 'buffer-menu)

(define-key my-leader-key (kbd "r") 'eval-buffer)

(global-set-key (kbd "<escape>") 'keyboard-escape-quit)

;;; config.el ends here
