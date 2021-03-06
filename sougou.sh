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

echo install mutt
if [  -n "$(uname -a | grep -i ubuntu)" ]; then
    sudo apt-get fcitx
    sudo apt-get update && sudo apt-get upgrade
    sudo apt-get install wget -y
    mkdir ../wget
    wget -o sogou.deb -p ../wget http:\\
    sudo dpkg -i ../wget/sougou.deb

elif [  -n "$(uname -a | grep -i centos)" ]; then
    yum update
elif [  -n "$(uname -a | grep -i darwin)" ]; then
    brew install mutt
else
    echo Unknown system
fi

echo copy .mutt to home folder
