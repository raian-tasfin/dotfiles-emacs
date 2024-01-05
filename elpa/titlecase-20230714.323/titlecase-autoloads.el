;;; titlecase-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "titlecase" "titlecase.el" (0 0 0 0))
;;; Generated autoloads from titlecase.el

(autoload 'titlecase-region "titlecase" "\
Title-case the region of English text from BEGIN to END.
Uses the style provided in `titlecase-style', unless optional
STYLE is provided.

When called interactively , or when INTERACTIVEP is non-nil,
\\[universal-argument] \\[titlecase-region] will prompt the user
for the style to use.

\(fn BEGIN END &optional STYLE INTERACTIVEP)" t nil)

(autoload 'titlecase-line "titlecase" "\
Title-case the line at POINT.
Uses the style provided in `titlecase-style', unless optional
STYLE is provided.

When called interactively , or when INTERACTIVEP is non-nil,
POINT is the current point, and calling with
\\[universal-argument] \\[titlecase-line] will prompt the user
for the style to use.

\(fn &optional POINT STYLE INTERACTIVEP)" t nil)

(autoload 'titlecase-sentence "titlecase" "\
Title-case the sentence at POINT.
Uses the style provided in `titlecase-style', unless optional
STYLE is provided.

When called interactively , or when INTERACTIVEP is non-nil,
POINT is the current point, and calling with
\\[universal-argument] \\[titlecase-sentence] will prompt the
user for the style to use.

\(fn &optional POINT STYLE INTERACTIVEP)" t nil)

(autoload 'titlecase-dwim "titlecase" "\
Title-case either the region, if active, or the current line.
Uses the style provided in `titlecase-style', unless optional
STYLE is provided.

When called interactively with \\[universal-argument]
\\[titlecase-dwim], or when INTERACTIVEP is non-nil, prompt the
user for the style to use.

\(fn &optional STYLE INTERACTIVEP)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "titlecase" '("titlecase-")))

;;;***

;;;### (autoloads nil "titlecase-data" "titlecase-data.el" (0 0 0
;;;;;;  0))
;;; Generated autoloads from titlecase-data.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "titlecase-data" '("titlecase-")))

;;;***

;;;### (autoloads nil nil ("titlecase-pkg.el") (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; titlecase-autoloads.el ends here
