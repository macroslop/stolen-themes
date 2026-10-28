;;; vesper-theme.el --- A dark theme based on Vesper for VS Code -*- lexical-binding: t; -*-

;; Copyright (C) 2026

;; Author: Vesper Theme
;; URL: https://github.com/raunofreiberg/vesper
;; Version: 1.0.0
;; Package-Requires: ((emacs "24.1"))
;; Keywords: faces themes

;; This file is not part of GNU Emacs.

;;; Commentary:

;; Vesper is a minimal dark theme inspired by the Vesper VS Code theme.

;;; Code:

(deftheme vesper
  "A dark theme inspired by Vesper for VS Code.")

(let ((bg "#101010")
      (fg "#FFFFFF")
      (bg-alt "#161616")
      (bg-highlight "#232323")
      (bg-hover "#282828")
      (bg-widget "#1C1C1C")
      (border "#282828")
      (comment "#9b9b9b") ; blended from #8b8b8b94 over #101010
      (keyword "#A0A0A0")
      (func "#FFC799")
      (string "#99FFE4")
      (error "#FF8080")
      (warning "#FFC799")
      (accent "#FFC799")
      (accent-hover "#FFCFA8")
      (line-number "#505050")
      (inlay "#A0A0A0")
      (selection "#333333") ; blended from #FFFFFF25 over #101010
      (selection-fg "#FFFFFF")
      (dim "#7E7E7E")
      (dim2 "#707070")
      (diff-add "#1a2422") ; blended from #99FFE415 over #101010
      (diff-del "#241919") ; blended from #FF808015 over #101010
      (modeline-active "#1f1f1f")
      (modeline-inactive "#141414"))

  (custom-theme-set-faces
   'vesper

   ;; Basic faces
   `(default ((t (:background ,bg :foreground ,fg))))
   `(cursor ((t (:background ,accent))))
   `(region ((t (:background ,selection :foreground ,selection-fg))))
   `(highlight ((t (:background ,bg-highlight))))
   `(hl-line ((t (:background ,modeline-active))))
   `(fringe ((t (:background ,bg))))
   `(vertical-border ((t (:foreground ,border))))
   `(border ((t (:background ,border :foreground ,border))))
   `(link ((t (:foreground ,accent :underline t))))
   `(link-visited ((t (:foreground ,accent-hover :underline t))))
   `(warning ((t (:foreground ,warning))))
   `(error ((t (:foreground ,error))))
   `(success ((t (:foreground ,string))))
   `(shadow ((t (:foreground ,keyword))))
   `(match ((t (:background ,bg-highlight :foreground ,accent))))

   ;; Font lock (syntax highlighting)
   `(font-lock-comment-face ((t (:foreground ,comment :slant italic))))
   `(font-lock-comment-delimiter-face ((t (:foreground ,comment))))
   `(font-lock-string-face ((t (:foreground ,string))))
   `(font-lock-doc-face ((t (:foreground ,comment :slant italic))))
   `(font-lock-keyword-face ((t (:foreground ,keyword))))
   `(font-lock-builtin-face ((t (:foreground ,keyword))))
   `(font-lock-function-name-face ((t (:foreground ,func))))
   `(font-lock-variable-name-face ((t (:foreground ,fg))))
   `(font-lock-type-face ((t (:foreground ,func))))
   `(font-lock-constant-face ((t (:foreground ,func))))
   `(font-lock-warning-face ((t (:foreground ,warning))))
   `(font-lock-preprocessor-face ((t (:foreground ,keyword))))
   `(font-lock-negation-char-face ((t (:foreground ,error))))
   `(font-lock-regexp-grouping-backslash ((t (:foreground ,keyword))))
   `(font-lock-regexp-grouping-construct ((t (:foreground ,keyword))))

   ;; Line numbers
   `(line-number ((t (:foreground ,line-number :background ,bg))))
   `(line-number-current-line ((t (:foreground ,accent :background ,modeline-active :weight bold))))

   ;; Mode line
   `(mode-line ((t (:background ,modeline-active :foreground ,inlay))))
   `(mode-line-inactive ((t (:background ,modeline-inactive :foreground ,dim2))))
   `(mode-line-buffer-id ((t (:foreground ,accent :weight bold))))
   `(mode-line-highlight ((t (:foreground ,fg))))
   `(mode-line-emphasis ((t (:foreground ,accent))))

   ;; Search
   `(isearch ((t (:background ,accent :foreground ,bg :weight bold))))
   `(lazy-highlight ((t (:background ,selection :foreground ,selection-fg))))
   `(isearch-fail ((t (:background ,error :foreground ,fg))))

   ;; Minibuffer
   `(minibuffer-prompt ((t (:foreground ,accent :weight bold))))

   ;; Completion
   `(completions-annotations ((t (:foreground ,keyword))))
   `(completions-common-part ((t (:foreground ,fg))))
   `(completions-first-difference ((t (:foreground ,accent))))

   ;; Company
   `(company-tooltip ((t (:background ,bg-alt :foreground ,fg :border ,border))))
   `(company-tooltip-selection ((t (:background ,bg-highlight :foreground ,accent))))
   `(company-tooltip-common ((t (:foreground ,accent))))
   `(company-tooltip-common-selection ((t (:foreground ,accent))))
   `(company-tooltip-annotation ((t (:foreground ,keyword))))
   `(company-scrollbar-bg ((t (:background ,bg-widget))))
   `(company-scrollbar-fg ((t (:background ,line-number))))
   `(company-preview ((t (:foreground ,keyword :slant italic))))
   `(company-preview-common ((t (:foreground ,accent))))

   ;; Ivy/Swiper/Counsel
   `(ivy-current-match ((t (:background ,bg-highlight :foreground ,accent :weight bold))))
   `(ivy-minibuffer-match-face-1 ((t (:foreground ,fg))))
   `(ivy-minibuffer-match-face-2 ((t (:background ,bg-highlight :foreground ,accent))))
   `(ivy-minibuffer-match-face-3 ((t (:background ,bg-highlight :foreground ,string))))
   `(ivy-minibuffer-match-face-4 ((t (:background ,bg-highlight :foreground ,warning))))
   `(ivy-remote ((t (:foreground ,keyword))))
   `(swiper-match-face-1 ((t (:foreground ,fg))))
   `(swiper-match-face-2 ((t (:background ,bg-highlight :foreground ,accent))))
   `(swiper-line-face ((t (:background ,bg-alt))))

   ;; Vertico/Orderless
   `(vertico-current ((t (:background ,bg-highlight :foreground ,accent))))
   `(orderless-match-face-0 ((t (:foreground ,accent :weight bold))))
   `(orderless-match-face-1 ((t (:foreground ,string :weight bold))))
   `(orderless-match-face-2 ((t (:foreground ,warning :weight bold))))
   `(orderless-match-face-3 ((t (:foreground ,keyword :weight bold))))

   ;; Which-key
   `(which-key-key-face ((t (:foreground ,accent))))
   `(which-key-command-description-face ((t (:foreground ,fg))))
   `(which-key-group-description-face ((t (:foreground ,keyword))))
   `(which-key-separator-face ((t (:foreground ,comment))))

   ;; Helm
   `(helm-selection ((t (:background ,bg-highlight :foreground ,accent))))
   `(helm-match ((t (:foreground ,accent))))
   `(helm-source-header ((t (:background ,bg-alt :foreground ,inlay :weight bold))))

   ;; Magit
   `(magit-section-highlight ((t (:background ,modeline-active))))
   `(magit-section-heading ((t (:foreground ,accent :weight bold))))
   `(magit-branch-local ((t (:foreground ,string))))
   `(magit-branch-remote ((t (:foreground ,func))))
   `(magit-diff-hunk-heading ((t (:background ,bg-widget :foreground ,inlay))))
   `(magit-diff-hunk-heading-highlight ((t (:background ,bg-highlight :foreground ,fg))))
   `(magit-diff-added ((t (:background ,diff-add :foreground ,string))))
   `(magit-diff-added-highlight ((t (:background "#1f2927" :foreground ,string))))
   `(magit-diff-removed ((t (:background ,diff-del :foreground ,error))))
   `(magit-diff-removed-highlight ((t (:background "#291f1f" :foreground ,error))))
   `(magit-diff-context ((t (:foreground ,keyword))))
   `(magit-diff-context-highlight ((t (:background ,modeline-active :foreground ,fg))))
   `(magit-hash ((t (:foreground ,comment))))
   `(magit-tag ((t (:foreground ,string))))
   `(magit-diff-file-heading ((t (:foreground ,fg :weight bold))))

   ;; Git-gutter/diff-hl
   `(git-gutter:added ((t (:foreground ,string))))
   `(git-gutter:deleted ((t (:foreground ,error))))
   `(git-gutter:modified ((t (:foreground ,warning))))
   `(diff-hl-insert ((t (:background ,string :foreground ,bg))))
   `(diff-hl-delete ((t (:background ,error :foreground ,bg))))
   `(diff-hl-change ((t (:background ,warning :foreground ,bg))))

   ;; Ediff
   `(ediff-current-diff-A ((t (:background ,diff-del))))
   `(ediff-current-diff-B ((t (:background ,diff-add))))
   `(ediff-fine-diff-A ((t (:background "#2b1f1f"))))
   `(ediff-fine-diff-B ((t (:background "#1f2b28"))))
   `(ediff-even-diff-A ((t (:background ,modeline-active))))
   `(ediff-even-diff-B ((t (:background ,modeline-active))))
   `(ediff-odd-diff-A ((t (:background ,modeline-active))))
   `(ediff-odd-diff-B ((t (:background ,modeline-active))))

   ;; Dired
   `(dired-directory ((t (:foreground ,func :weight bold))))
   `(dired-flagged ((t (:foreground ,error))))
   `(dired-marked ((t (:foreground ,warning))))
   `(dired-symlink ((t (:foreground ,string :slant italic))))
   `(dired-header ((t (:foreground ,accent :weight bold))))

   ;; Org mode
   `(org-level-1 ((t (:foreground ,string :weight bold))))
   `(org-level-2 ((t (:foreground ,func :weight bold))))
   `(org-level-3 ((t (:foreground ,string :weight bold))))
   `(org-level-4 ((t (:foreground ,func :weight bold))))
   `(org-level-5 ((t (:foreground ,string :weight bold))))
   `(org-level-6 ((t (:foreground ,func :weight bold))))
   `(org-level-7 ((t (:foreground ,string :weight bold))))
   `(org-level-8 ((t (:foreground ,func :weight bold))))
   `(org-superstar-header-bullet ((t (:foreground ,bg))))
   `(org-superstar-itembullet ((t (:foreground ,line-number))))
   `(org-superstar-leading-star ((t (:foreground ,bg))))
   `(outline-1 ((t (:foreground ,string :weight bold))))
   `(outline-2 ((t (:foreground ,func :weight bold))))
   `(outline-3 ((t (:foreground ,string :weight bold))))
   `(outline-4 ((t (:foreground ,func :weight bold))))
   `(outline-5 ((t (:foreground ,string :weight bold))))
   `(outline-6 ((t (:foreground ,func :weight bold))))
   `(outline-7 ((t (:foreground ,string :weight bold))))
   `(outline-8 ((t (:foreground ,func :weight bold))))
   `(org-document-title ((t (:foreground ,accent :weight bold))))
   `(org-code ((t (:foreground ,string :background ,bg-widget))))
   `(org-verbatim ((t (:foreground ,string))))
   `(org-block ((t (:background ,modeline-active))))
   `(org-block-begin-line ((t (:foreground ,comment :background ,modeline-active))))
   `(org-block-end-line ((t (:foreground ,comment :background ,modeline-active))))
   `(org-link ((t (:foreground ,accent :underline t))))
   `(org-date ((t (:foreground ,keyword))))
   `(org-todo ((t (:foreground ,error :weight bold))))
   `(org-done ((t (:foreground ,string :weight bold))))
   `(org-headline-done ((t (:foreground ,keyword))))
   `(org-table ((t (:foreground ,fg))))
   `(org-hide ((t (:foreground ,bg))))
   `(org-checkbox ((t (:foreground ,fg :weight bold))))
   `(org-checkbox-statistics-todo ((t (:foreground ,error :weight bold))))
   `(org-checkbox-statistics-done ((t (:foreground ,string :weight bold))))

   ;; Markdown mode
   `(markdown-header-face-1 ((t (:foreground ,accent :weight bold :height 1.1))))
   `(markdown-header-face-2 ((t (:foreground ,accent :weight bold))))
   `(markdown-header-face-3 ((t (:foreground ,func :weight bold))))
   `(markdown-header-face-4 ((t (:foreground ,func))))
   `(markdown-header-face-5 ((t (:foreground ,string))))
   `(markdown-header-face-6 ((t (:foreground ,string))))
   `(markdown-code-face ((t (:foreground ,string :background ,bg-widget))))
   `(markdown-inline-code-face ((t (:foreground ,string))))
   `(markdown-pre-face ((t (:foreground ,fg :background ,modeline-active))))
   `(markdown-link-face ((t (:foreground ,accent :underline t))))
   `(markdown-url-face ((t (:foreground ,keyword))))
   `(markdown-bold-face ((t (:weight bold))))
   `(markdown-italic-face ((t (:slant italic))))
   `(markdown-list-face ((t (:foreground ,fg))))
   `(markdown-blockquote-face ((t (:foreground ,keyword :slant italic))))

   ;; Tree-sitter faces (if using tree-sitter)
   `(tree-sitter-hl-face:comment ((t (:foreground ,comment :slant italic))))
   `(tree-sitter-hl-face:string ((t (:foreground ,string))))
   `(tree-sitter-hl-face:keyword ((t (:foreground ,keyword))))
   `(tree-sitter-hl-face:function ((t (:foreground ,func))))
   `(tree-sitter-hl-face:function.call ((t (:foreground ,func))))
   `(tree-sitter-hl-face:method.call ((t (:foreground ,func))))
   `(tree-sitter-hl-face:type ((t (:foreground ,func))))
   `(tree-sitter-hl-face:variable ((t (:foreground ,fg))))
   `(tree-sitter-hl-face:variable.parameter ((t (:foreground ,fg))))
   `(tree-sitter-hl-face:property ((t (:foreground ,fg))))
   `(tree-sitter-hl-face:constant ((t (:foreground ,func))))
   `(tree-sitter-hl-face:number ((t (:foreground ,func))))
   `(tree-sitter-hl-face:operator ((t (:foreground ,keyword))))
   `(tree-sitter-hl-face:punctuation ((t (:foreground ,keyword))))
   `(tree-sitter-hl-face:punctuation.bracket ((t (:foreground ,keyword))))
   `(tree-sitter-hl-face:punctuation.delimiter ((t (:foreground ,keyword))))
   `(tree-sitter-hl-face:tag ((t (:foreground ,func))))
   `(tree-sitter-hl-face:attribute ((t (:foreground ,keyword))))
   `(tree-sitter-hl-face:constructor ((t (:foreground ,func))))

   ;; Show paren
   `(show-paren-match ((t (:background ,bg-highlight :foreground ,accent :weight bold))))
   `(show-paren-mismatch ((t (:background ,error :foreground ,fg :weight bold))))

   ;; Rainbow delimiters
   `(rainbow-delimiters-depth-1-face ((t (:foreground ,keyword))))
   `(rainbow-delimiters-depth-2-face ((t (:foreground ,keyword))))
   `(rainbow-delimiters-depth-3-face ((t (:foreground ,keyword))))
   `(rainbow-delimiters-depth-4-face ((t (:foreground ,keyword))))
   `(rainbow-delimiters-depth-5-face ((t (:foreground ,keyword))))
   `(rainbow-delimiters-depth-6-face ((t (:foreground ,keyword))))
   `(rainbow-delimiters-depth-7-face ((t (:foreground ,keyword))))
   `(rainbow-delimiters-depth-8-face ((t (:foreground ,keyword))))
   `(rainbow-delimiters-depth-9-face ((t (:foreground ,keyword))))
   `(rainbow-delimiters-unmatched-face ((t (:foreground ,error))))

   ;; Terminal colors
   `(term-color-black ((t (:background ,bg :foreground ,bg))))
   `(term-color-red ((t (:background ,error :foreground ,error))))
   `(term-color-green ((t (:background ,string :foreground ,string))))
   `(term-color-yellow ((t (:background ,warning :foreground ,warning))))
   `(term-color-blue ((t (:background ,keyword :foreground ,keyword))))
   `(term-color-magenta ((t (:background ,func :foreground ,func))))
   `(term-color-cyan ((t (:background ,string :foreground ,string))))
   `(term-color-white ((t (:background ,fg :foreground ,fg))))
   `(term-default-fg-color ((t (:foreground ,fg))))
   `(term-default-bg-color ((t (:background ,bg))))

   ;; Flycheck/Flymake
   `(flycheck-error ((t (:underline (:style wave :color ,error)))))
   `(flycheck-warning ((t (:underline (:style wave :color ,warning)))))
   `(flycheck-info ((t (:underline (:style wave :color ,keyword)))))
   `(flymake-error ((t (:underline (:style wave :color ,error)))))
   `(flymake-warning ((t (:underline (:style wave :color ,warning)))))
   `(flymake-note ((t (:underline (:style wave :color ,keyword)))))

   ;; LSP
   `(lsp-face-highlight-textual ((t (:background ,bg-highlight))))
   `(lsp-face-highlight-read ((t (:background ,bg-highlight))))
   `(lsp-face-highlight-write ((t (:background ,selection))))

   ;; UI elements
   `(tab-bar ((t (:background ,bg :foreground ,dim))))
   `(tab-bar-tab ((t (:background ,modeline-active :foreground ,fg))))
   `(tab-bar-tab-inactive ((t (:background ,modeline-inactive :foreground ,dim))))
   `(header-line ((t (:background ,modeline-active :foreground ,inlay))))
   `(tooltip ((t (:background ,bg-alt :foreground ,fg :border ,border))))
   `(widget-field ((t (:background ,bg-widget))))
   `(widget-button ((t (:foreground ,accent))))
   `(button ((t (:background ,accent :foreground ,bg :box (:line-width 2 :color ,accent) :weight bold))))
   `(custom-button ((t (:background ,accent :foreground ,bg))))
   `(custom-button-mouse ((t (:background ,accent-hover :foreground ,bg))))
   `(custom-button-pressed ((t (:background ,accent-hover :foreground ,bg))))

   ;; Misc
   `(escape-glyph ((t (:foreground ,keyword))))
   `(nobreak-space ((t (:underline t :foreground ,keyword))))
   `(homoglyph ((t (:foreground ,warning))))))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'vesper)

;;; vesper-theme.el ends here
