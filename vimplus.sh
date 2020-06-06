#!/bin/bash
echo '
-------------------------------------------------------------------------
| Time	: Wed Apr 29 21:50:24 CST 2020
| Author: Melo.DC
| Email	: melo.dachar@gmail.com
| Func.	: install vimplus
| Param.: None
| Exam.	: 
------------------------------------------------------------------------
'

if [  -n "$(uname -a | grep -i ubuntu)" ]; then
    # 版本要求
    # ubuntu16.04及其以上系统。
    # ERROR: Unable to find executable 'cmake'. CMake is required to build ycmd
    sudo apt-get install cmake -y
    # CMake Error at ycm/CMakeLists.txt:330 (message):
    # Using Clang completer, but no libclang found. Try setting
    # EXTERNAL_LIBCLANG_PATH or revise your configuration
    sudo apt-get install libclang-dev -y
    # handle vim system clipboard
    sudo apt-get install vim vim-scripts vim-gtk # vim-gnome
    # vim-gnome has been removed from the repositories for 19.10. However, the gtk3 version is available and is pretty much the same package.
    sudo apt install vim-gtk3
    # fatal error: Python.h: No such file or directory
    # compilation terminated.
    # ycm/CMakeFiles/ycm_core.dir/build.make:182: recipe for target 'ycm/CMakeFiles/ycm_core.dir/ClangCompleter/ClangHelpers.cpp.o' failed
    # A: 安装python开发库
    sudo apt-get install libpython-dev -y
    sudo apt-get update
    sudo apt-get install -y build-essential
    # 安装vimplus(建议在普通用户下安装)
    git clone https://github.com/chxuan/vimplus.git ~/.vimplus
    cd ~/.vimplus
    ./install.sh
elif [  -n "$(uname -a | grep -i centos)" ]; then
    # 版本要求
    # centos7及其以上系统。
    # 安装vimplus(建议在普通用户下安装)
    git clone https://github.com/chxuan/vimplus.git ~/.vimplus
    cd ~/.vimplus
    ./install.sh
elif [  -n "$(uname -a | grep -i darwin)" ]; then
    # 安装HomeBrew
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    # 安装vimplus
    git clone https://github.com/chxuan/vimplus.git ~/.vimplus
    cd ~/.vimplus
    ./install.sh
else
    echo Unknown system
fi

# Q & A
# 安装vimplus后Airline等插件有乱码，怎么解决？
# linux和mac系统需设置终端字体为Droid Sans Mono Nerd Font。

