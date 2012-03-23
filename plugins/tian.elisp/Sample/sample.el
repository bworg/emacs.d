;; ;; show colors of yasnippet by ac-mode
;; (defface ac-yasnippet-candidate-face
;;   '((t (:background "sandybrown" :foreground "black")))
;;   "Face for yasnippet candidate.")
 
;; (defface ac-yasnippet-selection-face
;;   '((t (:background "coral3" :foreground "white")))
;;   "Face for the yasnippet selected candidate.")
 
;; (defvar ac-source-yasnippet
;;   '((candidates . ac-yasnippet-candidate)
;;     (action . yas/expand)
;;     (candidate-face . ac-yasnippet-candidate-face)
;;     (selection-face . ac-yasnippet-selection-face))
;;   "Source for Yasnippet.")

;; (require 'yasnippet-bundle)


;; add yas in org mode
;; sample1
;; (add-hook 'org-mode-hook
;; '(lambda ()
;; (make-variable-buffer-local 'yas/trigger-key)
;; (setq yas/trigger-key [tab])
;; (define-key yas/keymap [tab] 'yas/next-field-group) ; from Richard Riley in org-mode mailing list
;; ))
