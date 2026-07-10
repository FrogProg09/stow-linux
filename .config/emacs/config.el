;; CONFIGURATION FILE
;;                  by Frogprog (https://github.com/FrogProg09)

;; LOOK AND FEEL

(set-face-attribute 'default nil
                    :font "JetBrainsMono Nerd Font Mono"
                    :height 170)

(hl-line-mode -1)
(load-theme 'doom-gruvbox t)
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

;; Autocompletion

(use-package company
  :config
  (setq company-idle-delay 0.2
        company-minimum-prefix-length 2
        company-tooltip-limit 10
        company-selection-wrap-around t)
  (global-company-mode 1))

(use-package company-fuzzy
  :after company
  :config
  (company-fuzzy-mode 1))

(use-package company-spell
  :after company
  :config
  (add-hook 'text-mode-hook 'company-spell-mode))

;; LSP (built-in)
(use-package eglot
  :defer t
  :hook ((python-mode . eglot-ensure)
         (c-mode . eglot-ensure)
         (c++-mode . eglot-ensure)
	 (lua-mode . eglot-ensure)))

(use-package vertico
  :config
  (vertico-mode 1))

(use-package orderless
  :config
  (setq completion-styles '(orderless basic)
        completion-category-defaults nil
        completion-category-overrides '((file (styles partial-completion)))))

(use-package marginalia
  :config
  (marginalia-mode 1))

(use-package consult
  :bind (("C-x b" . consult-buffer)
         ("M-y" . consult-yank-pop)))

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

(with-eval-after-load 'magit
  (evil-define-key 'normal magit-status-mode-map
    "s" 'magit-stage
    "S" 'magit-stage-modified))

(define-key my-leader-key (kbd "f") 'dired-jump)
(define-key my-leader-key (kbd ":") 'execute-extended-command)
(define-key my-leader-key (kbd "g") 'magit-status)
(define-key my-b-map (kbd "b") 'consult-buffer)
(define-key my-b-map (kbd "i") 'buffer-menu)

(define-key my-leader-key (kbd "r") 'eval-buffer)

(global-set-key (kbd "<escape>") 'keyboard-escape-quit)
