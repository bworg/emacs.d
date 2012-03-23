# Created 20110523
# Author Bingwei TIAN

#!/bin/bash

#0.0 Update
sudo apt-get update
sudo apt-get -y upgrade
sudo apt-get -y dist-upgrade

#0.1 Python Editor 
sudo apt-get -y install emacs 

#0.2 Advanced Python shell
sudo apt-get -y install ipython # Enhanced interactive Python shell

#1 Install Plugins for GNU emacs 

#1.1 Python mode
sudo apt-get install -y python-mode # Additional python-mode and pychecker

#1.2 Python Complete:
sudo apt-get install -y pymacs #Interface between Emacs Lisp and Python 
sudo apt-get install -y python-ropemacs #Rope:Emacs mode for python refactoring

#1.3 Python Checking:
sudo apt-get install -y pylint # Python code analyziz,static, cheker and UML diagram generator,
sudo apt-get install -y pyflakes # Passive cheker of Python programs,just check for logical errors not style
sudo apt-get install -y python-logilab-astng

#1.4 Python Debugging:
sudo apt-get install -y pydb # An enhace Python Command line debugger
