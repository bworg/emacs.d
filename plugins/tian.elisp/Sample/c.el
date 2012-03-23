;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;C/C++
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defun linux-cpp-mode ()
"my cpp mode define"
(interactive)
(c-set-style "K&R")
(setq c-basic-offset 4)
(c-toggle-hungry-state)
;(c-toggle-auto-state)
(define-key c++-mode-map [return] 'newline-and-indent) 
)
    
      


(add-hook 'c-mode-hook 'linux-c-mode)
(add-hook 'c++-mode-hook 'linux-cpp-mode)
;; 设置imenu的排序方式为按名称排序
(setq imenu-sort-function 'imenu--sort-by-name)
(defun linux-c-mode()
;; 将回车代替C-j的功能，换行的同时对齐
  (define-key c-mode-map [return] 'newline-and-indent)
;;  (interactive)
;; 设置C程序的对齐风格
  (c-set-style "Stroustrup")

;; 自动模式，在此种模式下当你键入{时，会自动根据你设置的对齐风格对齐
;;   (c-toggle-auto-state)
;; 此模式下，当按Backspace时会删除最多的空格,使得if缩进正常
  (c-toggle-hungry-state)
;; TAB键的宽度设置为4
  (setq c-basic-offset 4)
;; 在菜单中加入当前Buffer的函数索引
  (imenu-add-menubar-index)
;; 在状态条上显示当前光标在哪个函数体内部
  (which-function-mode)
 )



(defun geosoft-backward-word ()
   ;; Move one word backward. Leave the pointer at start of word
   ;; Treat _ as part of word
   (interactive)
   (backward-word 1)
   (backward-char 1)
   (cond ((looking-at "_") (geosoft-backward-word))
         (t (forward-char 1)))) 

(setq default-directory "/home/bf")

(setq-default indent-tabs-mode nil)
(setq nxml-child-indent 4)

(global-auto-revert-mode t);
(tool-bar-mode nil);
;;(setq c-default-style
;;      '((c-mode . "Stroustrup")))
(setq-default tab-width 4)
(setq c-basic-offset 4)
(setq default-fill-column 80)
(setq column-number-mode t)
(setq make-backup-files nil)