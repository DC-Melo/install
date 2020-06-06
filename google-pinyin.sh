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
	sudo apt-get install fcitx fcitx-googlepinyin im-config
	echo choose fcitx
	im-config
	echo choose googlle pinyin	
	fcitx-config-gtk3
	echo "reboot 5 s ,ctrl + c to cancel
	sleep 5
	reboot
elif [  -n "$(uname -a | grep -i centos)" ]; then
    yum update
elif [  -n "$(uname -a | grep -i darwin)" ]; then
    brew install mutt
else
    echo Unknown system
fi

echo copy .mutt to home folder
