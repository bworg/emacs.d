;; ==============================
;; 3.0 AutoComplete 
;; ==============================
;; 
;; ----------------------------------------------------------------------------
;; 3.1 AC:Auto Complete Mode is an extension to make Emacs auto-completion nicer
;; ----------------------------------------------------------------------------

;; add ac-mode as minor mode
(add-to-list 'load-path "~/Dropbox/config/emacs.d/plugins/auto-complete-1.3.1")
   (require 'auto-complete-config)
   (add-to-list 'ac-dictionary-directories "~/Dropbox/config/emacs.d/plugins/auto-complete-1.3.1/dict")
   (ac-config-default)

;; add ac-mode to org-mode 
(setq ac-modes
      (append ac-modes '(org-mode objc-mode jde-mode sql-mode
                                  change-log-mode text-mode
                                  makefile-gmake-mode makefile-bsdmake-mo
                                  autoconf-mode makefile-automake-mode)))

;; -------------------------------------------------------------------------------
;; 3.2 yas: YASnippet: is a template system or snippet tool inspired by Textmat
;; -------------------------------------------------------------------------------

(add-to-list 'load-path  "~/Dropbox/config/emacs.d/plugins/yasnippet-0.7.0")
   (require 'yasnippet) ;; not yasnippet-bundle
   (yas/initialize)
   (yas/load-directory "~/Dropbox/config/emacs.d/plugins/yasnippet-0.7.0/snippets")

;; add yas as minor-mode in other major mode, Work well except org-mode
(add-hook 'the-major-mode-hook 'yas/minor-mode-on)

;; add yas to org-mode
(add-hook 'org-mode-hook
          (lambda ()
            (org-set-local 'yas/trigger-key [tab])
            (define-key yas/keymap [tab] 'yas/next-field-group)))


