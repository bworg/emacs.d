;; ###############
;; 01 Key-bindings
;; ###############

;; =====================
;; 1.0 Mouse and Cursor
;; =====================
;; 1.0.1 Mouse Style
(mouse-avoidance-mode 'animate)
(blink-cursor-mode -1)
(transient-mark-mode 1)
(mouse-wheel-mode t)
(setq track-eol t)
(setq visible-bell nil)
(setq mouse-yank-at-point t)
(setq-default cursor-type 'bar)
;; 1.0.1 Mouse activity

;; 1.0.1.1 Default Activity
;; (global-set-key (kbd "<mouse-1>") 'mouse-set-point)
;; (global-set-key (kbd "<down-mouse-1>") 'mouse-drag-region)
;; (global-set-key (kbd "<C-down-mouse-1>") 'mouse-buffer-menu)
;; (global-set-key (kbd "<S-down-mouse-1>") 'mouse-set-font)
;; (global-set-key (kbd "<mouse-2>") 'mouse-yank-at-click)
;; (global-set-key (kbd "<mouse-3>") 'mouse-save-then-kill)
;; (global-set-key (kbd "<C-down-mouse-2>") 'mouse-popup-menuar-stuff) ;text properties menue
;; (global-set-key (kbd "<C-down-mouse-3>") 'mouse-major-mode-menu) ;mouse-major-mode-menu
;; 1.0.2 Mouse Stronger
(global-set-key (kbd "<C-mouse-9>") 'nil)
(global-set-key (kbd "<C-mouse-9>") 'mouse-minor-mode-menu) ;mouse-minor-mode-menu
(global-set-key (kbd "<C-down-mouse-1>") nil) 
(global-set-key (kbd "<C-mouse-1>") 'mouse-buffer-menu) ;buffer menu = C-x C-b
(require 'mouse-drag)
(global-set-key (kbd "<S-down-mouse-1>") 'mouse-drag-drag) ;move with mouse

(require 'mouse-copy)
(global-set-key [M-C-down-mouse-1] 'mouse-drag-secondary-moving) ;cut and paste to point,not yank 
(global-set-key [M-S-down-mouse-1] 'mouse-drag-secondary-pasting) ;copy and paste to point, not yank

;; ==================
;; 1.1 Function keys
;; ==================
(global-set-key [f1] 'info)  ;;C-h i
(global-set-key [C-f1] 'manual-entry)

(global-set-key [f2] 'rename-file)
(global-set-key [C-f2] 'rename-buffer)

(global-set-key [f3] 'repeat-complex-command)
(global-set-key [C-f3] 'advertised-undo)

(global-set-key [f4] 'eshell) ;; M-x esh, C-u M-x esh
(global-set-key [C-f4] 'ansi-term) ;; M-x shell

(global-set-key [f5] 'compile)
(global-set-key [C-f5] 'eval-current-buffer)

(global-set-key [f6] 'ansi-term)
(global-set-key [C-f6] 'gdb)

(global-set-key [f7] 'next-error)
(global-set-key [C-f7] 'previous-error)

;;(global-set-key [f8] 'ispell)
;;(global-set-key [C-f8] ')

(global-set-key [f9] 'eval-buffer)
(global-set-key [C-f9] 'eval-current-buffer) 

(global-set-key [f10] 'menu-bar-mode)
(global-set-key [C-f10] 'kill-compilation)

(global-set-key [f11] 'tool-bar-mode)
(global-set-key [C-11] 'set-mark-command)

(global-set-key [f12] 'calendar)
(global-set-key [C-f12] 'list-bookmarks)


;; ==================
;; 1.2 Meta(ALT) keys
;; ==================
(global-set-key "\M- " 'set-mark-command)
(global-set-key "\M-\C-h" 'backward-kill-word)
(global-set-key "\M-\C-r" 'query-replace)
(global-set-key "\M-r" 'replace-string)
(global-set-key "\M-g" 'goto-line)
;; (global-set-key "\M-h" 'help-command)

;; ==============================
;; 1.3 Copy and Paste
;; ==============================
(setq x-select-enable-clipboard t) ;; enable Copy from outside
;;(global-set-key "\C-a" 'mark-whole-buffer) ;; C-x h
;;(global-set-key "\C-z" 'undo) ;; C-x u or C-_ or C-/
;;(global-set-key "\C-x" 'cut) ;; C-w,
;;(global-set-key "\C-c" 'copy) ;; M-w,
;;(global-set-key "\C-v" 'yank) ;; C-y

;; ==============================
;; 1.4 Key-blind for moviation
;; ==============================
;; 1.4.1 Buffer/Region
(global-set-key [home] 'beginning-of-buffer) ;; M-<
(global-set-key [end] 'end-of-buffer) ;; M->
;; (global-set-key [C-tab] 'next-buffer)  ;; Next buffer
;; (global-set-key [(control shift tab)]  'yic-prev-buffer) ;;Precious buffer

;;1.4.2 Page/Screen
;; (global-set-key [prior] "\M-v") ;;Pageup
;; (global-set-key [next] "\C-v") ;;Pagedown

(global-set-key [C-up] "\M-\C-b")
(global-set-key [C-down] "\M-\C-f")
(global-set-key [C-left] "\M-b")
(global-set-key [C-right] "\M-f")
;; (global-set-key [C-home] "\M-<")
;; (global-set-key [C-end] "\M->")
(global-set-key [C-prior] "\M-<")
(global-set-key [C-next] "\M->")

;; ==============================
;; 1.5 Coment or Uncoment
;; ==============================
(global-set-key (kbd "C-c c") 'comment-region)   ;; make C-c C-c and C-c C-u work 
(global-set-key (kbd "C-c u") 'uncomment-region) ;; for comment/uncomment region in all modes 

;; ==========================
;; 1.6 Make pair of {,[ and (
;; ==========================
(setq skeleton-pair t)
(setq skeleton-pair-on-word t)
(show-paren-mode t) ;;hight pairs
(global-set-key "(" 'skeleton-pair-insert-maybe)
(global-set-key "<" 'skeleton-pair-insert-maybe)
(global-set-key "[" 'skeleton-pair-insert-maybe)
(global-set-key "{" 'skeleton-pair-insert-maybe)
(global-set-key "\"" 'skeleton-pair-insert-maybe)
(global-set-key "\'" 'skeleton-pair-insert-maybe)  
(global-set-key "\%" 'skeleton-pair-insert-maybe)
(global-set-key "\\" 'skeleton-pair-insert-maybe)
(global-set-key "\/" 'skeleton-pair-insert-maybe)
(global-set-key "\;" 'skeleton-pair-insert-maybe)
;; ==========================
;; 1.7 Indent
;; ==========================
(setq-default indent-tabs-mode nil)
(setq default-tab-width 4)
(setq tab-stop-list nil)
(global-set-key "\C-m" 'newline-and-indent)
(global-set-key "\C-j" 'newline)
(setq require-final-newline t)

;; ==============================
;; 1.8 Rectangle Region Selection
;; ==============================
;; (require 'rect-mark)
;; (global-set-key   [down-mouse-2]  'rm-mouse-drag-region)    ; mouse drag rect
;; (global-set-key   "\M-I"          'string-insert-rectangle) ; insert string
;; (global-set-key (kbd "C-x r C-SPC") 'rm-set-mark)
;;     (global-set-key (kbd "C-x r C-x") 'rm-exchange-point-and-mark)
;;     (global-set-key (kbd "C-x r C-w") 'rm-kill-region)
;;     (global-set-key (kbd "C-x r M-w") 'rm-kill-ring-save)
;;     (autoload 'rm-set-mark "rect-mark"
;;       "Set mark for rectangle." t)
;;     (autoload 'rm-exchange-point-and-mark "rect-mark"
;;       "Exchange point and mark for rectangle." t)
;;     (autoload 'rm-kill-region "rect-mark"
;;       "Kill a rectangular region and save it in the kill ring." t)
;;     (autoload 'rm-kill-ring-save "rect-mark"
;;       "Copy a rectangular region to the kill ring." t)


;; ==============================
;; 1.9 Windows Move
;; ==============================
(global-set-key [S-left] 'windmove-left) 
(global-set-key [S-right] 'windmove-right) 
(global-set-key [S-up] 'windmove-up) 
(global-set-key [S-down] 'windmove-down)

;;(require 'tabbar) ; Load packages
;;(tabbar-mode)
;;(global-set-key [M-up] 'tabbar-backward-group)
;;(global-set-key [M-down] 'tabbar-forward-group)
;;(global-set-key [M-left] 'tabbar-backward)
;;(global-set-key [M-right] 'tabbar-forward)
