#!/bin/bash
echo '
-------------------------------------------------------------------------
| Time	: Fri May  1 11:27:12 CST 2020
| Author: Melo.DC
| Email	: melo.dachar@gmail.com
| Func.	: install arm-none-eabi-gcc
| Param.: None
| Exam.	: 
------------------------------------------------------------------------
'

if [  -n "$(uname -a | grep -i ubuntu)" ]; then
    echo ubuntu system
    echo manual download:https://launchpad.net/gcc-arm-embedded/+download
    wget -P $dt/wget https://launchpad.net/gcc-arm-embedded/5.0/5-2016-q3-update/+download/gcc-arm-none-eabi-5_4-2016q3-20160926-linux.tar.bz2 
elif [  -n "$(uname -a | grep -i centos)" ]; then
    echo centos system
    yum update
elif [  -n "$(uname -a | grep -i darwin)" ]; then
    echo mac system
else
    echo Unknown system
fi

