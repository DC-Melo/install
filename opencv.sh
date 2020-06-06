#!/bin/bash
echo '
-------------------------------------------------------------------------
| Time	: Wed Apr 29 21:50:24 CST 2020
| Author: Melo.DC
| Email	: melo.dachar@gmail.com
| Func.	: install mutt
| Param.: None
| Exam.	: 
------------------------------------------------------------------------
'

echo install opencv
if [  -n "$(uname -a | grep -i ubuntu)" ]; then
    # sudo apt-get update && sudo apt-get upgrade
    wget -P ../wget/ -O opencv4.3.0.zip https://github.com/opencv/opencv/archive/4.3.0.zip
    cd ../wget/
    unzip opencv4.3.0.zip
    cd opencv
elif [  -n "$(uname -a | grep -i centos)" ]; then
    yum update
elif [  -n "$(uname -a | grep -i darwin)" ]; then
    brew install mutt
else
    echo Unknown system
fi

echo copy .mutt to home folder
