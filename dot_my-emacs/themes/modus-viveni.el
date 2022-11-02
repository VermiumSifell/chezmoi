(setq modus-themes-mode-line '(borderless padded))

(setq modus-themes-region '(bg-only))

(setq modus-themes-completions '((matches . (background))
				 (selection . (semibold text-also ))
				 (popup . (accented))))

(setq modus-themes-bold-constructs t)
(setq modus-themes-paren-match '(bold intense underline))
(setq modus-themes-syntax '(alt-syntax green-strings yellow-comments))


(setq modus-themes-headings
      (quote ((1 . (rainbow overline background 1.4))
	      (2 . (rainbow background 1.3))
              (3 . (rainbow bold 1.2))
              (t . (semilight 1.1)))))

(setq modus-themes-scale-headings t)

(setq modus-themes-org-blocks 'gray-background)

(load-theme 'modus-vivendi t)
