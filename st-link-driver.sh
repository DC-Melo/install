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

# stlinkv2 安装步骤
echo install st-link driver
if [  -n "$(uname -a | grep -i ubuntu)" ]; then
    echo ubuntu system
    echo 环境：
    echo ubuntu14.04
    echo stm32F407VGT6
    echo 安装依赖环境：
    sudo apt-get install libusb-1.0
    sudo apt-get install cmake
    sudo apt-get install libgtk-3-dev
    sudo apt-get install build-essential pkg-config cmake autoconf automake autogen libusb-1.0
    echo 下载源码：
    git clone https://github.com/texane/stlink.git $dt/git/stlink
    # （如果没有安装git可以根据系统提示：apt-get install git安装）
    cd $dt/git/stlink
    make release
    # 该步骤系统可能会报错，类似于usb.c文件某参数未声明，打开对应的文件。发现该参数用于打印函数中，屏蔽掉打印语句即可。
    make debug
    cd build
    cmake -DCMAKE_BUILD_TYPE=Debug ..
    make
    cd Release
    sudo make install
    #  (回到stlink目录下)
    cd ../..
    sudo cp etc/udev/rules.d/*.rules /etc/udev/rules.d/
    udevadm control --reload-rules
    udevadm trigger
    #  （可选）/opt/bin添加到环境变量中 （这边应该添加可执行文件）
    # sudo vim ~/.bashrc在文件末尾添加: 
    # export PATH=$PATH:/opt/bin/
    # 其次我们安装完，使用可执行文件时系统无法找到动态库，这时候我们应该设置好我们的动态库：
    gedit /etc/ld.so.conf
    # 换行 添加上你的动态库地址
    # 加入一行我们动态库的地址，保存后，再运行：/sbin/ldconfig -v更新一下配置即可。
     
    echo 测试：
    # 重启后打开终端:
    st-info --version
    # 会看到类似如下提示:
    # v1.4.0-11-ga2a707e-dirty
    # //sudo st-flash write test.bin 0x8000000下载程序了














elif [  -n "$(uname -a | grep -i centos)" ]; then
    echo centos system
    yum update
elif [  -n "$(uname -a | grep -i darwin)" ]; then
    echo mac system
else
    echo Unknown system
fi

