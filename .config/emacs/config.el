;;; package --- Summary
;;; Commentary:
;; CONFIGURATION FILE
;;                  by Frogprog (https://github.com/FrogProg09)

;;; Code:

;; LOOK AND FEEL

(set-face-attribute 'default nil
                    :font "JetBrainsMono Nerd Font Mono"
                    :height 170)


(hl-line-mode -1)
(load-theme 'doom-gruvbox t)
(doom-modeline-mode 1)
(blink-cursor-mode -1)
(electric-pair-mode 1)
(rainbow-delimiters-mode t)
(global-diff-hl-mode 1)
(recentf-mode 1)

;; pdf mode
(setq doc-view-resolution 300)
(setq pdf-view-use-scaling t)
(setq pdf-cache-image-limit 10) ;; Default is often 64
(setq image-cache-eviction-delay 10) ;; Clear unused images after 10 seconds
(add-hook 'pdf-view-mode-hook #'(lambda () (display-line-numbers-mode -1)))

;; split windows vertically by default
(setq split-width-threshold 0)
(setq split-height-threshold nil)

(setq dired-auto-revert-buffer t) ; update dired each time one opens it

;; tabs  =  4
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq-default evil-shift-width 4)

;; Get rid of the backup files
(setq make-backup-files nil)

;; Spelling
(setq ispell-program-name "hunspell")
(setq ispell-dictionary "en_US")
(setq ispell-dictionary "ru_RU")

;; PACKAGE CONFIG


;; Vim motions
(use-package evil
  :demand
  :config
  (setq evil-want-integration t)
  (evil-mode 1)
  (evil-define-key 'normal dired-mode-map
    "h" 'dired-up-directory
    "l" 'dired-find-file
    "q" 'kill-this-buffer))

(use-package evil-collection
  :after evil
  :config
  (evil-collection-init)
  (evil-collection-dired-setup))

(setq evil-undo-system 'undo-tree)

;; Persistent undo tree
(global-undo-tree-mode 1)
(setq undo-tree-auto-save-history t)
(setq undo-tree-history-directory-alist '(("." . "~/.config/emacs/undo/")))

;; eazy commets
(evil-commentary-mode t)

;; great termial

(use-package vterm
  :defer t
  :config
  (setq vterm-max-scrollback 10000
        vterm-always-compile-module t)
  :hook (vterm-mode . (lambda () (display-line-numbers-mode -1))))

(setq vterm-enable-true-colors t)
(setq shell-file-name "/bin/fish")

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
;; https://github.com/minad/corfu

(add-hook 'after-init-hook #'global-flycheck-mode)

(use-package corfu
  :init
  (setq corfu-cycle t
        corfu-auto t
        corfu-auto-delay 0.2
        corfu-auto-prefix 2
        corfu-quit-at-boundary nil)
  :config
  (corfu-popupinfo-mode 1)
  (global-corfu-mode 1))
(vertico-mode 1)

(add-to-list 'completion-at-point-functions #'cape-file)
(add-to-list 'completion-at-point-functions #'cape-dabbrev)

;; LSP
(use-package lsp-mode
  :hook ((python-mode . lsp-deferred)
         (c-mode . lsp-deferred)
         (c++-mode . lsp-deferred)
         (lua-mode . lsp-deferred))
  :commands lsp
  :config
  (setq lsp-completion-provider :none))

(setq lsp-headerline-breadcrumb-enable nil)   ;; breadcrumb bar
(setq lsp-headerline-enable nil)              ;; fully disable headerline
(setq lsp-modeline-diagnostics-enable nil)



;; make magit fullscreen in current buffer
(use-package magit
  :defer 2                          ;; load after 2s idle
  :config
  (setq magit-display-buffer-function #'magit-display-buffer-fullframe-status-v1
        magit-bury-buffer-function #'magit-restore-window-configuration))




;; KEYBINDIGS




(with-eval-after-load 'evil
  (define-key evil-insert-state-map (kbd "TAB") #'tab-to-tab-stop))

(defvar my-leader-key (make-sparse-keymap)
  "Leader key prefix map.")

(define-key evil-normal-state-map (kbd "SPC") my-leader-key)
(define-key evil-motion-state-map (kbd "SPC") my-leader-key)
(define-key evil-visual-state-map (kbd "SPC") my-leader-key)


(defvar my-b-map (make-sparse-keymap)
  "Prefix for SPC b ...")
(define-key my-leader-key (kbd "b") my-b-map)

(defvar my-w-map (make-sparse-keymap)
  "Prefix for SPC w ...")
(define-key my-leader-key (kbd "w") my-w-map)

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

(define-key my-f-map (kbd "h")
            (lambda ()
              (interactive)
              (dired "~/")))

(define-key my-f-map (kbd "d")
            (lambda ()
              (interactive)
              (dired "~/Documents/")))


(with-eval-after-load 'dired
  (evil-define-key 'normal dired-mode-map (kbd ".") #'dired-create-empty-file))

(define-key my-f-map (kbd "f") 'dired-jump)
(define-key my-f-map (kbd "r") 'recentf-open)

(define-key my-leader-key (kbd ":") 'execute-extended-command)
(define-key my-leader-key (kbd "g") 'magit-status)
(define-key my-leader-key (kbd "c") 'compile)
(define-key my-leader-key (kbd "v") 'vterm)
(define-key my-leader-key (kbd "h") 'describe-symbol)

(define-key my-b-map (kbd "b") 'consult-buffer)
(define-key my-b-map (kbd "i") 'buffer-menu)


(define-key my-w-map (kbd "v") 'split-window-right)
(define-key my-w-map (kbd "q") 'delete-window)
(define-key my-w-map (kbd "w") 'other-window)

(define-key my-w-map (kbd "h") 'windmove-left)
(define-key my-w-map (kbd "j") 'windmove-down)
(define-key my-w-map (kbd "k") 'windmove-up)
(define-key my-w-map (kbd "l") 'windmove-right)

(define-key my-w-map (kbd "H") 'windmove-swap-states-left)
(define-key my-w-map (kbd "J") 'windmove-swap-states-down)
(define-key my-w-map (kbd "K") 'windmove-swap-states-up)
(define-key my-w-map (kbd "L") 'windmove-swap-states-right)


(define-key my-leader-key (kbd "r") 'eval-buffer)

(global-set-key (kbd "<escape>") 'keyboard-escape-quit)

;;; config.el ends here
