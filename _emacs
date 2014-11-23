;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; My Emacs Configuration file                                               ;;
;; By :: xitkov                                                              ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Barebones Emacs
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

;; Toggle full screen function
(defun toggle-fullscreen ()
  "Toggle full screen on X11"
  (interactive)
  (when (eq window-system 'x)
    (set-frame-parameter
     nil 'fullscreen
     (when (not (frame-parameter nil 'fullscreen)) 'fullboth))))

(global-set-key [f11] 'toggle-fullscreen)
(setq org-src-fontify-natively t)
(add-hook 'sql-mode-hook
          (lambda ()
            (sql-highlight-mysql-keywords)))

;; Enable color themes
;(add-to-list 'load-path "~/.emacs.d/pkg/color-theme-6.6.0/color-theme.el")
;(require 'color-theme)
;(eval-after-load "color-theme"
;  '(progn
;     (color-theme-initialize)
;     (color-theme-hober)))

;; Set background
;(set-background-color "dim gray")

;; Enabling Theme
(load-theme 'tango-dark)
(set-face-attribute 'default nil :font "Source Code Pro-10")

;; Package repository
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))

;; Org mode enhancements
(setq org-startup-indented t)
(setq org-hide-leading-stars t)
(setq org-odd-level-only nil)

;; Make indentation commands use space only (never tab character)
(setq-default indent-tabs-mode nil)    ; use only spaces and no tabs

;; Set default tab char's display width to 4 spaces
(setq default-tab-width 4)

;; Set current buffer's tab char's display width to 4 spaces
(setq tab-width 4)

;; Sisplay column number in the mode line**
(setq column-number-mode t)

;; Store all backup and autosave files in the tmp dir
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

;; Disable auto-save and auto-backup
;(setq auto-save-default nil)
;(setq make-backup-files nil)

;; Backup files goto this directory
(setq backup-directory-alist '(("" . "~/.emacs.d/emacs-backup")))

;; Set desktop mode
(desktop-save-mode 1)

;; Changing indentation style to bsd aka Allman style
(setq c-default-style "bsd"
      c-basic-offset 4)

;; END of Config
