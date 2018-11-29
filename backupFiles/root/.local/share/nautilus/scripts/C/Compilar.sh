#!/bin/bash

case ${1#*.}
in
	c)
		GCC=`which gcc`
		$GCC "$1" -o "${1%%.*}" && {
			Xdialog --msgbox "Archivo compilado correctamente: \n${1%%.*}" 10 50
			exit 0;
		} || {
			Xdialog --msgbox "Compilaci�n fallida" 10 30
			exit 1;	
		}
		;;
	cpp)
		GPP=`which g++`
		$GPP "$1" -o "${1%%.*}" && {
			Xdialog --msgbox "Archivo compilado correctamente: \n${1%%.*}" 10 50
			exit 0;
		} || {
			Xdialog --msgbox "Compilaci�n fallida" 10 30
			exit 1;	
		}

		;;
	*)
		echo -e "Error, c�digo fuente no C � C++";
		exit 1;
esac
