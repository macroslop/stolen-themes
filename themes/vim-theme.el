;;; vim-theme.el --- Vim default colors -*- lexical-binding: t; -*-

(deftheme vim
  "Emacs theme ported from Vim's default dark colorscheme")

(let ((class '((class color) (min-colors 89)))

      ;; Vim-inspired classic terminal colors
      (fg "White")
      (bg "Black")
      (cursor "Magenta")
      (comment-fg "Cyan")
      (constant-fg "Magenta")
      (identifier-fg "Cyan")
      (statement-fg "Yellow")
      (preproc-fg "Magenta")
      (type-fg "LightGreen")
      (special-fg "LightRed")
      (string-fg "Orange")
      (number-fg "Orange")
      (warning-fg "Orange")
      (error-fg "Red")
      (search-bg "Yellow")
      (match-paren-bg "DarkCyan")
      (visual-bg "DarkGrey")
      (mode-line-fg "White")
      (mode-line-bg "#3a3a3a")
      (mode-line-inactive-fg "#0e0e0e")
      (mode-line-inactive-bg "#2c2c2c")
      (region-bg "grey45"))

  (custom-theme-set-faces
   'vim

   ;; Basics
   `(default ((,class (:foreground ,fg :background ,bg))))
   `(cursor ((,class (:background ,cursor))))
   `(fringe ((,class (:background ,bg))))
   `(region ((,class (:background ,region-bg))))
   `(highlight ((,class (:background ,region-bg))))
   `(hl-line ((,class (:background ,mode-line-inactive-bg))))
   `(match ((,class (:background ,match-paren-bg))))
   `(shadow ((,class (:foreground "Grey"))))
   `(link ((,class (:foreground "LightBlue"))))

   ;; Modeline
   `(mode-line ((,class (:foreground ,mode-line-fg :background ,mode-line-bg))))
   `(mode-line-inactive ((,class (:foreground ,mode-line-inactive-fg :background ,mode-line-inactive-bg))))

   `(vertical-border ((,class (:foreground ,mode-line-inactive-bg))))

   ;; Syntax
   `(font-lock-comment-face ((,class (:foreground ,comment-fg))))
   `(font-lock-constant-face ((,class (:foreground ,constant-fg))))
   `(font-lock-builtin-face ((,class (:foreground ,preproc-fg))))
   `(font-lock-function-name-face ((,class (:foreground ,identifier-fg))))
   `(font-lock-variable-name-face ((,class (:foreground ,identifier-fg))))
   `(font-lock-keyword-face ((,class (:foreground ,statement-fg :weight bold))))
   `(font-lock-type-face ((,class (:foreground ,type-fg :weight bold))))
   `(font-lock-string-face ((,class (:foreground ,string-fg))))
   `(font-lock-number-face ((,class (:foreground ,number-fg))))
   `(font-lock-warning-face ((,class (:foreground ,warning-fg :weight bold))))
   `(error ((,class (:foreground ,error-fg :weight bold))))
   `(warning ((,class (:foreground ,warning-fg :weight bold))))
   `(success ((,class (:foreground ,type-fg :weight bold))))

   ;; Search
   `(isearch ((,class (:background ,search-bg :foreground "Black"))))
   `(lazy-highlight ((,class (:background "Grey"))))

   ;; Diff
   `(diff-added ((,class (:background "DarkBlue"))))
   `(diff-removed ((,class (:background "DarkCyan"))))
   `(diff-changed ((,class (:background "DarkMagenta"))))

   ;; Line numbers
   `(line-number ((,class (:foreground "Yellow" :background ,bg))))
   `(line-number-current-line ((,class (:foreground "Yellow" :background ,region-bg :weight bold))))
   ))

(provide-theme 'vim)

;;; vim-theme.el ends here
