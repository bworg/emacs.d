;; ********************************************************************
;; File:	.emacs for emacs23
;; Author:   	gistian
;;
;; Time-stamp: <Last changed 2011-06-15>

;; This file is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 2, or (at your option)
;; any later version.
;; *********************************************************************
;; list of .el: 
;;  *********************************************************************
;;  /.emacs.d
;;      /emacs.tmp
;;      /auto-save-list
;;      /plugins:Vendors elisp file *.el, Alias:vendors. 
;;      /my.elisp:my code of elisp
;;      /my.emacsfile:example of .emacs files
;; 01 
;; ############
;; 0 Keyboard
;; ############
;; 0.1 Function keys
(global-set-key [f1] 'manual-entry)
(global-set-key [f2] 'info)
(global-set-key [f3] 'repeat-complex-command)
(global-set-key [f4] 'advertised-undo)
(global-set-key [f5] 'eval-current-buffer)
(global-set-key [f6] 'buffer-menu)
(global-set-key [f7] 'next-error)
(global-set-key [f8] 'find-file)
(global-set-key [f9] 'save-buffer)
(global-set-key [f10] 'eval-current-buffer)

(global-set-key [f11] 'compile)
(global-set-key [f12] 'grep)
(global-set-key [C-f1] 'compile)
(global-set-key [C-f2] 'grep)
(global-set-key [C-f3] 'next-error)
(global-set-key [C-f4] 'previous-error)
(global-set-key [C-f5] 'display-faces)
(global-set-key [C-f8] 'dired)
(global-set-key [C-f10] 'kill-compilation)
;;0.2 Home and End for moviation
(global-set-key [home] 'beginning-of-line)
(global-set-key [end] 'end-of-line)
(global-set-key [\C-home] 'beginning-of-buffer)
(global-set-key [\C-end] 'end-of-buffer)
(global-set-key (kbd "M-<up>") 'move-line-up)
(global-set-key (kbd "M-<down>") 'move-line-down) 
(global-set-key [\C-tab]     'yic-next-buffer)  ;; Next buffer
(global-set-key [(control shift tab)]  'yic-prev-buffer) ;;Precious buffer
;;0.3 Marking Copy and Paste
;(global-set-key "\C-a" 'mark-whole-buffer) ;; C-x h
(global-set-key "\C-z" 'undo) ;; C-x u or C-_ or C-/
(global-set-key "\C-v" 'yank) ;; C-y
(setq x-select-enable-clipboard t) ;; Copy from outside
;;0.4 Mouse,Cursor
(mouse-avoidance-mode 'animate)
(blink-cursor-mode -1)
(transient-mark-mode 1)
(mouse-wheel-mode t)
(setq track-eol t)
(setq mouse-yank-at-point t)
;(setq-default cursor-type 'bar)
;;0.5 Tab
(setq default-tab-width 4)
;;0.6 Others
(global-set-key (kbd "C-c c") 'comment-region)   ;; make C-c C-c and C-c C-u work 
(global-set-key (kbd "C-c u") 'uncomment-region) ;; for comment/uncomment region in all modes 
;;(global-set-key [(control next)] 'scroll-other-window) ;; Make control+pageup/down scroll the other buffer
;;(global-set-key [(control prior)] 'scroll-other-window-down)
;;(global-set-key (kbd "¤") "$")
;;(global-set-key "＼M- " ’set-mark-command)
;;(global-set-key "＼M-＼C-h" ’backward-kill-word)
;;(global-set-key "＼M-＼C-r" ’query-replace)
;;(global-set-key "＼M-r" ’replace-string)
;;(global-set-key "＼M-g" ’goto-line)
;;(global-set-key "＼M-h" ’help-command)
;;设置中文环境
;(set-language-environment 'Chinese-GB)
;; 键盘输入的编码方式
;(set-keyboard-coding-system 'gb2312) 
;(setq file-name-coding-system 'utf-8)
;(setq default-buffer-file-coding-system 'gb2312)

;; ##################
;; 1 Window & Buffer
;; ##################
;;
;; =================
;; 1.1 Colors
;; =================
;; 1.1.1 Window Color and Size
;(require 'color-theme) ;; Need install  color-theme-example.el and color-theme-library.el
;(setq color-theme-is-global t)
;   (color-theme-robin-hood)
;   (color-theme-gnome2) ;for good light
;   (color-theme-kingsajz)
;   (color-theme-classic)
;   (color-theme-dark-blue)
;   (color-theme-snow)
(setq initial-frame-alist '((top . 0) (left . 0) (width . 97) (height . 49)))
(setq default-fill-column 60)
(setq default-frame-alist
    '( (background-color  . "DarkSlateGray") ;;Other suggested colors:black,darkblue,abc88b,DarkSlateGray
      (foreground-color  . "Wheat") ;;Other suggested colors:white,grey85,Wheat
      (mouse-color       . "blue")  ;;Other suggested colors:blue,steelblue
      (cursor-color      . "green") ;;Other suggested colors:green.red,white
))
;; 1.1.2 Hight Color
;;(global-font-lock-mode t) ;;syntx highlight
 ;;(set-face-foreground 'highlight "white") ;;Other suggested colors:white,yellow
 ;;(set-face-background 'highlight "yellow");;Other suggested colors:
 ;;(set-face-foreground 'region "cyan");;Other suggested colors
 ;;(set-face-background 'region "blue");;Other suggested colors
 ;;(set-face-foreground 'secondary-selection "skyblue")
 ;;(set-face-background 'secondary-selection "darkblue")
 ;; 1.1.3 Calendar Color
 ;;(setq calendar-load-hook
 ;;   '(lambda ()
 ;;      (set-face-foreground 'diary-face "skyblue")
 ;;      (set-face-background 'holiday-face "slate blue")
 ;;      (set-face-foreground 'holiday-face "white")
 ;;     )
 ;;)
 ;; =================
 ;; 1.2 Views
 ;; =================
 ;; 1.2.0 Logo
 ;(setq inhibit-startup-message t)
 ;; 1.2.1 Toolbar
 (tool-bar-mode nil)
 ;; 1.2.2 Menubar:
 (menu-bar-mode t)
 ;; 1.2.3 Scrollbar:No need for today's mouse
 (scroll-bar-mode nil)
 ;(set-scroll-bar-mode 'right
 ;; 1.2.4 Status bar
 (global-linum-mode t)
 (column-number-mode t) 
 (display-time-mode 1)
	 (setq display-time-24hr-format t)
	 (setq display-time-day-and-date t)
 ;;  (setq display-time-use-mail-icon t)
 ;;    (setq display-time-interval 10)
 ;; 1.2.5 Font


 ;; ###################
 ;; 2 Globe Mode setup
 ;; ###################
 ;; ========================
 ;; 2.0 Load,Backup,Autosave
 ;; ========================
 ;;2.0.0 Load: mkdir tian.emacsfile,emacs.tmp,tian.elisp
 ;; (add-to-list 'load-path  "~/.emacs.d/plugins")
 ;; (add-to-list 'load-path "~/.emacs.d/tian.emacsfile")
 ;; (add-to-list 'load-path "~/.emacs.d/tian.elisp")
 ;; 2.0.1 Shell
 ;;(autoload 'ansi-color-for-comint-mode-on "ansi-color" nil t)
 ;;(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)
 ;; 2.0.3 folder
 ;; (setq default-directory "~/.emacs.d")
 (setq backup-directory-alist '(("." . "~/.emacs.d/emacs.tmp")))
 ;; 2.0.4 backup
 ;;(setq version-control t) ;; Multitime backup
 ;;(setq kept-old-versions 2)
 ;;(setq kept-new-versions 5)
 ;;(setq delete-old-versions t)
 ;;(setq backup-by-copying t)
 ;;(setq kill-ring-max 200)
 ;;(setq-default make-backup-files nil)

 ;; ==========================
 ;; 2.1 Make pair of {,[ and (
 ;; ==========================
 (setq skeleton-pair t)
 (setq skeleton-pair-on-word t)
 (global-set-key "(" 'skeleton-pair-insert-maybe)
 (global-set-key "[" 'skeleton-pair-insert-maybe)
 (global-set-key "{" 'skeleton-pair-insert-maybe)
 (show-paren-mode t) ;;hight pairs
 ;; ==============================
 ;; 2.2 Copy and Past from outside
 ;; ==============================
(setq x-select-enable-clipboard t)
 ;; ==============================
 ;; 2.3 Autofill
 ;; ==============================
;;  (setq-default auto-fill-function 'do-auto-fill)
;;  (global-set-key [(meta ?/)] 'hippie-expand)
;; (setq hippie-expand-try-functions-list
;; '(try-expand-line
;; try-expand-line-all-buffers
;; try-expand-list
;; try-expand-list-all-buffers
;; try-expand-dabbrev
;; try-expand-dabbrev-visible
;; try-expand-dabbrev-all-buffers
;; try-expand-dabbrev-from-kill
;; try-complete-file-name
;; try-complete-file-name-partially
;; try-complete-lisp-symbol
;; try-complete-lisp-symbol-partially
;; try-expand-whole-kill))
;; ==============================
;; 2.4 Time stamp
;; ==============================
(setq time-stamp-active t)
(setq time-stamp-warn-inactive t)
(setq time-stamp-format "%:u %02m/%02d/%04y %02H02M02S"
(add-hook 'write-file-hooks 'time-stamp)

;; ==============================
;; 2.5 Mini Buffer
;; ==============================
(minibuffer-electric-default-mode 1)
(partial-completion-mode 1)
(icomplete-mode 1)
(setq resize-mini-windows t)
(setq uniquify-buffer-name-style 'forward)
;; ==============================
;; 2.6 Indent
;; ==============================
;; (global-set-key "\C-m" 'newline-and-indent) 
;; (global-set-key (kbd "C-<return>") 'newline) 
(setq-default indent-tabs-mode nil)    ; use only spaces and no tabs
(setq default-tab-width 4)
;; ==============================
;; 2.7 Coment or Uncoment
;; ==============================


;; ==============================
;; 2.8 Others
;; ==============================
(setq Man-notify-method 'pushy)
(auto-image-file-mode)
(auto-compression-mode 1)
    (setq visible-bell nil)
(fset 'yes-or-no-p 'y-or-n-p)


;; #############
;; 3 Programing
;; #############
;;
;; ==============================
;; 3.1 Python
;; Edit:Emacs+model
;;     1.python-mode.el(0): created by the Python community,comes from Python
;;     2.python.el(1): created by the Emacs community (David Love),comes with GNU Emacs
;; Shell:Python shell
;;     3.ipython(1):is a powerful python shell with advanced features and nice code completion
;; Complete:rope,ropemode,Pymacs,ropemacs
;;     4.Rope(0):is librarya refactoring library
;;     5.Ropemode(0):is a wrapper
;;     6.Pymacs(0): is a prerequisite for Ropemacs,allows Emacs to spawn a Python
;;                  process and interact with it.  
;;     7.Ropemacs(0): is an Emacs plugin to use Rope,gives a convenient in-emacs interface to ;;                    all this, including Python documentation access, inlining, finding 
;;                    function definitions and so on.
;;     8.YASnippet(0): is a template system inspired by Textmat.snippet tool like TextMate
;;     9.AutoComplete.el(0): Rope+YASnippet
;;     10.Pycomplete(0):
;; Checking:pylint,flymake
;;
;; Test:doctest,Pydb       
;; ==============================

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Python Edit                                   
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 3.1.1
;; 3.1.8 YASnippet
(add-to-list 'load-path
             "~/.emacs.d/plugins")
(require 'yasnippet-bundle)
;; (add-to-list 'load-path
;;                   "~/.emacs.d/plugins/yasnippet-0.6.1c")
;;     (require 'yasnippet) ;; not yasnippet-bundle
;;     (yas/initialize)
;;     (yas/load-directory "~/.emacs.d/plugins/yasnippet-0.6.1c/snippets")

                       


;; ###########
;; 4 Writting
;; ###########
;; ===================
;; Flyspell+aspell
;; ====================
(autoload 'flyspell-mode "flyspell" "On-the-fly spelling checker." t)
(add-hook 'LaTeX-mode-hook 'flyspell-mode)
(setq-default ispell-program-name "aspell") 


;; 001 Latex
;;     Auctex+Yasnippet
;; ====================

;;-----AUCTex initiating-----
;;
;;-----RefTex------
;;

;;-----math-mode-----
;;

;;-----LaTex-mode settings-----
;;
