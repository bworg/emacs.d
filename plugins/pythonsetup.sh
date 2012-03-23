#!/bin/bash
# Updated 20110810

# Install Pymacs (Emacs part)

#curl -L https://github.com/pinard/Pymacs/tarball/v0.24-beta2 | tar zx
#cd pinard-Pymacs-016b0bc
#make 
#mkdir -p ~/.emacs.d/plugins/pymacs-0.24-beta2
#cp pymacs.el ~/.emacs.d/plugins/pymacs-0.24-beta2/pymacs.el 
#emacs -batch -eval '(byte-compile-file "~/.emacs.d/plugins/pymacs-0.24-beta2/pymacs.el")'

#(add-to-list 'load-path "~/.emacs.d/vendor/pymacs-0.24-beta2")
#(require 'pymacs)
#(pymacs-load "ropemacs" "rope-")
#(setq ropemacs-enable-autoimport t)

## Install Python-pip:pyinstall
  #sudo apt-get install python-pip
## Install Pymacs (Python part):
  #sudo pip install https://github.com/pinard/Pymacs/tarball/v0.24-beta2 
## Install Ropemacs and Rope:
  #sudo pip install http://bitbucket.org/agr/ropemacs/get/tip.tar.gz 


# Install Auto Complete Mode: is an extension to make Emacs auto-completion nicer

#cd ~/.emacs.d/plugins
#curl http://cx4a.org/pub/auto-complete/auto-complete-1.3.1.tar.bz2 | tar jx 
#cd auto-complete-1.3.1 
#make byte-compile 

# Edit ~/.emacs

#(add-to-list 'load-path "~/.emacs.d/plugins/auto-complete-1.3.1")
#(require 'auto-complete-config)
#(add-to-list 'ac-dictionary-directories "~/.emacs.d/plugins/auto-complete-1.3.1/dict")
#(ac-config-default)

# Code checking option 1: On-the-fly w/ Flymake
# Flymake is part of Emacs 23. PyFlakes. pep8. See also pylint. Reference.
# Install PyFlakes and pep8
 #sudo pip install pyflakes pep8
 
#Get  flymake-cursor.el and save it as ~/.emacs.d/plugins/flymake-cursor.el.
#Edit ~/.emacs:
#(add-hook 'find-file-hook 'flymake-find-file-hook)
#(when (load "flymake" t)
  #(defun flymake-pyflakes-init ()
    #(let* ((temp-file (flymake-init-create-temp-buffer-copy
               #'flymake-create-temp-inplace))
       #(local-file (file-relative-name
            #temp-file
            #(file-name-directory buffer-file-name))))
      #(list "pycheckers"  (list local-file))))
   #(add-to-list 'flymake-allowed-file-name-masks
             #'("\\.py\\'" flymake-pyflakes-init)))
#(load-library "flymake-cursor")
#(global-set-key [f10] 'flymake-goto-prev-error)
#(global-set-key [f11] 'flymake-goto-next-error)

#Create pycheckers, make it executable, and put it on your PATH

#

Well, flymake is just looking for a executable command thats output lines in a predefined format. You can make a shell script for example that will call successively all the checkers you want...

You must also make sure that your script ends by returning errorlevel 0. So this is an example:

This is what I've done in a "pycheckers" script:

#!/bin/bash

epylint "$1" 2>/dev/null
pyflakes "$1"
pep8 --ignore=E221,E701,E202 --repeat "$1"
true
For the emacs lisp part:

(when (load "flymake" t)
  (defun flymake-pyflakes-init ()
    (let* ((temp-file (flymake-init-create-temp-buffer-copy
               'flymake-create-temp-inplace))
       (local-file (file-relative-name
            temp-file
            (file-name-directory buffer-file-name))))
      (list "pycheckers"  (list local-file))))
   (add-to-list 'flymake-allowed-file-name-masks
             '("\\.py\\'" flymake-pyflakes-init)))






#Code checking option 2: Manual checking w/ python-check
#PyFlakes is a Lint-like tool for Python. It is like PyChecker, but it is fast. PyFlakes can be run from within Emacs using the default python mode in Emacs23.









#Install PyFlakes
#$ sudo pip install pyflakes
#Edit ~/.emacs
#(setq python-check-command "pyflakes")
#From Emacs, while visiting a Python file, run M-x python-check or C-c C-v or C-c C-w.










#Django
#Reference

#$ wget http://ourcomments.org/Emacs/DL/elisp/nxhtml/zip/nxhtml-2.08-100425.zip 
#$ unzip nxhtml-2.08-100425.zip
    
#(load "~/.emacs.d/nxhtml/autostart.el")
#(setq mumamo-background-colors nil) 
#(add-to-list 'auto-mode-alist '("\\.html$" . django-html-mumamo-mode))
    

