#!/bin/bash
echo '
-------------------------------------------------------------------------
| Time	: Fri May  1 11:27:12 CST 2020
| Author: Melo.DC
| Email	: melo.dachar@gmail.com
| Func.	: install st-link driver
| Param.: y y y y y  para1:pingyin,chromium, para2:office para3:engineer tools para4:special tools
| Exam.	: 
------------------------------------------------------------------------
'

echo install st-link driver
if [  -n "$(uname -a | grep -i ubuntu)" ]; then
    echo ubuntu system
    sudo add-apt-repository ppa:irie/blender
    sudo apt-add-repository ppa:paolorotolo/android-studio
    sudo add-apt-repository ppa:mystic-mirage/pycharm
    sudo add-apt-repository ppa:hluk/copyq

    sudo apt update



    # sudo apt-get install -y aptitude
    sudo apt-get install -y openssh-server
    sudo apt-get install -y openssh-client
    sudo apt-get install -y wget
    sudo apt-get install -y net-tools
    sudo apt-get install -y vim
    sudo apt-get install -y git
    sudo apt-get install -y tree
    sudo apt-get install -y unrar
    sudo apt-get install -y unzip
    sudo apt-get install -y p7zip
    sudo apt-get install -y rename
    sudo apt-get install -y xsel 
    sudo apt-get install -y mlocate

    if [ "$1"="y" ];then
        sudo apt-get install -y chromium-browser
        sudo apt-get install -y vlc
    fi

    if [ "$2"="y" ];then
        sudo apt-get install -y msmtp
        sudo apt-get install -y mutt
    fi

    if [ "$3"="y" ];then
        sudo apt-get install -y gcc
        sudo apt-get install -y ffmpeg
        sudo apt-get install -y cmake
        sudo apt-get install -y xclip 
        sudo apt-get install -y font-manager
        sudo apt-get install -y minicom
        sudo apt-get install -y cutecom
        sudo apt-get install -y virtualbox
        sudo apt-get install -y filezilla
        sudo apt-get install -y gimp
        sudo apt-get install -y eclipse-platform
        sudo apt-get install -y copyq
        sudo apt-get install -y blender
        sudo apt-get install -y android-studio
        sudo apt-get install -y pycharm-community
        sudo apt-get install -y openshot-qt libopenshot*
    fi

    if [ "$4"="y" ];then
        sudo apt-get install -y dia
        sudo apt-get install -y codeblocks
        sudo apt-get install -y openshot
        sudo apt-get install -y kdenlive
        sudo apt-get install -y filezilla
        sudo apt-get install -y copyq
        sudo apt-get install -y amule
        sudo apt-get install -y dconf-tools 
        sudo apt-get install -y nano
        sudo apt-get install -y screen
        sudo apt-get install -y pdfgrep
        sudo apt-get install -y lame
        sudo apt-get install -y ghostscript
        sudo apt-get install -y pdftk
        sudo apt-get install -y mailutils
        sudo apt-get install -y sharutils
        sudo apt-get install -y ktorrent
    fi

elif [  -n "$(uname -a | grep -i centos)" ]; then
    echo centos system
    yum update
elif [  -n "$(uname -a | grep -i darwin)" ]; then
    echo mac system
else
    echo Unknown system
fi

