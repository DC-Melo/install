#!/bin/bash
echo '
-------------------------------------------------------------------------
| Time	: Wed Apr 29 21:50:24 CST 2020
| Author: Melo.DC
| Email	: melo.dachar@gmail.com
| Func.	: install shutter and 
| Param.: None
| Exam.	: 
------------------------------------------------------------------------
'

echo install mutt
if [  -n "$(uname -a | grep -i ubuntu)" ]; then
    # sudo apt-get update && sudo apt-get upgrade
    sudo apt-get install shutter
    wget -P ../wget/ -c https://launchpad.net/ubuntu/+archive/primary/+files/libgoocanvas-common_1.0.0-1_all.deb
    # 也可以通过Gdebi或终端命令安装软件包，因为Ubuntu软件不能自动解决依赖关系：
    sudo dpkg -i ../wget/libgoocanvas-common_1.0.0-1_all.deb; sudo apt-get -f install
    wget -P ../wget/ -c https://launchpad.net/ubuntu/+archive/primary/+files/libgoocanvas3_1.0.0-1_amd64.deb
    sudo dpkg -i ../wget/libgoocanvas3_1.0.0-1_amd64.deb; sudo apt-get -f install
    wget -P ../wget/ -c https://launchpad.net/ubuntu/+archive/primary/+files/libgoo-canvas-perl_0.06-2ubuntu3_amd64.deb
    sudo dpkg -i ../wget/libgoo-canvas-perl_0.06-2ubuntu3_amd64.deb; sudo apt-get -f install
elif [  -n "$(uname -a | grep -i centos)" ]; then
    yum update
elif [  -n "$(uname -a | grep -i darwin)" ]; then
    brew install mutt
else
    echo Unknown system
fi

echo shutter insall success
