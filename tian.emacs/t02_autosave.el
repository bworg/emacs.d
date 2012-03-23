;; ##########################
;; 02 Backup,Autosave
;; ##########################

;; ====================
;; 2.1 Version Contorl
;; ====================
(setq backup-by-copying t)
(setq kept-new-versions 6) ;Keep 6 newest Bankup files
(setq kept-old-versions 3) ;Keep 3 oldest Bankup files
(setq delete-old-versions t) ;Delete old versions
(setq version-control t) ; Multitime backup

;; ==============
;; 2.2 Kill-ring
;; ==============
(setq kill-ring-max 200)

;; ==============
;; 2.3 Autosave
;; ==============
(setq delete-auto-save-files t) ; Delete Auto-save file When quit

;; =============
;; 2.4 Session http://sourceforge.net/projects/emacs-session/files/session/
;; =============
;(require 'session)
;(add-hook 'after-init-hook 'session-initialize)


