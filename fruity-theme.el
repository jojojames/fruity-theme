;;; fruity-theme.el --- A port of vim's fruity theme. -*- lexical-binding: t -*-

;; Copyright (C) 2017 James Nguyen

;; Author: James Nguyen <james@jojojames.com>
;; Maintainer: James Nguyen <james@jojojames.com>
;; URL: https://github.com/jojojames/fruity-theme
;; Version: 0.0.1
;; Package-Requires: ((emacs "25.1"))
;; Keywords: emacs, tools, theme
;; HomePage: https://github.com/jojojames/fruity-theme

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

;; A port of the Fruity theme for Vim to Emacs.

;;; Credits:
;; https://github.com/mitsuhiko/fruity-vim-colorscheme

;;; Code:

(deftheme fruity "Port of fruity theme")

(let ((--normal-fg-- "#ffffff")
      (--normal-bg-- "#001217")
      (--nontext-fg-- "#444444")
      (--nontext-bg-- "#000000")
      (--cursor-- "#aaaaaa")
      (--lcursor-- "#aaaaaa")
      (--visual-- "#004254")
      (--cursor-line-- "#011C24")

      ;; hi ColorColumn  guibg=#011c25
      ;; hi LineNr       guifg=#aaaaaa   guibg=#00252e
      ;; hi CursorLineNr guifg=#ffffff   guibg=#00252e

      ;; Wild menu active item
      ;; hi WildMenu     guibg=#324A61   guifg=#D3E3F2   gui=bold
      ;; hi Title        guifg=#ffffff                   gui=bold

      ;; Syntax Elements
      (--string-- "#0086d2")
      (--constant-- "#007DC4")
      (--number-- "#0086f7")
      (--statement-- "#038EC1")
      (--function-- "#1BB3FF")
      (--preproc-- "#ff0007")
      (--variable-- "#e90819")
      (--reference-- "#e90819")

      (--warning-fg-- "#e50808")
      (--warning-bg-- "#520000")

      (--comment-fg-- "#00d2ff")
      (--comment-bg-- "#0a1323")
      (--type-- "#00A8A0")
      (--error-fg-- "#ffffff")
      (--error-bg-- "#ab0000")
      (--identifier-- "#79E33B")
      (--label-- "#BD55E6")
      (--operator-- "#8ECFDD")
      (--negation-- "#fd8900")

      (--subtle-1-- "#1BB3FF")
      (--subtle-2-- "#0086d2")
      (--subtle-3-- "#0a1323"))
  (custom-theme-set-faces
   'fruity

   `(bold ((t (:bold t))))
   `(button ((t (:foreground ,--subtle-1-- :underline t))))
   `(default ((t (:background ,--normal-bg-- :foreground ,--normal-fg--))))
   ;; `(header-line ((t (:background, --mode-line-bg-- :foreground, --normal--)))) ;; info header

   ;; (shadow :foreground base4)
   ;; (link :foreground orange :underline t)
   ;; (link-visited :foreground yellow)

   `(cursor ((t (:background, "#aaaaaa"))))

   ;; `(highlight ((t (:background, --current-line--))))
   ;; `(highlight-face ((t (:background, --current-line--))))

   `(hl-line ((t (:background ,--cursor-line-- :inverse-video nil))))

   ;; `(info-xref ((t (:foreground, --keywords-- :underline t))))
   `(region ((t (:background, --visual--))))
   ;; `(underline ((nil (:underline t))))

   ;; (secondary-selection :foreground unspecified :background violet)
   ;; (line-number-current-line :inherit highlight)
   `(fringe ((t (:foreground ,--normal-fg-- :background ,--normal-bg--))))
   `(vertical-border ((t (:foreground ,--subtle-2--))))

   `(tooltip ((t (:foreground "#D3E3F2" :background "#324A61"))))
   `(trailing-whitespace ((t (:underline (:style wave :color "white")))))

   ;; font-lock
   `(escape-glyph ((t (:foreground ,--error-fg-- :background ,--error-bg--))))
   `(font-lock-builtin-face ((t (:foreground ,--operator--))))
   `(font-lock-comment-delimiter-face
     ((t (:foreground ,--comment-fg-- :background ,--comment-bg-- :italic t))))
   `(font-lock-comment-face
     ((t (:foreground ,--comment-fg-- :italic t))))
   `(font-lock-constant-face ((t (:foreground ,--constant--))))
   `(font-lock-doc-face ((t (:foreground ,--statement--))))
   `(font-lock-doc-string-face ((t (:foreground ,--string--))))
   `(font-lock-function-name-face ((t (:foreground ,--function--))))
   `(font-lock-keyword-face ((t (:foreground ,--identifier-- :weight bold))))
   `(font-lock-negation-char-face ((t (:foreground ,--negation--))))
   `(font-lock-number-face ((t (:foreground ,--number-- :weight bold))))
   `(font-lock-preprocessor-face ((t (:foreground ,--preproc-- :weight bold))))
   `(font-lock-reference-face ((t (:foreground ,--reference--))))
   `(font-lock-regexp-grouping-backslash ((t (:foreground ,--label--))))
   `(font-lock-regexp-grouping-construct ((t (:foreground ,--label--))))
   `(font-lock-string-face ((t (:foreground ,--string--))))
   `(font-lock-type-face ((t (:foreground ,--type--))))
   `(font-lock-variable-name-face ((t (:foreground ,--variable--))))
   `(font-lock-warning-face
     ((t (:foreground ,--warning-fg-- :background ,--warning-bg-- :weight bold))))

   `(error
     ((t (:foreground "#EB1515" :background "#3B0000" :weight bold))))
   `(success ((t (:foreground "green"))))
   `(warning ((t (:foreground "#ED9A09" :background "#422A00"))))

   ;; search and highlighting
   `(isearch ((t (:foreground "#161C00" :background "#BEED00" :weight bold))))
   `(match ((t (:foreground "#004357" :background "#B8EFFF" :weight bold))))
   `(isearch-fail
     ((t (:foreground ,--error-fg-- :background ,--error-bg-- :weight bold))))
   ;; (lazy-highlight :foreground base2 :background yellow)

   ;; mode and header lines
   `(minibuffer-prompt ((t (:foreground ,--comment-fg--))))
   ;; (header-line :foreground base5 :background base2)
   ;; (menu :background base3 :foreground base6)

   ;; `(mode-line
   ;;   ((t (
   ;;        :foreground "#00243B"
   ;;        :background "#C1CFDE"
   ;;        :box (:color "#C1CFDE" :line-width 5)))))
   ;; `(mode-line-inactive
   ;;   ((t (
   ;;        :foreground "#506070"
   ;;        :background "#DFE9F2"
   ;;        :box (:color "#DFE9F2" :line-width 5)))))

   `(mode-line
     ((t (
          :foreground ,--subtle-1--
          :background ,--subtle-3--
          :box (:color ,--subtle-3-- :line-width 5)))))
   `(mode-line-inactive
     ((t (
          :foreground ,--subtle-2--
          :background ,--subtle-3--
          :box (:color ,--subtle-3-- :line-width 5)))))

   ;; ;; compilation
   ;; (compilation-mode-line-fail :foreground unspecified :inherit compilation-error)
   ;; (compilation-mode-line-exit :foreground unspecified :inherit compilation-info)

   ;; ;; diff
   ;; (diff-added :foreground green)
   ;; (diff-changed :foreground cyan)
   ;; (diff-header :foreground yellow)
   ;; (diff-file-header :weight bold)
   ;; (diff-refine-added :background base3)
   ;; (diff-refine-change :background base3)
   ;; (diff-refine-removed :background base3)
   ;; (diff-removed :foreground red)

   ;; `show-paren-mode'
   `(show-paren-match
     ((t (:foreground "#CEF2D0" :background "#105715" :weight bold))))
   `(show-paren-mismatch
     ((t (:foreground ,--error-fg-- :background ,--error-bg--))))

   ;; ;; term
   `(term-color-black ((t (:foreground "black" :background "black"))))
   `(term-color-red ((t (:foreground "red" :background "red"))))
   `(term-color-green ((t (:foreground "green" :background "green"))))
   `(term-color-yellow ((t (:foreground "yellow" :background "yellow"))))
   `(term-color-blue ((t (:foreground "blue" :background "blue"))))
   `(term-color-magenta ((t (:foreground "magenta" :background "magenta"))))
   `(term-color-cyan ((t (:foreground "cyan" :background "cyan"))))
   `(term-color-white ((t (:foreground "white" :background "white"))))
   `(term ((t (:foreground ,--normal-fg-- :background ,--normal-bg--))))

   ;; `whitespace-mode'
   ;; (whitespace-empty :foreground base7 :background cyan)
   ;; (whitespace-hspace :foreground base7 :background magenta)
   ;; (whitespace-indentation :background yellow)
   `(whitespace-line ((t (:underline (:style wave :color "white")))))
   ;; (whitespace-newline :foreground base3)
   ;; `(whitespace-space ((t (:underline (:style wave :color "white")))))
   ;; (whitespace-space-after-tab :foreground base7 :background orange)
   ;; (whitespace-space-before-tab :foreground base7 :background orange)
   `(whitespace-tab ((t (:underline (:style wave :color "white")))))
   ;; (whitespace-trailing :foreground base7 :background red)
   `(whitespace-trailing ((t (:underline (:style wave :color "white")))))

   ;; ;; company
   `(company-echo-common ((t (:foreground ,--string--))))
   `(company-preview ((t :inherit company-tooltip-selection)) )
   `(company-preview-common ((t (:inherit company-preview))))
   `(company-preview-search ((t (:inherit company-preview))))
   `(company-scrollbar-bg ((t (:background ,--subtle-1--))))
   `(company-scrollbar-fg ((t (:background ,--subtle-2--))))
   `(company-tooltip ((t :foreground "#ffffff" :background "#0D4854")))
   `(company-tooltip-annotation ((t (:inherit company-tooltip :foreground "red"))))
   `(company-tooltip-common ((t (:background ,--subtle-2-- :weight bold))))
   ;; (company-tooltip-common-selection :foreground base7 :background base4 :weight bold)
   ;; (company-tooltip-mouse :foreground base7 :background base4)
   `(company-tooltip-selection ((t (:foreground "#ffffff" :background "#146E80"))))

   ;; `flycheck'
   `(flycheck-error  ((t (
                          :foreground "#EB1515"
                          :background "#3B0000"
                          :underline (:style wave :color "#EB1515")
                          ))))
   `(flycheck-warning ((t (
                           :foreground "#ED9A09"
                           :background "#422A00"
                           :underline (:style wave :color "#ED9A09")
                           ))))
   `(flycheck-info ((t (:underline (:style wave :color "green")))))

   ;; (defface flycheck-error-list-error
   ;;   '((t :inherit error))
   ;;   "Flycheck face for error messages in the error list."
   ;;   :package-version '(flycheck . "0.16")
   ;;   :group 'flycheck-faces)

   ;; (defface flycheck-error-list-warning
   ;;   '((t :inherit warning))
   ;;   "Flycheck face for warning messages in the error list."
   ;;   :package-version '(flycheck . "0.16")
   ;;   :group 'flycheck-faces)

   ;; (defface flycheck-error-list-info
   ;;   '((t :inherit success))
   ;;   "Flycheck face for info messages in the error list."
   ;;   :package-version '(flycheck . "0.16")
   ;;   :group 'flycheck-faces)

   ;; ;; The base faces for the following two faces are inspired by Compilation Mode
   ;; (defface flycheck-error-list-line-number
   ;;   '((t :inherit font-lock-constant-face))
   ;;   "Face for line numbers in the error list."
   ;;   :group 'flycheck-faces
   ;;   :package-version '(flycheck . "0.16"))

   ;; (defface flycheck-error-list-column-number
   ;;   '((t :inherit font-lock-constant-face))
   ;;   "Face for line numbers in the error list."
   ;;   :group 'flycheck-faces
   ;;   :package-version '(flycheck . "0.16"))

   ;; (defface flycheck-error-list-id
   ;;   '((t :inherit font-lock-type-face))
   ;;   "Face for the error ID in the error list."
   ;;   :group 'flycheck-faces
   ;;   :package-version '(flycheck . "0.22"))

   ;; (defface flycheck-error-list-id-with-explainer
   ;;   '((t :inherit flycheck-error-list-id
   ;;        :box (:style released-button)))
   ;;   "Face for the error ID in the error list, for errors that have an explainer."
   ;;   :group 'flycheck-faces
   ;;   :package-version '(flycheck . "30"))

   ;; (defface flycheck-error-list-checker-name
   ;;   '((t :inherit font-lock-function-name-face))
   ;;   "Face for the syntax checker name in the error list."
   ;;   :group 'flycheck-faces
   ;;   :package-version '(flycheck . "0.21"))

   `(flycheck-error-list-highlight
     ((t (
          :background ,--normal-bg--
          :underline (:style wave :color ,--error-bg--)))))

   ;; `rainbow-delimiters'
   `(rainbow-delimiters-depth-1-face ((t (:foreground "red" :weight bold))))
   `(rainbow-delimiters-depth-2-face ((t (:foreground "green" :weight bold))))
   `(rainbow-delimiters-depth-3-face ((t (:foreground "cyan" :weight bold))))
   `(rainbow-delimiters-depth-4-face ((t (:foreground "yellow" :weight bold))))
   `(rainbow-delimiters-depth-5-face ((t (:foreground "magenta" :weight bold))))
   `(rainbow-delimiters-depth-6-face ((t (:foreground "teal" :weight bold))))
   `(rainbow-delimiters-depth-7-face ((t (:foreground "orange" :weight bold))))
   `(rainbow-delimiters-depth-8-face ((t (:foreground "pink" :weight bold))))
   `(rainbow-delimiters-depth-9-face ((t (:foreground "purple" :weight bold))))
   `(rainbow-delimiters-unmatched-face ((t (:foreground "white" :weight bold))))
   ))

(provide-theme 'fruity)
;;; fruity-theme.el ends here
