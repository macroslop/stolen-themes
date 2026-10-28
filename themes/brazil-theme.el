;;; brazil-theme.el  --- Minimalist dark theme inspired by Brazil flag -*- lexical-binding: t; -*-

(deftheme brazil
  "Minimalist dark theme inspired by Brazil flag")

(let ((bg "#000000")
      (fg "#ffffff")
      (yellow "#ffdc02")
      (green "#19ae47")
      (blue "#0c87d1")
      (dark-blue "#193375")
      (gray "#888888")
      (red "#ff5f5f"))

  (custom-theme-set-faces
   'brazil

   ;; Basics
   `(default ((t (:background ,bg :foreground ,fg))))
   `(cursor ((t (:background ,yellow))))
   `(region ((t (:background ,gray))))
   `(fringe ((t (:background ,bg :foreground ,blue))))
   `(minibuffer-prompt ((t (:foreground ,green :weight bold))))
   ;; `(vertical-border ((t (:background ,bg :foreground ,blue))))

   ;; Syntax highlighting
   `(font-lock-builtin-face ((t (:foreground ,yellow))))
   `(font-lock-comment-face ((t (:foreground ,gray :slant italic))))
   `(font-lock-constant-face ((t (:foreground ,yellow))))
   `(font-lock-function-name-face ((t (:foreground ,green))))
   `(font-lock-keyword-face ((t (:foreground ,green))))
   `(font-lock-operator-face ((t (:foreground ,green))))
   `(font-lock-number-face ((t (:foreground ,blue))))
   `(font-lock-string-face ((t (:foreground ,green))))
   `(font-lock-type-face ((t (:foreground ,blue))))
   `(font-lock-variable-name-face ((t (:foreground ,yellow))))
   `(font-lock-warning-face ((t (:foreground ,red :weight bold))))

   ;; Mode line
   `(mode-line ((t (:background ,blue :foreground ,bg :box nil))))
   `(mode-line-inactive ((t (:background ,bg :foreground ,gray :box nil))))

   ;; Line numbers
   `(line-number ((t (:foreground ,gray :background ,bg))))
   `(line-number-current-line ((t (:foreground ,yellow :background ,bg :weight bold))))

   ;; Current line highlight
   `(hl-line ((t (:background ,dark-blue))))

   ;; Matching parens
   `(show-paren-match ((t (:background ,green :foreground ,bg :weight bold))))

   ;; Links
   `(link ((t (:foreground ,fg :underline t))))

   ;; Vertico
   `(vertico-current ((t (:background ,dark-blue :foreground ,yellow))))
   ))

(provide-theme 'brazil)

;;; brazil-theme.el ends here
