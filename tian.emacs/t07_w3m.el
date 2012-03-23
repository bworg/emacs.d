;; sudo aptitude w3m
;; cvs -d :pserver:anonymous@cvs.namazu.org:/storage/cvsroot co emacs-w3m

;; autoconf
;; ./configure
;; make
;; sudo make install

(add-to-list 'load-path  "~/.emacs.d/plugins/emacs-w3m")

(require 'w3m-load)
(require 'w3m-e21)
(provide 'w3m-e23)
(setq w3m-use-favicon nil)
(setq w3m-command-arguments '("-cookie" "-F"))
(setq w3m-use-cookies t)
(setq w3m-home-page "http://www.google.com")
(setq w3m-default-display-inline-image t)
(setq w3m-default-toggle-inline-images t)

;; ;;使用Emacs-w3m浏览网页
;; ;; (add-to-list 'load-path "~/emacs/site-lisp/w3m")
;; ;; (require 'w3m-load)
;; ;; (require 'w3m-e21)
;; ;; (provide 'w3m-e23)
;; ;; (setq w3m-use-favicon nil)
;; ;; (setq w3m-command-arguments '("-cookie" "-F"))
;; ;; (setq w3m-use-cookies t)
;; ;; (setq w3m-home-page "http://www.google.com")

;; ;; (setq w3m-display-inline-image t)

;; ;;启动和初始化w3m.el
;; (autoload 'w3m "w3m" "Interface for w3m on Emacs." t)
;; (autoload 'w3m-browse-url "w3m" "Ask a WWW browser to show a URL." t)
;; (autoload 'w3m-search "w3m-search" "Search words using emacs-w3m." t)
;; ;;使用w3m作为默认的浏览器
;; (setq browse-url-browser-function 'w3m-browse-url)
;; ;;使用mule-ucs，只有在你安装mule-ucs elisp扩展包时这个才有用，可以看Unicode解码的网页
;; ;(setq w3m-use-mule-ucs t)
;; ;;使用工具包
;; (setq w3m-use-toolbar t)
;; ;;使用info的快件键绑定
;; ;(set-default 'w3m-key-binding 'info)
;; ;;启用cookie
;; (setq w3m-use-cookies t)
;; ;;这个是作什么的?
;; (setq w3m-use-tab-menubar t)
;; ;;设定w3m图标所在文件夹
;; ;(setq w3m-icon-directory "/home/jerry/software/xemacs/w3m/emacs-w3m-1.4.4/icons")
;; ;;显示图标
;; (setq w3m-show-graphic-icons-in-header-line t)
;; (setq w3m-show-graphic-icons-in-mode-line t)
;; ;;设定w3m运行的参数，分别为使用cookie和使用框架
;; (setq w3m-command-arguments '("-cookie" "-F"))
;; ;;用w3m浏览网页时也显示图片
;; (setq w3m-display-inline-image t)
;; ;; ;;设定w3m的语言设置，以便方便使用和阅读中文-用了就乱码
;; ;; ;;书签解码设置
;; ;; (setq w3m-bookmark-file-coding-system 'chinese-iso-8bit)
;; ;; ;;w3m的解码设置，后面最好都有，我也不详解了
;; ;; (setq w3m-coding-system 'chinese-iso-8bit)
;; ;; (setq w3m-default-coding-system 'chinese-iso-8bit)
;; ;; (setq w3m-file-coding-system 'chinese-iso-8bit)
;; ;; (setq w3m-file-name-coding-system 'chinese-iso-8bit)
;; ;; (setq w3m-terminal-coding-system 'chinese-iso-8bit)
;; ;; (setq w3m-input-coding-system 'chinese-iso-8bit)
;; ;; (setq w3m-output-coding-system 'chinese-iso-8bit)
;; ;;w3m是使用tab的，设定Tab的宽度
;; (setq w3m-tab-width 4)
;; ;;设定w3m的主页
;; (setq w3m-home-page "http://www.google.cn")
;; ;;当用 shift+RET 打开新链接时将不自动跳转到新的页面，等提示已经完全打开，才用 C-c C-n ，
;; ;;C-c C-p 打开，这个好用
;; (setq w3m-view-this-url-new-session-in-background t)
;; (add-hook 'w3m-fontify-after-hook 'remove-w3m-output-garbages)
;; ;;好像是有利于中文搜索的
;; (defun remove-w3m-output-garbages ()
;; "去掉w3m输出的垃圾."
;; (interactive)
;; (let ((buffer-read-only))
;; (setf (point) (point-min))
;; (while (re-search-forward "[\200-\240]" nil t)
;; (replace-match " "))
;; (set-buffer-multibyte t))
;; (set-buffer-modified-p nil))
;; ;;颜色设置
;; ;(setq w3m-
;; ;;;;;;;;;;;;;;;;;;;;;
;; ;;语言设置
;; ;;这个不知道有用没，好像在下一版emacs对unicode支持好了就可以了
;; ;;当然这个是用emacs-cvs
;; ;;;;;;;;;;;;;;;;;;;;;
;; (when (boundp 'utf-translate-cjk)
;; (setq utf-translate-cjk t)
;; (custom-set-variables
;; '(utf-translate-cjk t)))
;; (if (fboundp 'utf-translate-cjk-mode)
;; (utf-translate-cjk-mode 1))
;; ;;配置handle text/html part with emacs-w3m under SEMI MUAs such as Wanderlust
;; (require `mime-w3m)

;; 3.使用
;; Emacs-w3m的使用基本与w3m的使用相同，快捷键稍有不同。快捷键列表如下：

;; key    main
;; Shift-RET     新标签打开
;; RET | Mouse-1     打开当前链接
;; R     刷新
;; g     转到
;; G     新标签中转到
;; U     转到
;; H     主页
;; s     历史
;; M     用外部浏览器查看当前页面
;; d     下载
;; \     查看源代码
;; =     查看头信息
;; key    edit
;; u     复制链接地址到剪切板
;; c     复制本页地址到剪切板
;; E     编辑本页
;; e     编辑链接页
;; C-c C-c     提交textarea编辑
;; C-c C-w     删除当前页
;; C-c M-w     删除其他页
;; C-c C-t     复制当前页到新标签
;; key    type
;; C-c C-n     下一个标签
;; C-c C-p     上一个标签
;; C-c C-s     选择当前标签
;; v     查看书签
;; a     添加当前页面到书签
;; M-a     添加链接到书签
;; M-i     保存当前位置图片
;; T     显示图片
;; M-[     缩小当前图片
;; M-]     放大当前图片
;; I     用外部查看器显示当前图片
;; key    move
;; M-g     跳到第 n 行
;; C-c C-@     标记当前位置
;; C-c C-v     跳到上次标记位置
;; TAB     下一个链接
;; M-TAB     上一个链接
;; ]     下一个表格
;; [     上一个表格
;; }     下一幅图
;; {     上一幅图
;; B     返回
;; N     前进
;; ^     退回上一层
;; SPC     下翻页
;; b     上翻页
;; DEL     上翻页
;; >     右平移
;; <     左平移
;; .     最左端
;; ,     最右端
;; M-l     居中
;; C-a     行首
;; C-e     行尾
;; J     屏幕下滚
;; K     屏幕上滚
;; key    other
;; M-x w3m     启动
;; q     挂起
;; Q     退出
;; r     重绘
;; C t     内容 重绘
;; C c     确定字符集 重绘
;; C C     确定字符集＋内容 重绘

;; 1.安装:sudo aptitude install w3m w3m-img w3m-el
;; 2.编辑~./emacs文件中加入:
;; ; w3m
;; (autoload 'w3m "w3m" "interface for w3m on emacs" t)
;; (setq w3m-command-arguments '("-cookie" "-F"))
;; (setq w3m-use-cookies t)
;; (setq w3m-home-page "http://www.linuxsir.com/bbs/")
;; (require 'mime-w3m)
;; (setq w3m-default-display-inline-image t)
;; (setq w3m-default-toggle-inline-images t)
;; ;;
;; (setq w3m-arrived-file-coding-system 'euc-cn)
;; (setq w3m-bookmark-file-coding-system 'euc-cn)
;; (setq w3m-default-url-coding-system 'euc-cn)
;; (setq w3m-output-coding-system 'euc-cn)
;; (setq w3m-coding-system 'euc-cn)
;; (setq w3m-input-coding-system 'euc-cn)
;; (setq w3m-find-coding-system 'euc-cn)
;; (setq w3m-default-coding-system 'euc-cn)
;; (setq w3m-coding-system-priority-list '(euc-cn))
;; (setq
;; w3m-file-name-coding-s
;; 3.进入emacs，M-x w3m,即可进行浏览；
;; 4.
;; 4、如何使用w3m?
;; U：浏览一个网址 G：在标签页中打开一个网址左键：返回上一页 N：进入下一页空格：翻页 S：用google进行搜索
;; 5、退出w3m，q键
;; 6.常用命令
  
    
;;       g
;;       (w3m-goto-url)
    
    
;;       c
;;       (w3m-print-current-url)
    
    
;;       R
;;       (w3m-reload-this-page)
    
    
;;       SPC
;;       Scroll downwards
    
    
;;       DEL
;;       Scroll upwards
    
    
;;       >
;;       (w3m-scroll-left)
    
    
      
;;       (w3m-scroll-right)
    
    
;;       .
;;       Shift to the left
    
    
;;       ,
;;       Shift to the right
    
    
;;       M-l
;;       (w3m-horizontal-recenter)
    
    
;;       TAB
;;       Move the point to the next link
    
    
;;       M-TAB
;;       Move the point to the previous anchor.
    
    
;;       ]
;;       Move the point to the next form.
    
    
;;       [
;;       Move the point to the previous form.
    
    
;;       }
;;       Move the point to the next image.
    
    
;;       {
;;       Move the point to the previous image
    
    
;;       B
;;       (w3m-view-previous-page)
    
    
;;       N
;;       (w3m-view-next-page).
    
    
;;       H
;;       (w3m-gohome)
    
    
;;       ^
;;       parent directory of the page currently displayed
    
    
;;       q
;;       (w3m-close-window).
    
    
;;       Q
;;       (w3m-quit)
    
    
;;       T
;;       (w3m-toggle-inline-images)
    
    
;;       I
;;       (w3m-view-image)
    
    
;;       M-i
;;       (w3m-save-image)
    
    
;;       M-[
;;       (w3m-zoom-out-image)
    
    
;;       M-]
;;       (w3m-zoom-in-image)
    
    
;;       s
;;       (w3m-history)
    
    
;;       a
;;       (w3m-bookmark-add-current-url)
    
    
;;       M-a
;;       (w3m-bookmark-add-this-url)
    
    
;;       v
;;       (w3m-bookmark-view)
    
    
;;       C-k
;;       (w3m-bookmark-kill-entry)
    
    
;;       E
;;       (w3m-bookmark-edit)
    
    
;;       C-_
;;       (w3m-bookmark-undo)
    
    
;;       C-c C-t
;;       (w3m-copy-buffer)
    
    
;;       C-c C-w
;;       (w3m-delete-buffer)
    
    
;;       C-c M-w
;;       (w3m-delete-other-buffers)
    
    
;;       C-c C-p
;;       (w3m-previous-buffer)
    
    
;;       C-c C-n
;;       (w3m-next-buffer)
    
    
;;       C-c C-a
;;       (w3m-switch-buffer)
    
    
;;       C-c C-s
;;       (w3m-select-buffer)
    
    
;;       d
;;       (w3m-download-this-url)
    
    
;;       C-c C-c
;;       (w3m-submit-form)
    
    
;;       C-c C-q
;;       (w3m-form--keymap)
    
    
;;       D
;;       (w3m-dtree)


;; -*- Emacs-Lisp -*-

;; Time-stamp: <2011-03-20 12:48:27 Sunday by taoshanwen>

;; (autoload 'w3m-which-command "w3m-util")

;; (when (w3m-which-command "w3m")
;;   (require 'util)
;;   (require 'w3m)

;;   (eal-define-keys-commonly
;;    global-map
;;    `(("M-M"     w3m-goto-url-new-session)
;;      ("C-x M-B" view-w3m-bookmark)
;;      ("C-x M-m" switch-to-w3m))))

;; (defun w3m-settings ()
;;   "Settings for `w3m'."
;;   (defvar w3m-buffer-name-prefix "*w3m" "Name prefix of w3m buffer")
;;   (defvar w3m-buffer-name (concat w3m-buffer-name-prefix "*") "Name of w3m buffer")
;;   (defvar w3m-bookmark-buffer-name (concat w3m-buffer-name-prefix "-bookmark*") "Name of w3m buffer")
;;   (defvar w3m-dir (concat my-emacs-lisps-path "emacs-w3m/") "Dir of w3m.")

;;   (setq w3m-command-arguments '("-cookie" "-F"))
;;   (setq w3m-use-cookies t)
;;   (setq w3m-icon-directory (concat w3m-dir "icons"))
;;   (setq w3m-use-mule-ucs t)
;;   (setq w3m-home-page "http://www.google.com.hk")
;;   (setq w3m-default-display-inline-images t)

;;   (defun w3m-mode-settings ()
;;     (make-local-variable 'hl-line-face)
;;     (setq hl-line-face 'hl-line-nonunderline-face)
;;     (setq hl-line-overlay nil)
;;     (color-theme-adjust-hl-line-face))

;;   (add-hook 'w3m-mode-hook 'w3m-mode-settings)

;;   (defun w3m-save-current-buffer ()
;;     "Save current w3m buffer."
;;     (interactive)
;;     (save-excursion
;;       (mark-whole-buffer)
;;       (call-interactively 'copy-region-as-kill-nomark))
;;     (with-temp-buffer
;;       (call-interactively 'yank)
;;       (call-interactively 'write-file)))

;;   (defun w3m-print-current-url ()
;;     "Display current url."
;;     (interactive)
;;     (w3m-message "%s" (w3m-url-readable-string w3m-current-url)))

;;   (defun w3m-copy-current-url ()
;;     "Display the current url in the echo area and put it into `kill-ring'."
;;     (interactive)
;;     (when w3m-current-url
;;       (let ((deactivate-mark nil))
;;         (kill-new w3m-current-url)
;;         (w3m-print-current-url))))

;;   (defun view-w3m-bookmark ()
;;     "View w3m bokmark."
;;     (interactive)
;;     (let ((buffer (get-buffer w3m-bookmark-buffer-name)))
;;       (if buffer
;;           (switch-to-buffer buffer)
;;         (with-current-buffer (get-buffer-create w3m-bookmark-buffer-name)
;;           (w3m-mode)
;;           (w3m-bookmark-view)))))

;;   (defun switch-to-w3m ()
;;     "Switch to *w3m* buffer."
;;     (interactive)
;;     (let ((buffer (get-buffer w3m-buffer-name)))
;;       (if buffer
;;           (switch-to-buffer buffer)
;;         (message "Could not found w3m buffer."))))

;;   (defun w3m-browse-buffer (&optional buffer)
;;     "Use w3m browser buffer BUFFER."
;;     (interactive "bBuffer to browse use w3m: ")
;;     (unless buffer (setq buffer (current-buffer)))
;;     (let* ((file (buffer-file-name buffer))
;;            (name (buffer-name buffer)))
;;       (if file
;;           (w3m-goto-url-new-session file)
;;         (with-current-buffer buffer
;;           (save-excursion
;;             (mark-whole-buffer)
;;             (call-interactively 'copy-region-as-kill-nomark)))
;;         (let* ((new-name
;;                 (concat
;;                  w3m-buffer-name-prefix
;;                  "-"
;;                  (if (string= "*" (substring name 0 1))
;;                      (substring name 1)
;;                    (concat name "*"))))
;;                (new-buffer (get-buffer-create new-name)))
;;           (switch-to-buffer new-buffer)
;;           (call-interactively 'yank)
;;           (w3m-buffer)
;;           (w3m-mode)
;;           (setq w3m-current-title (buffer-name))))))

;;   ;; fix small bug about of `w3m-auto-show'
;;   ;; see my-blog/emacs/w3m-auto-show-bug.htm
;;   (defun w3m-auto-show ()
;;     "Scroll horizontally so that the point is visible."
;;     (when (and truncate-lines
;;                w3m-auto-show
;;                (not w3m-horizontal-scroll-done)
;;                (not (and (eq last-command this-command)
;;                          (or (eq (point) (point-min))
;;                              (eq (point) (point-max)))))
;;                (or (memq this-command '(beginning-of-buffer end-of-buffer))
;;                    (string-match "\\`i?search-"
;;                                  (if (symbolp this-command) (symbol-name this-command) ""))
;;                    (and (markerp (nth 1 w3m-current-position))
;;                         (markerp (nth 2 w3m-current-position))
;;                         (>= (point)
;;                             (marker-position (nth 1 w3m-current-position)))
;;                         (<= (point)
;;                             (marker-position (nth 2 w3m-current-position))))))
;;       (w3m-horizontal-on-screen))
;;     (setq w3m-horizontal-scroll-done nil))

;;   (defun w3m-link-numbering (&rest args)
;;     "Make overlays that display link numbers."
;;     (when w3m-link-numbering-mode
;;       (save-excursion
;;         (goto-char (point-min))
;;         (let ((i 0)
;;               overlay num)
;;           (catch 'already-numbered
;;             (while (w3m-goto-next-anchor)
;;               (when (get-char-property (point) 'w3m-link-numbering-overlay)
;;                 (throw 'already-numbered nil))
;;               (setq overlay (make-overlay (point) (1+ (point)))
;;                     num (format "[%d]" (incf i)))
;;               (w3m-static-if (featurep 'xemacs)
;;                   (progn
;;                     (overlay-put overlay 'before-string num)
;;                     (set-glyph-face (extent-begin-glyph overlay)
;;                                     'w3m-link-numbering))
;;                 (w3m-add-face-property 0 (length num) 'w3m-link-numbering num)
;;                 (overlay-put overlay 'before-string num)
;;                 (overlay-put overlay 'evaporate t))
;;               (overlay-put overlay 'w3m-link-numbering-overlay i)))))))

;;   (eal-define-keys
;;    'w3m-mode-map
;;    `(("<backtab>" w3m-previous-anchor)
;;      ("n"         w3m-next-anchor)
;;      ("p"         w3m-previous-anchor)
;;      ("w"         w3m-next-form)
;;      ("b"         w3m-previous-form)
;;      ("f"         w3m-go-to-linknum)
;;      ("M-n"       w3m-next-buffer)
;;      ("M-p"       w3m-previous-buffer)
;;      ("C-k"       kill-this-buffer)
;;      ("C-k"       w3m-delete-buffer)
;;      ("C-c 1"     w3m-delete-other-buffers)
;;      ("1"         delete-other-windows)
;;      ("C-x C-s"   w3m-save-current-buffer-sb)
;;      ("P"         w3m-print-current-url)
;;      ("U"         w3m-print-this-url)
;;      ("c"         w3m-copy-current-url)
;;      ("g"         w3m-goto-url-new-session)
;;      ("G"         w3m-goto-url)
;;      ("d"         w3m-download-this-url-sb)
;;      ("M-d"       w3m-download-sb)
;;      ("s"         w3m-search)
;;      ("S"         w3m-history)
;;      ("u"         View-scroll-page-backward)
;;      ("J"         roll-down)
;;      ("K"         roll-up)
;;      ("o"         other-window)
;;      ("m"         w3m-view-this-url-new-session)
;;      ("C-h"       w3m-view-previous-page)
;;      ("F"         w3m-view-next-page)
;;      ("C-;"       w3m-view-next-page)
;;      ("r"         w3m-reload-this-page)
;;      ("v"         w3m-bookmark-view-new-session)
;;      ("M-e"       w3m-bookmark-edit)
;;      ("'"         switch-to-other-buffer))))

;; (eval-after-load "w3m"
;;   `(w3m-settings))

;; (provide 'w3m-settings)
