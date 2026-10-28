;;; eink-theme.el --- Eink color theme  -*- lexical-binding: t; -*-

;; Copyright (C) 2013-2016 Marian Schubert

;; Author: Marian Schubert <marian.schubert@gmail.com>
;; URL: http://github.com/maio/eink-emacs
;; Version: 1.0

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; Low distraction, minimalistic color theme emulating reading
;; on E Ink devices.

;;; Credits:

;; Inspired by:
;;
;; https://bitbucket.org/kisom/eink.vim
;; https://github.com/dmand/eink.el
;; http://www.daveliepmann.stfi.re/tufte-css/?sf=wklwy

;;; Code:

(deftheme eink
  "Theme emulating reading on an E Ink device.")

(let ((fg "#111111")
      (fg-dark "#aaaaa8")
      (bg-light "#d0d0cb")
      (bg "#ccccc8")
      (bg-dark "#bbbbb8")
      (blue "#222291")
      (brown "#7B5A3A")
      (cyan "#6F8F99")
      (green "#4E6B4A")
      (orange "#C46A2D")
      (pink "#C97A8A")
      (purple "#7A6C8E")
      (red "#B33A2E")
      (teal "#4F7A73")
      (yellow "#D4B847"))

  (custom-theme-set-faces
   'eink

   ;; generic stuff
   `(default ((t (:background ,bg :foreground ,fg))))
   `(button ((t (:foreground ,fg :underline t))))
   `(cursor ((t (:background ,fg :foreground ,bg))))
   `(custom-variable-tag ((t (:foreground ,fg :weight bold))))
   `(default-italic ((t (:italic t))))
   `(font-latex-bold-face ((t (:foreground ,fg))))
   `(font-latex-italic-face ((t (:foreground ,fg :slant italic))))
   `(font-latex-match-reference-keywords ((t (:foreground ,fg))))
   `(font-latex-match-variable-keywords ((t (:foreground ,fg))))
   `(font-latex-string-face ((t (:foreground "#a9a9a9"))))
   `(font-lock-builtin-face ((t (:background ,bg :foreground ,fg))))
   `(font-lock-comment-delimiter-face ((t (:foreground "#808080"))))
   `(font-lock-comment-face ((t (:foreground ,fg-dark :weight bold :italic t))))
   `(font-lock-constant-face ((t (:foreground ,fg))))
   `(font-lock-doc-face ((t (:foreground ,fg :weight semi-bold))))
   `(font-lock-function-name-face ((t (:foreground ,fg))))
   `(font-lock-keyword-face ((t (:foreground ,fg))))
   `(font-lock-preprocessor-face ((t (:foreground ,fg))))
   `(font-lock-reference-face ((t (:foreground ,fg))))
   `(font-lock-string-face ((t (:foreground ,fg))))
   `(font-lock-type-face ((t (:foreground ,fg))))
   `(font-lock-variable-name-face ((t (:foreground ,fg :underline nil))))
   `(font-lock-warning-face ((t (:foreground ,fg :weight bold))))
   `(fringe ((t (:background ,bg :foreground ,bg))))
   `(gnus-header-content ((t (:foreground ,fg))))
   `(gnus-header-from ((t (:foreground ,fg))))
   `(gnus-header-name ((t (:foreground ,fg))))
   `(gnus-header-subject ((t (:foreground ,fg))))
   `(help-key-binding ((t :background ,bg-dark :foreground ,blue)))
   `(highlight ((t :background ,bg-dark)))
   `(ido-first-match ((t (:foreground ,fg))))
   `(ido-only-match ((t (:foreground ,fg))))
   `(ido-subdir ((t (:foreground ,fg))))
   `(isearch ((t (:background "#eeeee8" :foreground ,fg))))
   `(link ((t (:foreground ,fg))))
   `(minibuffer-prompt ((t (:foreground ,fg :weight bold))))
   ;; `(mode-line ((t (:background ,bg-dark :foreground ,fg))))
   `(mode-line-active ((t (:background ,bg-dark :foreground ,fg :bold t))))
   `(mode-line-buffer ((t (:foreground ,fg :weight bold))))
   `(mode-line-inactive ((t (:background ,bg-light :foreground ,fg))))
   `(mode-line-minor-mode ((t (:weight ultra-dark))))
   `(modeline ((t (:background ,bg :foreground ,fg))))
   `(region ((t (:background "#999998" :foreground ,fg))))
   `(slime-repl-inputed-output-face ((t (:foreground ,fg))))
   `(whitespace-line ((t (:background ,blue :foreground ,fg))))

   ;; org
   `(org-agenda-clocking ((t (:foreground ,fg :background ,bg-dark :bold t))))
   ;; `(org-agenda-column-dateline ((t (:foreground ,white-0 :background ,black-3 :underline t))))
   `(org-agenda-current-time ((t (:foreground ,fg))))
   `(org-agenda-date ((t (:foreground ,fg))))
   `(org-agenda-date-today ((t (:foreground ,fg :weight bold :underline t))))
   `(org-agenda-date-weekend ((t (:foreground ,fg))))
   ;; `(org-agenda-dimmed-todo-face ((t (:foreground ,red :background ,green))))
   `(org-agenda-done ((t (:foreground ,green))))
   `(org-agenda-structure ((t (:foreground ,fg :weight bold))))
   ;; `(org-agenda-todo ((t (:foreground ,fg :background ,bg))))
   `(org-archived ((t (:slant italic))))
   `(org-block ((t (:background ,fg-dark :foreground ,fg))))
   `(org-block-begin-line ((t (:background ,fg-dark :foreground ,fg))))
   `(org-block-end-line ((t (:background ,fg-dark :foreground ,fg))))
   `(org-checkbox ((t (:background unspecified :foreground ,fg :weight bold))))
   ;; `(org-code ((t (:foreground ,blue-1 :background ,black-4))))
   ;; `(org-column ((t (:background ,black-4 :foreground ,black-3))))
   ;; `(org-column-title ((t (:background ,blue-0 :foreground ,black-5 :underline t :weight bold))))
   `(org-date ((t (:foreground ,fg))))
   `(org-date-selected ((t (:foreground ,fg))))
   ;; `(org-deadline-announce ((t (:foreground ,red-3))))
   ;; `(org-document-info ((t (:foreground ,blue-1 :background ,black-5 :weight bold))))
   ;; `(org-document-info-keyword ((t (:foreground ,orange-1 :background ,black-2-5))))
   ;; `(org-document-title ((t (:foreground ,blue-0 :background ,black-5 :weight bold))))
   `(org-done ((t (:foreground ,fg))))
   ;; '(org-drawer ((t (:height 0.8))))
   `(org-ellipsis ((t (:foreground ,bg :background ,fg :height 0.8))))
   ;; `(org-footnote ((t (:foreground ,magenta-3))))
   ;; `(org-formula ((t (:foreground ,purple-2))))
   ;; `(org-headline-done ((t (:foreground ,green-2))))
   `(org-hide ((t (:foreground ,bg))))
   `(org-level-1 ((t (:foreground ,fg :weight semi-bold :height 2.00))))
   `(org-level-2 ((t (:foreground ,fg :weight semi-bold :height 1.50))))
   `(org-level-3 ((t (:foreground ,fg :weight semi-bold :height 1.17))))
   `(org-level-4 ((t (:foreground ,fg :weight semi-bold :height 1.00))))
   `(org-level-5 ((t (:foreground ,fg :weight semi-bold :height 0.83))))
   `(org-level-6 ((t (:foreground ,fg :weight semi-bold :height 0.67))))
   `(org-level-7 ((t (:foreground ,fg :weight semi-bold :height 0.52))))
   `(org-level-8 ((t (:foreground ,fg :weight semi-bold :height 0.43))))
   `(org-link ((t (:foreground ,fg :underline t))))
   `(org-headline-done ((t (:foreground ,fg))))
   `(org-headline-todo ((t (:foreground ,fg))))
   ;; `(org-mode-line-clock ((t (:foreground ,blue-3 :background ,blue-0 :bold t))))
   ;; `(org-mode-line-clock-overrun ((t (:foreground ,white-0 :background ,red-1 :bold t))))
   ;; `(org-priority ((t (:foreground ,red-1 :background unspecified))))
   `(org-quote ((t (:foreground ,fg :slant italic :inherit org-block))))
   `(org-scheduled ((t (:foreground ,fg))))
   `(org-scheduled-previously ((t (:foreground ,fg))))
   `(org-scheduled-today ((t (:foreground ,red))))
   `(org-sexp-date ((t (:foreground ,fg))))
   `(org-special-keyword ((t (:foreground ,fg))))
   ;; '(org-superstar-item ((t (:height 1.1))))
   `(org-table ((t (:foreground ,blue))))
   ;; `(org-tag ((t (:background ,black-3 :foreground ,white-1 :bold t :weight bold))))
   `(org-time-grid ((t (:foreground ,fg))))
   `(org-todo ((t (:foreground ,fg))))
   ;; `(org-upcoming-deadline ((t (:foreground ,red-1))))
   `(org-verbatim ((t (:foreground ,fg :weight semi-bold))))
   `(org-verse ((t (:inherit org-block :slant italic))))
   ;; `(org-warning ((t (:bold t :foreground ,white-0 :background ,red-3))))
   ;; `(org-modern-done ((t (:foreground ,bg :background ,green :bold t))))
   ;; `(org-modern-label ((t (:foreground ,fg :background ,bg))))
   ;; `(org-modern-tag ((t (:foreground ,fg :background ,bg))))
   ;; `(org-modern-todo ((t (:foreground ,bg :background ,red :bold t))))

   ;; outline
   `(outline-1 ((t (:foreground ,fg :weight semi-bold))))
   `(outline-2 ((t (:foreground ,fg :weight semi-bold))))
   `(outline-3 ((t (:foreground ,fg :weight semi-bold))))
   `(outline-4 ((t (:foreground ,fg :weight semi-bold))))
   `(outline-5 ((t (:foreground ,fg :weight semi-bold))))
   `(outline-6 ((t (:foreground ,fg :weight semi-bold))))
   `(outline-7 ((t (:foreground ,fg :weight semi-bold))))
   `(outline-8 ((t (:foreground ,fg :weight semi-bold))))

   ;; powerline
   `(powerline-active1 ((t (:background "grey22" :foreground ,bg :inherit mode-line))))
   `(powerline-active2 ((t (:background "grey40" :foreground ,bg :inherit mode-line))))

   ;; magit
   `(magit-header ((t (:weight semi-bold))))
   `(magit-item-mark ((t (:background ,yellow))))
   `(magit-item-highlight ((t (:weight bold))))
   `(magit-section-heading ((t (:weight semi-bold :height 1.2))))
   `(magit-section-highlight ((t (:weight semi-bold))))
   `(magit-diff-context-highlight ((t (:foreground ,fg))))
   `(magit-branch-local ((t (:weight bold))))
   `(magit-branch-remote ((t (:weight bold))))

   ;; diff
   `(diff-added ((t (:background "#e9ffe9"))))
   `(diff-removed ((t (:background "#ffecec"))))
   `(diff-refine-added ((t (:background "#a4f4a3"))))
   `(diff-refine-removed ((t (:background "#f9cbca"))))
   `(magit-diff-added-highlight ((t (:weight demibold :background "#e9ffe9"))))
   `(magit-diff-added ((t (:background "#e9ffe9"))))
   `(magit-diff-removed-highlight ((t (:weight demibold :background "#ffecec"))))
   `(magit-diff-removed ((t (:background "#ffecec"))))

   ;; git-timemachine
   `(git-timemachine-minibuffer-author-face ((t (:inherit default))))
   `(git-timemachine-minibuffer-detail-face ((t (:weight bold))))

   ;; compile
   `(compilation-error ((t (:inherit error))))

   ;; flycheck
   `(flycheck-error ((t (:inherit error))))
   `(flycheck-warning ((t (:inherit warning))))

   ;; dired
   `(dired-directory ((t (:weight bold))))
   `(dired-subtree-depth-1-face ((t (:inherit default))))
   `(dired-subtree-depth-2-face ((t (:inherit default))))
   `(dired-subtree-depth-3-face ((t (:inherit default))))
   `(dired-subtree-depth-4-face ((t (:inherit default))))

   ;; helm
   `(helm-source-header ((t (:foreground ,fg :background "grey90" :weight bold))))
   `(helm-header ((t (:foreground ,fg))))
   `(helm-selection-line ((t (:inherit region :weight bold))))
   `(helm-selection ((t (:background ,yellow))))
   `(helm-ff-directory ((t (:foreground ,fg :weight bold))))
   `(helm-ff-dotted-directory ((t (:foreground ,fg :weight bold))))
   `(helm-ff-symlink ((t (:foreground ,fg :slant italic))))
   `(helm-ff-executable ((t (:foreground ,fg))))

   ;; iedit
   `(iedit-occurrence ((t (:background ,green :foreground ,fg))))

   ;; company
   `(company-echo-common ((t (:foreground ,fg))))
   `(company-tooltip-selection ((t (:background ,yellow))))

   ;; parens - parenface
   '(parenface-paren-face ((t (:foreground "gray70"))))
   '(parenface-curly-face ((t (:foreground "gray70"))))
   '(parenface-bracket-face ((t (:foreground "gray70"))))

   ;; parens - paren-face
   '(parenthesis ((t (:foreground "gray70"))))

   ;; parens - other
   `(sp-show-pair-match-face ((t (:foreground "black" :weight bold))))
   `(sp-show-pair-mismatch-face ((t (:background "red" :foreground "black" :weight bold))))
   `(show-paren-match ((t (:foreground "black" :weight bold))))
   `(show-paren-mismatch ((t (:background "red" :foreground "black" :weight bold))))

   ;; js2
   `(js2-function-param ((t (:foreground ,fg))))
   `(js2-external-variable ((t (:foreground ,fg))))

   ;; perl
   `(cperl-hash-face ((t (:foreground ,fg))))
   `(cperl-array-face ((t (:foreground ,fg))))
   `(cperl-nonoverridable-face ((t (:foreground ,fg))))

   ;; rpm-spec-mode
   `(rpm-spec-tag-face ((t (:inherit default))))
   `(rpm-spec-package-face ((t (:inherit default))))
   `(rpm-spec-macro-face ((t (:inherit default))))
   `(rpm-spec-doc-face ((t (:inherit default))))
   `(rpm-spec-var-face ((t (:inherit default))))
   `(rpm-spec-ghost-face ((t (:inherit default))))
   `(rpm-spec-section-face ((t (:inherit default :weight bold))))

   ;; linum / nlinum-relative
   `(nlinum-relative-current-face ((t (:inherit normal :weight bold))))
   `(linum ((t (:inherit normal :weight bold))))

   ;; web-mode
   `(web-mode-current-element-highlight-face ((t (:inherit normal :weight bold :foreground ,fg))))

   ;; mmm-mode
   `(mmm-default-submode-face ((t (:inherit normal :background "#ffffef"))))

   ;; misc
   `(idle-highlight ((t (:background ,yellow))))
   `(yas-field-highlight-face ((t (:background "#eeeee8" :foreground ,fg))))
   `(eshell-prompt ((t (:foreground ,fg :weight bold))))
   `(cider-result-overlay-face ((t (:weight bold))))

   ;; evil-quickscope
   `(evil-quickscope-first-face ((t (:foreground ,fg :background "#eeeee8"))))
   `(evil-quickscope-second-face ((t (:foreground ,fg :background ,green))))

   ;; evil-snipe
   `(evil-snipe-first-match-face ((t (:foreground ,fg :background "#eeeee8"))))
   `(evil-snipe-matches-face ((t (:foreground ,fg :background ,green))))

   ;; evil
   `(evil-ex-lazy-highlight ((t (:background ,blue))))
   `(evil-ex-substitute-matches ((t (:background ,blue))))
   `(evil-ex-substitute-replacement ((t (:background ,yellow :underline nil :foreground ,fg))))

   ;; completions
   `(completions-common-part ((t (:weight bold :underline t))))

   ;; orderless
   `(orderless-match-face-0 ((t (:weight bold :underline t))))
   `(orderless-match-face-1 ((t (:weight bold :underline t))))
   `(orderless-match-face-2 ((t (:weight bold :underline t))))
   `(orderless-match-face-3 ((t (:weight bold :underline t))))))

(provide-theme 'eink)

;;; eink-theme.el ends here
