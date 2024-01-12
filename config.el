(add-hook 'org-mode-hook #'org-num-mode)

(use-package toc-org
  :config
  (add-hook 'org-mode-hook 'toc-org-mode))

(setq-default c-basic-offset 4)

(use-package lsp-java
  :config
  (add-hook 'java-mode-hook #'lsp))

(add-hook 'makefile-gmake-mode-hook #'lsp)

(setq makefile-cleanup-continuations t)

(add-hook 'LaTeX-mode-hook 'add-my-latex-environments)
(defun add-my-latex-environments ()
(LaTeX-add-environments
'("align" LaTeX-env-label)
'("align*" LaTeX-env-label)
))

(use-package drag-stuff
  :config
  (drag-stuff-global-mode 1)
  (drag-stuff-define-keys))

(add-hook 'org-mode-hook (lambda () (drag-stuff-mode -1)))

(use-package evil
  :init
  (evil-mode 1))

(use-package multiple-cursors
  :init
  (setq-default cursor-type '(bar . 2.5))
  (custom-set-faces
   '(mc/cursor-bar-face
     ((t(:background "brown"))))))

(use-package multiple-cursors
  :config
  (global-set-key (kbd "C->") 'mc/mark-next-like-this)
  (global-set-key (kbd "C-<") 'mc/mark-previous-like-this))

(use-package multiple-cursors
  :config
  (global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this))

(use-package titlecase)

(use-package helm
  :ensure t
  :config
  (global-set-key (kbd "M-x") #'helm-M-x)
  (global-set-key (kbd "C-x r b") #'helm-filtered-bookmarks)
  (global-set-key (kbd "C-x C-f") #'helm-find-files)
  (define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action)
  (helm-mode 1))

(use-package ethan-wspace
  :ensure t
  :config
  (setq mode-require-final-newline nil)
  (global-ethan-wspace-mode 1))

(add-hook 'after-save-hook #'ethan-wspace-clean-all)

(use-package lsp-mode
  :config
  (setq lsp-enable-on-type-formatting nil)
  ;; (setq lsp-completion-provider :capf)
  (add-hook 'prog-mode-hook #'lsp)
  (add-hook 'prog-mode-hook #'lsp-ui-mode)
  )

(use-package company
  :init (global-set-key (kbd "C-<tab>") 'company-yasnippet)
  :after lsp-mode
  :config (global-company-mode)
  :hook (prog-mode . company-mode)
  :bind (:map company-active-map
	      ("<tab>" . company-complete-selection)
	      (:map lsp-mode-map
		    ("<tab>" . company-indent-or-complete-common)))
  :custom
  (company-minimum-prefix-length 1)
  (company-idle-delay 0)
  (company-dabrev-downcase 0)
  (add-hook 'after-init-hook 'global-company-mode))

(use-package lsp-latex
  :config
  (with-eval-after-load "tex-mode"
    (add-hook 'tex-mode-hook 'lsp)
    (add-hook 'latex-mode-hook 'lsp))
  (with-eval-after-load "yatex"
    (add-hook 'yatex-mode-hook 'lsp))
  (with-eval-after-load "bibtex"
    (add-hook 'bibtex-mode-hook 'lsp)))

(use-package lsp-ui
  :hook (lsp-mode . lsp-ui-mode)
  :config
  (setq lsp-enable-symbol-highlighting 1)
  (setq lsp-ui-doc-enable 1)
  ;; (setq lsp-ui-doc-show-with-cursor 1)
  (setq lsp-ui-doc-show-with-mouse 1)
  (setq lsp-lens-enable 1)
  (setq lsp-headerline-breadcrumb-enable 1)
  (setq lsp-ui-sideline-enable 1)
  ;; (setq lsp-ui-sideline-show-code-actions 1)
  (setq lsp-ui-sideline-enable 1)
  (setq lsp-ui-sideline-show-hover 1)
  ;; (setq lsp-modeline-code-actions-enable 1)
  (setq lsp-ui-sideline-enable 1)
  (setq lsp-ui-sideline-show-diagnostics 1)
  (setq lsp-eldoc-enable-hover 1)
  (setq lsp-modeline-diagnostics-enable 1)
  ;; (setq lsp-signature-auto-activate 1)
  ;; (setq lsp-signature-render-documentation 1)
  ;; (setq lsp-completion-show-detail 1)
  ;; (setq lsp-completion-show-kind 1)
  )

(use-package yasnippet
  :config
  (yas-global-mode 1)
  (setq yas-snippet-dirs '("~/.emacs.d/snippets")))

(use-package flycheck)
(require 'flycheck)
(global-flycheck-mode)

(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

(setq
backup-by-copying t      ; don't clobber symlinks
backup-directory-alist
 '(("." . "~/.saves/"))    ; don't litter my fs tree
delete-old-versions t
kept-new-versions 6
kept-old-versions 2
version-control nil)       ; don't versioned backups

(setq inhibit-startup-message t)

(tool-bar-mode -1)

(menu-bar-mode -1)

(set-frame-font "Fira Code-11.5" nil t)

(setq display-line-numbers-type 'relative)
(global-display-line-numbers-mode)

(use-package modus-themes
  :config
  (load-theme 'modus-operandi-tinted t))

(use-package spaceline
  :config
  (spaceline-spacemacs-theme)
  (spaceline-toggle-minor-modes-off)
  (spaceline-toggle-buffer-encoding-off)
  (spaceline-toggle-buffer-encoding-abbrev-off)
  (setq spaceline-highlight-face-func
	'spaceline-highlight-face-evil-state)
  (spaceline-define-segment line-column
    "The current line and column numbers."
    "l:%l c:%2c")
  (spaceline-define-segment time
    "The current time."
    (format-time-string "%H:%M"))
  (spaceline-define-segment date
    "The current date."
    (format-time-string "%h %d"))
  (spaceline-toggle-time-on)
  (spaceline-emacs-theme 'date 'time))

(setq default-tab-width 4)

(setq-default auto-fill-function 'do-auto-fill)

(global-set-key (kbd "M-;") 'comment-line)

(electric-pair-mode 1)

(dolist (hook '(text-mode-hook))
  (add-hook hook (lambda () (flyspell-mode 1))))
