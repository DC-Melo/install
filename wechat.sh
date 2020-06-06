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
    # sudo apt-get update && sudo apt-get upgrade
    git clone https://gitee.com/wszqkzqk/deepin-wine-for-ubuntu.git $dtl/git
    cd $dtl/git/deepin-wine-for-ubuntu
    ./install.sh
    wget -P $dtl/wget http://mirrors.aliyun.com/deepin/pool/non-free/d/deepin.com.weixin.work/deepin.com.weixin.work_2.4.16.1347deepin0_i386.deb
    wget -P $dtl/wget http://mirrors.aliyun.com/deepin/pool/non-free/d/deepin.com.wechat/deepin.com.wechat_2.6.8.65deepin0_i386.deb
    wget -P $dtl/wget http://mirrors.aliyun.com/deepin/pool/non-free/d/deepin.com.wechat/deepin.com.wechat_2.6.2.31deepin0_i386.deb
    sudo dpkg -i $dtl/wget/deepin.com.weixin.work_2.4.16.1347deepin0_i386.deb/
    sudo dpkg -i $dtl/wget/ddeepin.com.wechat_2.6.8.65deepin0_i386.deb             
    unzip -d ~/.deepinwine/Deepin-WXWork/drive_c/windows/Fonts $dtl/download-small/simsun.zip
    unzip -d ~/.deepinwine/Deepin-WeChat/drive_c/windows/Fonts $dtl/download-small/simsun.zip
elif [  -n "$(uname -a | grep -i centos)" ]; then
    yum update
elif [  -n "$(uname -a | grep -i darwin)" ]; then
    brew install mutt
else
    echo Unknown system
fi

echo copy .mutt to home folder
