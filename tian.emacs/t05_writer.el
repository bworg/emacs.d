;;#############
;; 5 Writer
;;#############

;;====================================
;; 5.0 Formatting: Autofill
;;====================================
;; 5.0.1 Autofill
(setq next-line-add-newlines nil)
(setq fill-column 80)
(setq text-mode-hook 'turn-on-auto-fill)


;;=======================================================
;; 5.1 Org-mode: Note,TODO,Plan,GTD,
;;=======================================================  
;; 5.1.1 Org-Global set
;; The following lines are always needed.  Choose your own keys.
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)
;; Turn on font-lock-mode
;;(global-font-lock-mode 1)                     ; for all buffers
(add-hook 'org-mode-hook 'turn-on-font-lock)    ; Org buffers only
;; 5.1.2 Outlines:<TAB>, <S-TAB>,<C-u <TAB>>,<C-u C-u C-u <TAB>>
;; 5.1.3 TODO
(setq org-todo-keywords
      '((sequence "TODO"  "DEADLINE"  "DOING" "HANGUP" "|" "DONE" "CANCEL")))
;;==================
;; 5.2 Latex
;;==================

;; 5.2.1 Org+Reftex
;;-----RefTex------
;; 5.2.2 Auctex+Yasnippet

;; ====================


;;-----AUCTex initiating-----toda
;;To use yap as viewer
;; (load "auctex.el" nil t t)
;;     (require 'tex-mik)
;;  
;;     (setq TeX-auto-save t)
;;     (setq TeX-parse-self t)
;;     (setq-default TeX-master nil)
;;     (add-hook 'LaTeX-mode-hook 'visual-line-mode)
;;     (add-hook 'LaTeX-mode-hook 'flyspell-mode)
;;     (add-hook 'LaTeX-mode-hook 'LaTeX-math-mode)
;;     (add-hook 'LaTeX-mode-hook 'turn-on-reftex)
;;     (setq reftex-plug-into-AUCTeX t)
;;     compile documents to PDF
;;     (setq TeX-PDF-mode t)


;; ######################
;; 11 Japanese Editing
;; ######################

;; ==========================
;; 11.1 Canna:
;; 1. sudo apt-get install canna
;; ==========================
;; (set-language-environment "Japanese")

;; (set-default-coding-systems 'euc-japan)
;; (set-terminal-coding-system 'euc-japan)
;; (set-buffer-file-coding-system 'euc-japan-unix)
;; (set-keyboard-coding-system 'euc-japan)

;; (progn (load-library "canna" ) (canna)
;; (set-input-method 'japanese-canna)
;; (global-set-key "\C-o" 'canna-toggle-japanese-mode)

;; =================================
;; 11.2 YC: Yet another Canna client
;; 1. http://www.ceres.dti.ne.jp/~knak/yc.html
;; 2. apt-get install yc-el
;; ;; =================================
;; ;; (setq load-path (cons (expand-file-name "~/local/yc") load-path))
;; (setq yc-canna-lib-path "~/../usr/local/canna/share/canna")
;; (setq yc-canna-dic-path "~/../usr/local/canna/share/canna/dic")
;; ;; (setq yc-server-host "localhost")

;; (setq yc-select-count 2)
;; (setq yc-rK-trans-key "\C-j")
;; (setq yc-stop-chars "(){}\"\'$%&`=~^/\\|1234567890;:+*")
;; (setq yc-toggle-level 'yc-toggle-global)
;; (global-set-key "\C-\\" 'yc-input-mode)
;; ;; (global-set-key "\M-\ " 'yc-mode)
;; (global-set-key "\C-o" 'yc-mode)
;; ;; (load "yc")
;; (load "yc-5.2.1")
;; (global-yc-mode 1)
;; (setq yc-use-color t)
;; (setq yc-use-fence (not (eq window-system 'x)))
