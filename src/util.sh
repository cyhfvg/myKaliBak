#!/bin/bash

function dirIsExist(){
  if test -e ${1}
  then
    echo ${1} exist
  else
    echo ${1} not exist
    $(mkdir -p ${1})
  fi
}

function stringEdit(){
  echo ${1}
  echo $(expr match ${1} '\(/.*/\)') 
}


#stringEdit /etc/vim/vimrc.local
