;; ##########################
;; 00 Init of Window & Buffer
;; ##########################
;;
;; =================
;; 0.1 Colors
;; =================

;; 0.1.1 Window Theme and Size
(setq initial-frame-alist '((top . 0) (left . 0) (width . 97) (height . 40)))
(setq default-fill-column 60)
(setq default-frame-alist
    '( (background-color  . "DarkSlateGray") ;;Colors:black,darkblue,abc88b,DarkSlateGray
      (foreground-color  . "Wheat") ;;Colors:white,grey85,Wheat
      (mouse-color       . "green")  ;;Colors:blue,steelblue,gold1
      (cursor-color      . "green") ;;Colors:green.red,white,gold2
      (tool-bar-lines . 0)
      (menu-bar-lines . 1)
      (right-fringe)
      (left-fringe)
))

;; 0.1.2 Hight Colors
(set-face-foreground 'highlight "white")
(set-face-background 'highlight "blue")
(set-face-foreground 'region "cyan")
(set-face-background 'region "blue")
(set-face-foreground 'secondary-selection "skyblue")
(set-face-background 'secondary-selection "darkblue")
;; (require 'highlight-current-line)
;; (highlight-current-line-on t)

;; 0.1.3 Calendar Color
(setq calendar-load-hook
'(lambda ()
(set-face-foreground 'diary-face "skyblue")
(set-face-background 'holiday-face "slate blue")
(set-face-foreground 'holiday-face "white")))

;; 0.1.4 Font color
(global-font-lock-mode t)
(setq font-lock-maximum-decoration t)

;; 0.1.5 Shell color
(autoload 'ansi-color-for-comint-mode-on "ansi-color" nil t)
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)



;; =================
;; 0.2 Bars
;; =================

;; 0.2.0 Logo
(setq inhibit-startup-message nil)

;; 0.2.1 Toolbar
(tool-bar-mode nil)

;; 0.2.2 Menubar:
(menu-bar-mode t)

;; 0.2.3 Scrollbar:No need for today's mouse
(scroll-bar-mode nil)
;;(set-scroll-bar-mode 'right

;; 0.2.4 Status bar
(global-linum-mode t)
(column-number-mode t) 
(display-time-mode 1)
	 ;; (setq display-time-24hr-format t)
	 ;; (setq display-time-day-and-date t)
     ;; (setq display-time-use-mail-icon t)

;; 0.2.5 Mini Buffer
(fset 'yes-or-no-p 'y-or-n-p) ; Treat 'y' or <CR> as yes, 'n' as no
(setq enable-recursive-minibuffers t) 
(setq resize-mini-windows t)
(icomplete-mode 1)


;;==============
;; 0.3 Buffer
;;===============

;; 0.3.1 Ido: interactively do things with buffers and files
(ido-mode t)


;;==============
;; 0.5 Fonts
;;==============
(set-default-font "Monospace-11")
(set-fontset-font (frame-parameter nil 'font) 'han      "YaHei Consolas Hybrid-12")
(set-fontset-font (frame-parameter nil 'font) 'gb18030  "YaHei Consolas Hybrid-12")
(set-fontset-font (frame-parameter nil 'font) 'bopomofo "YaHei Consolas Hybrid-12")
(set-fontset-font (frame-parameter nil 'font) 'cjk-misc "YaHei Consolas Hybrid-12")
(set-fontset-font (frame-parameter nil 'font) 'nil      "YaHei Consolas Hybrid-12")
(set-fontset-font (frame-parameter nil 'font) 'symbol   "YaHei Consolas Hybrid-12")
(set-fontset-font (frame-parameter nil 'font) 'kana     "YaHei Consolas Hybrid-12")

;; =====================
;; 0.6 Image and Files
;; =====================
(auto-image-file-mode) 
(setq default-major-mode 'org-mode) ; for no suffix file
(setq uniquify-buffer-name-style 'forward)
(auto-compression-mode 1)
(setq Man-notify-method 'pushy)

;;==============
;; 0.4 Windows
;;==============
