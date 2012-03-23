;; ==============================
;; 3.1 Python
;; Edit:Emacs+model
;;     1.python-mode.el(0): created by the Python community,comes from Python
    ;; * python-mode.el - major mode for editing Python source
    ;; * doctest-mode.el - major mode for editing doctest files
    ;; * pycomplete.el - support for Python symbol completion (Emacs Lisp side)
    ;; * pycomplete.py - support for Python symbol completion (Python side)
;;     2.python.el(1): created by the Emacs community (David Love),comes with GNU Emacs
;; Shell:Python shell
;;     3.ipython(1):is a powerful python shell with advanced features and nice code completion
;; Complete:yasnippet,rope,ropemode,Pymacs,ropemacs
;;     4.Rope(0):is librarya refactoring library
;;     5.Ropemode(0):is a wrapper
;;     6.Pymacs(0): is a prerequisite for Ropemacs,allows Emacs to spawn a Python
;;                  process and interact with it.  
;;     7.Ropemacs(0): is an Emacs plugin to use Rope,gives a convenient in-emacs interface to
;;                    all this, including Python documentation access, inlining, finding 
;;                    function definitions and so on.
;;     8.AutoComplete.el(0): Rope+YASnippet
;;     9.Pycomplete(0):
;; Checking:Pylint,Plymake
;; Test:doctest,Pydb   
;; Python Documentation:info   
;; ==============================

(setq load-path
      (append (list nil
                    "~/.emacs.d/plugins/python-mode.el-6.0.1/"
		    "~/.emacs.d/plugins/pymacs-0.24-beta/"
		    "~/.emacs.d/plugins/agr-ropemacs-tip/"
                    )
              load-path))

;; (require 'ipython)
;; (setq py-python-command-args '( "--colors" "Linux"))
(setq ipython-command "/usr/bin/ipython")
;; (require 'ipython)
;; load ipython.el if ipython is available
(when (executable-find "ipython")
    (require 'ipython nil 'noerror))
(when (featurep 'ipython)
  (setq python-python-command "ipython")
  (autoload 'py-shell "ipython"
    "Use IPython as the Python interpreter." t))
;; (require 'python-mode)
(autoload 'python-mode "python-mode.el"
  "Major mode for editing Python source." t)
(require 'pymacs)
(pymacs-load "ropemacs" "rope-")
(setq ropemacs-enable-autoimport t)

;; (defadvice py-execute-buffer (around python-keep-focus activate)
;;   "Thie advice to make focus python source code after execute command `py-execute-buffer'."
;;   (let ((remember-window (selected-window))
;;         (remember-point (point)))
;;     ad-do-it
;;     (select-window remember-window)
;;     (goto-char remember-point)))

;; (defun rgr/python-execute()
;;   (interactive)
;;   (if mark-active
;;       (py-execute-string (buffer-substring-no-properties (region-beginning) (region-end)))
;;     (py-execute-buffer)))

;; (global-set-key (kbd "C-c C-e") 'rgr/python-execute)

(add-hook 'python-mode-hook
          '(lambda () (eldoc-mode 1)) t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Python Code checking option: Manual Pyflakes and  Flymake
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 1. emacs’ C-c C-w:  is by default bound to pychecker. I modified that to run both pyflakes and pep8. You’ll need a pychecker.sh bash file somewhere on your path:
;; From Emacs, while visiting a Python file, run M-x python-check or C-c C-v or C-c C-w.
(custom-set-variables
  ...
  '(py-pychecker-command "pychecker.sh")
  '(py-pychecker-command-args (quote ("")))
  '(python-check-command "pychecker.sh")
;; When you’re editing a python file, press ctrl-c ctrl-w and you get a good clickable error report that goes right to the offending line in your python code.

;; 2.flymake: Flymake checks your file’s syntax on the fly. Continuously. So you get feedback the moment you use a variable you didn’t define yet.
;; The moment you make a typo. Chris McDonough has a config for pyflakes that I’m happily using:

(when (load "flymake" t)
  (defun flymake-pyflakes-init ()
    (let* ((temp-file (flymake-init-create-temp-buffer-copy
                       'flymake-create-temp-inplace))
           (local-file (file-relative-name
                        temp-file
                        (file-name-directory buffer-file-name))))
      (list "pyflakes" (list local-file))))
  (add-to-list 'flymake-allowed-file-name-masks
               '("\\.py\\'" flymake-pyflakes-init)))

(add-hook 'find-file-hook 'flymake-find-file-hook)
