#!/bin/bash

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

function filesGrant(){
  for file in `ls -a $1`
  do
    if [[ $file != "." && $file != ".." ]]
    then
      path=$1"/"$file
      if [ -d $path ]
      then
        # 目录 递归
        filesGrant $path
        elif [ -f $path ]
        then
        # 文件
        dir=$(readlink -f $path)
        dest=${dir##*overRideFiles}
        baksource=$dest
        # grant 之前先备份
        fileBak $baksource
        # grant
        cp $path $dest && echo \>grant to $baksource


      fi
    fi
    
  done
} 

filesGrant ../overRideFiles
