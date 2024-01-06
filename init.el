(require 'package)
(add-to-list
 'package-archives
 '("melpa" . "https://melpa.org/packages/") t)

;; include manual-package directories
(let ((default-directory  "~/.emacs.d/manual-packages/"))
  (normal-top-level-add-subdirs-to-load-path))

;; we need use-package for the following
(require 'use-package)
(setq use-package-always-ensure t)

;; load org config
(org-babel-load-file "~/.emacs.d/config.org")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ispell-dictionary nil)
 '(package-selected-packages
   '(helm-bookmarks helm-imenu helm-occur helm-buffers helm-files helm-command helm-mode company lsp-mode toc-org titlecase evil drag-stuff spaceline modus-themes yasnippet-snippets cmake-mode)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(mc/cursor-bar-face ((t (:background "brown")))))
