;;; blizzard-theme.el --- Blizzard Lore Color Schemes

;; Copyright (C) 2016-2017 Blizzard Entertainment

;; Author: Christopher Giroir <cgiroir@blizzard.com>
;; Created: 25 Apr 2016
;; Keywords: themes

;;; Commentary:

;;; Code:
(deftheme blizzard
  "Blizzard Lore Color Scheme. Created 2016-04-25.")

(let ((blizzard-black "#151515")
       (blizzard-brblack "#2a2a2a")
       (blizzard-red "#c21e1e")
       (blizzard-brred "#ff2e2e")
       (blizzard-green "#519b2e")
       (blizzard-brgreen "#8cda38")
       (blizzard-yellow "#ea7b00")
       (blizzard-bryellow "#ffc70e")
       (blizzard-blue "#007dbf")
       (blizzard-brblue "#00aeef")
       (blizzard-magenta "#862ea4")
       (blizzard-brmagenta "#ee4bb5")
       (blizzard-cyan "#0fb2a5")
       (blizzard-brcyan "#4bf3e6")
       (blizzard-white "#686868")
       (blizzard-brwhite "#f6f6f6"))
    (defface blizzard-brblack `((t :foreground ,blizzard-brblack)) "Blizzard bright black face" :group 'blizzard)
    (defface blizzard-red `((t :foreground ,blizzard-red)) "Blizzard red face" :group 'blizzard)
    (defface blizzard-brred `((t :foreground ,blizzard-brred)) "Blizzard bright red face" :group 'blizzard)
    (defface blizzard-green `((t :foreground ,blizzard-green)) "Blizzard green face" :group 'blizzard)
    (defface blizzard-brgreen `((t :foreground ,blizzard-brgreen)) "Blizzard bright green face" :group 'blizzard)
    (defface blizzard-yellow `((t :foreground ,blizzard-yellow)) "Blizzard yellow face" :group 'blizzard)
    (defface blizzard-bryellow `((t :foreground ,blizzard-bryellow)) "Blizzard bright yellow face" :group 'blizzard)
    (defface blizzard-blue `((t :foreground ,blizzard-blue)) "Blizzard blue face" :group 'blizzard)
    (defface blizzard-brblue `((t :foreground ,blizzard-brblue)) "Blizzard bright blue face" :group 'blizzard)
    (defface blizzard-magenta `((t :foreground ,blizzard-magenta)) "Blizzard magenta face" :group 'blizzard)
    (defface blizzard-brmagenta `((t :foreground ,blizzard-brmagenta)) "Blizzard bright magenta face" :group 'blizzard)
    (defface blizzard-cyan `((t :foreground ,blizzard-cyan)) "Blizzard cyan face" :group 'blizzard)
    (defface blizzard-brcyan `((t :foreground ,blizzard-brcyan)) "Blizzard bright cyan face" :group 'blizzard)
    (defface blizzard-white `((t :foreground ,blizzard-white)) "Blizzard white face" :group 'blizzard)
    (defface blizzard-brwhite `((t :foreground ,blizzard-brwhite)) "Blizzard bright white face" :group 'blizzard)
  (custom-theme-set-faces
    'blizzard
    `(default ((t (:inherit nil :stipple nil :background ,blizzard-black :foreground ,blizzard-brwhite :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 160 :width normal :foundry "nil" :family "Monaco"))))
    `(cursor ((t (:background ,blizzard-brblue))))
    `(fixed-pitch ((t (:family "Monaco"))))
    `(variable-pitch ((t (:family "Helvetica"))))
    `(escape-glyph ((t (:foreground ,blizzard-brcyan))))
    `(minibuffer-prompt ((t (:background ,blizzard-brblack :foreground ,blizzard-brwhite))))
    `(highlight ((t (:background ,blizzard-brblack))))
    `(region ((t (:background ,blizzard-brblack))))
    `(shadow ((t (:foreground ,blizzard-white))))
    `(secondary-selection ((t (:background "#484848"))))
    `(trailing-whitespace ((t (:background ,blizzard-red))))
    `(font-lock-builtin-face ((t (:foreground ,blizzard-yellow))))
    `(font-lock-comment-delimiter-face ((default (:inherit (font-lock-comment-face)))))
    `(font-lock-comment-face ((t (:foreground ,blizzard-white :slant italic))))
    `(font-lock-constant-face ((t (:foreground ,blizzard-bryellow))))
    `(font-lock-doc-face ((t (:inherit (font-lock-string-face)))))
    `(font-lock-function-name-face ((t (:foreground ,blizzard-brmagenta))))
    `(font-lock-keyword-face ((t (:foreground ,blizzard-yellow))))
    `(font-lock-negation-char-face ((t (:foreground ,blizzard-red))))
    `(font-lock-preprocessor-face ((t (:foreground ,blizzard-white))))
    `(font-lock-regexp-grouping-backslash ((t (:foreground ,blizzard-magenta))))
    `(font-lock-regexp-grouping-construct ((t (:foreground ,blizzard-brmagenta))))
    `(font-lock-string-face ((t (:foreground ,blizzard-bryellow))))
    `(font-lock-type-face ((t (:foreground ,blizzard-blue))))
    `(font-lock-variable-name-face ((t (:foreground ,blizzard-brblue))))
    `(font-lock-warning-face ((t (:foreground ,blizzard-brred))))
    `(button ((t (:underline (:color foreground-color :style line)))))
    `(link ((t (:weight bold :underline t :foreground ,blizzard-blue))))
    `(link-visited ((t (:foreground ,blizzard-magenta :underline t :weight normal))))
    `(fringe ((t (:background ,blizzard-brblack))))
    `(header-line ((t (:foreground ,blizzard-bryellow :box (:line-width -1 :style released-button)))))
    `(tooltip ((((class color)) (:inherit (variable-pitch) :foreground "black" :background "lightyellow")) (t (:inherit (variable-pitch)))))
    `(mode-line ((t (:inverse-video nil :foreground "gray60" :background "black"))))
    `(mode-line-buffer-id ((t (:inherit (sml/filename)))))
    `(mode-line-emphasis ((t (:weight bold))))
    `(mode-line-highlight ((((class color) (min-colors 88)) (:box (:line-width 2 :color "grey40" :style released-button))) (t (:inherit (highlight)))))
    `(mode-line-inactive ((t (:inverse-video nil :foreground "gray60" :background "#404045"))))
    `(isearch ((t (:underline ,blizzard-yellow))))
    `(isearch-fail ((t (:underline ,blizzard-brred))))
    `(lazy-highlight ((t (:underline ,blizzard-bryellow))))
    `(match ((t (:underline ,blizzard-cyan))))
    `(next-error ((t (:inherit (region)))))
    `(query-replace ((t (:background ,blizzard-brblack))))
    `(powerline-evil-base-face ((t (:foreground ,blizzard-brwhite :inherit mode-line))))
    `(powerline-evil-normal-face ((t (:background ,blizzard-green :inherit powerline-evil-base-face))))
    `(powerline-evil-insert-face ((t (:background ,blizzard-blue :inherit powerline-evil-base-face))))
    `(powerline-evil-visual-face ((t (:background ,blizzard-yellow :inherit powerline-evil-base-face))))
    `(powerline-evil-operator-face ((t (:background ,blizzard-cyan :inherit powerline-evil-base-face))))
    `(powerline-evil-replace-face ((t (:background ,blizzard-red :inherit powerline-evil-base-face))))
    `(powerline-evil-motion-face ((t (:background ,blizzard-magenta :inherit powerline-evil-base-face))))
    `(powerline-evil-emacs-face ((t (:background ,blizzard-brmagenta :inherit powerline-evil-base-face))))
    `(helm-selection ((t (:background ,blizzard-brblack))))
    `(helm-match ((t (:foreground ,blizzard-yellow))))
    `(helm-source-header ((t (:background ,blizzard-blue :weight bold))))))

;;;###autoload
(and load-file-name
  (boundp 'custom-theme-load-path)
  (add-to-list 'custom-theme-load-path
    (file-name-as-directory
      (file-name-directory load-file-name))))

(provide-theme 'blizzard)

;;; blizzard-theme.el ends here
