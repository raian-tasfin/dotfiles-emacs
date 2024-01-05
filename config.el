(add-hook 'org-mode-hook #'org-num-mode)

(use-package org-make-toc
:requires dash
:init
  (setq org-make-toc-insert-custom-ids t))

(setq-default c-basic-offset 4)

(setq auto-save-file-name-transforms
  `((".*" ,temporary-file-directory t)))

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

(electric-pair-mode 1)

(dolist (hook '(text-mode-hook))
  (add-hook hook (lambda () (flyspell-mode 1))))
