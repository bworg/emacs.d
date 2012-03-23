;; *********************************************************************
;; .emacs - an emacs initialization file
;;    ~/.tmp For saving #autosave# and backup~ file  
;;      /.emacs.d
;;      /auto-save-list
;;      /plugins:Vendors elisp file *.el, Alias:vendors, lisp-site
;;      /my.elisp:my code of elisp
;;      /my.emacs:my .emacs file setup
;; *** ******************************************************************** 
;; Set default workspace and tmpsaves for backupfiles~ and #autosave#
;; (setq default-directory "~/Dropbox/config/emacs.d/tian.emacs/")

;; place all auto-saves and backups in the directory pointed to by temporary-file-directory
;; (e.g., /tmp; C:/Temp/ on Windows).
(setq backup-directory-alist
    `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
    `((".*" ,temporary-file-directory t)))

;; ‘load-path’ lists all directories where Emacs should look for eLisp libraries

;(add-to-list 'load-path "~/Dropbox/config/emacs.d/plugins")
(add-to-list 'load-path "/usr/share/emacs/site-lisp")
(add-to-list 'load-path "~/Dropbox/config/emacs.d/tian.emacs")
(add-to-list 'load-path "~/Dropbox/config/emacs.d/")

;; Load setup file, Parts of .emacs

(load "~/Dropbox/config/emacs.d/tian.emacs/t00_init.el")
(load "~/Dropbox/config/emacs.d/tian.emacs/t01_keys.el")
(load "~/Dropbox/config/emacs.d/tian.emacs/t02_autosave.el")
(load "~/Dropbox/config/emacs.d/tian.emacs/t03_complete.el")
(load "~/Dropbox/config/emacs.d/tian.emacs/t04_spell.el")
(load "~/Dropbox/config/emacs.d/tian.emacs/t05_writer.el")
;;(load "~/Dropbox/config/emacs.d/tian.emacs/t05_python.el")
