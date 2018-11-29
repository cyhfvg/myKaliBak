#!/bin/bash

source ./util.sh

# 备份文件至../backupFiles下目录中
function fileBak(){
  # filepath <= $1 为需要备份的文件源地址
  filepath=$1
  if test -e $filepath 
  then
    # dest <= ../backupFiles 下创建相同目录结构
    # 转成真实路径
    dest=$(readlink -f ../backupFiles)${filepath%/*}/
    # dest=$(readlink -f ../overRideFiles)${filepath%/*}/
    # filename <= 文件名 
    filename=${filepath##*/}
    # 创建相同目录 复制
    mkdir -p ${dest} && cp ${filepath} ${dest}${filename}
    # 打印信息
    #cd ${dest} && echo backup to ${PWD}${filenames} 
    echo backup to ${dest}${filename}
  fi
}


# fileBak /etc/vim/vimrc.local
# function bakAll(){
  # fileBak /etc/vim/vimrc.local
  # fileBak /etc/vim/airline_theme.local
  # fileBak /etc/vim/aleplug.local
  # fileBak /etc/vim/nerdtree.local
  # fileBak /etc/vim/1.txt
  # fileBak /etc/vim/2.txt
  # fileBak /etc/vim/3.txt
  # fileBak /etc/vim/4.txt
# }
