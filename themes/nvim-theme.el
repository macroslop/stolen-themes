;;; nvim-theme.el --- An Emacs theme that looks like Neovim's default theme -*- lexical-binding: t; -*-

(deftheme nvim
  "An Emacs theme that looks like Neovim's default theme")

(let ((bg        "#010101")
      (fg        "#E0E2EA")
      (tabbg     "#2c2e33")
      (tabfg     "#C4C6CD")
      (cursor    "#e0e2ea")
      (comment   "#9b9ea4")
      (keyword)
      (string    "#b4f6c0")
      (function  "#8cf8f7")
      (variable)
      (type)
      (constant)
      (region    "#4f5258")
      (line      "#2c2e33")
      (warning   "#FCE094")
      (error     "#FFC0B9")
      (mismatch  "#590008"))

  (custom-theme-set-faces
   'nvim

   ;; default
   `(default ((t (:background ,bg :foreground ,fg))))
   `(cursor ((t (:background ,cursor))))
   `(region ((t (:background ,region))))
   `(highlight ((t (:background ,region))))
   `(hl-line ((t (:background ,line))))
   `(fringe ((t (:background ,bg :foreground ,fg))))
   `(minibuffer-prompt ((t (:foreground ,string :weight bold))))

   ;; line number
   `(line-number ((t (:background ,bg :foreground ,comment))))
   `(line-number-current-line ((t (:background ,line :foreground ,fg :weight bold))))

   ;; syntax highlighting
   `(font-lock-comment-face ((t (:foreground ,comment :slant italic))))
   `(font-lock-doc-face ((t (:foreground ,string))))
   `(font-lock-keyword-face ((t (:foreground ,keyword :weight bold))))
   `(font-lock-string-face ((t (:foreground ,string))))
   `(font-lock-function-name-face ((t (:foreground ,function))))
   `(font-lock-function-call-face ((t (:foreground ,function))))
   `(font-lock-variable-name-face ((t (:foreground ,variable))))
   `(font-lock-type-face ((t (:foreground ,type))))
   `(font-lock-constant-face ((t (:foreground ,constant))))
   `(font-lock-builtin-face ((t (:foreground ,keyword))))
   `(font-lock-warning-face ((t (:foreground ,warning :weight bold))))
   `(font-lock-preprocessor-face ((t (:foreground ,keyword :weight bold))))

   ;; mode line
   `(mode-line ((t (:background ,region :foreground ,fg))))
   `(mode-line-inactive ((t (:background ,line :foreground ,comment))))

   ;; tab-bar-mode
   `(tab-bar ((t (:background ,tabbg))))
   `(tab-bar-tab ((t (:background ,bg :foreground ,fg :weight bold))))
   `(tab-bar-tab-inactive ((t (:background ,tabbg :foreground ,tabfg))))

   ;; tab-line-mode
   `(tab-line ((t (:background ,tabbg))))
   `(tab-line-tab-current ((t (:background ,bg :foreground ,fg :weight bold))))
   `(tab-line-tab-inactive ((t (:background ,tabbg :foreground ,tabfg))))
  
   ;; paren match
   `(show-paren-match ((t (:background ,region :foreground ,fg :weight bold))))
   `(show-paren-mismatch ((t (:background ,mismatch :foreground ,fg))))

   ;; search
   `(isearch ((t (:background ,warning :foreground ,bg :weight bold))))
   `(lazy-highlight ((t (:background ,region :foreground ,fg))))
   `(ido-only-match ((t (:foreground ,string :weight bold))))

   ;; error/warning
   `(error ((t (:foreground ,error :weight bold))))
   `(warning ((t (:foreground ,warning :weight bold))))
   `(success ((t (:foreground ,string :weight bold))))))

(provide-theme 'nvim)

;;; nvim-theme.el ends here
