#!/bin/bash

# Pep8 checks your python code for common formatting fixes. 
# Pyflakes checks your syntax, your imports, etcetera. 
# Indispensable tools, so they should be easy to use.


# sudo easy_install pep8
# sudo easy_install pyflakes


pyflakes $1
echo "## pyflakes above, pep8 below ##"
pep8 --repeat $1



#epylint "$1" 2>/dev/null
#pyflakes "$1"
#pep8 --ignore=E221,E701,E202 --repeat "$1"
#true
