#!/bin/bash
echo '
-------------------------------------------------------------------------
| Time	: Fri May  1 11:27:12 CST 2020
| Author: Melo.DC
| Email	: melo.dachar@gmail.com
| Func.	: install st-link driver
| Param.: None
| Exam.	: 
------------------------------------------------------------------------
'
google-chrome https://www.st.com/content/st_com/zh/products/development-tools/software-development-tools/stm32-software-development-tools/stm32-configurators-and-code-generators/stm32cubemx.html#tools-software
echo download manual.and install
echo install st-link driver
if [  -n "$(uname -a | grep -i ubuntu)" ]; then
    echo ubuntu system
elif [  -n "$(uname -a | grep -i centos)" ]; then
    echo centos system
    yum update
elif [  -n "$(uname -a | grep -i darwin)" ]; then
    echo mac system
else
    echo Unknown system
fi

