#! /usr/bin/bash

#bash menu Script Example
echo -e "===============================================================================\e[5m\e[91m
 _______   ____________   ________ ___  _________   _____      _____ _____.___.
 \      \  \_____  \   \ /   /    |   \/   _____/  /     \    /  _  \\__  |   |
 /   |   \  /   |   \   Y   /|    |   /\_____  \  /  \ /  \  /  /_\  \/   |   |
/    |    \/    |    \     / |    |  / /        \/    Y    \/    |    \____   |
\____|__  /\_______  /\___/  |______/ /_______  /\____|__  /\____|__  / ______|
        \/         \/                         \/         \/         \/\/       \e[25m\e[39m 
==============================================================================="

PS3='Please enter your choice:'
options=("All install" "update" "groupinstall" "install epel-release nano" "install libaio" "rpmfusion-free-release-7.noarch.rpm" "install ffmpeg-devel" "install rsyslog" "install firewalld" "clear" "Quit" )

select opt in "${options[@]}"
do
	case $opt in
		"All install")
echo -e                                                                                  "
      _/_/    _/  _/      _/                        _/                _/  _/
   _/    _/  _/  _/          _/_/_/      _/_/_/  _/_/_/_/    _/_/_/  _/  _/ 
  _/_/_/_/  _/  _/      _/  _/    _/  _/_/        _/      _/    _/  _/  _/  
 _/    _/  _/  _/      _/  _/    _/      _/_/    _/      _/    _/  _/  _/   
_/    _/  _/  _/      _/  _/    _/  _/_/_/        _/_/    _/_/_/  _/  _/    \e[49m"
		PS3='Please enter your choice:'
		options1=("YES
===========================================			
INSTALL==> 1.update
INSTALL==> 2.groupinstall
INSTALL==> 3.install epel-release nano
INSTALL==> 4.install libaio
INSTALL==> 5.rpmfusion-free-release-7.noarch.rpm
INSTALL==> 6.install ffmpeg-devel
INSTALL==> 7.install rsyslog
INSTALL==> 8.install firewalld
===========================================
" "NO")
		select opt1 in "${options1[@]}"
		do
		case $opt1 in "YES(update, groupinstall, install epel-release nano, install libaio, rpmfusion-free-release-7.noarch.rpm ,install ffmpeg-devel,install rsyslog,install firewalld)")
		echo "update, groupinstall, install epel-release nano, install libaio, rpmfusion-free-release-7.noarch.rpm ,install ffmpeg-devel,install rsyslog,install firewalld"
		sudo yum -y update
		sudo yum -y groupinstall "Development Tools"
		sudo yum -y install epel-release nano
		sudo yum -y install libaio cairo-devel libjpeg-turbo-devel libjpeg-devel libpng-devel uuid-devel libtool freerdp-devel pango-devel libssh2-devel libtelnet-devel libvncserver-devel libwebsockets-devel pulseaudio-libs-devel openssl-devel libvorbis-devel libwebp-devel gnu-free-mono-fonts
		sudo rpm -Uvh rpmfusion-free-release-7.noarch.rpm  => 이 파일은 첨부합니다.
		sudo yum -y install ffmpeg-devel
		sudo yum -y install rsyslog
		sudo yum -y install firewalld
		;;
		"NO")
		echo "Back menu => ENTER KEY"
			break;;
		esac
		done
		;;	
		"update")
		echo "update"
		sudo yum -y update		
		;;
		"groupinstall")
		echo "groupinstall"
		sudo yum -y groupinstall "Development Tools"		
		;;
		"install epel-release nano")
		echo "install epel-release nano"
		sudo yum -y install epel-release nano
		;;
		"install libaio")
		echo "install libaio"
		sudo yum -y install libaio cairo-devel libjpeg-turbo-devel libjpeg-devel libpng-devel uuid-devel libtool freerdp-devel pango-devel libssh2-devel libtelnet-devel libvncserver-devel libwebsockets-devel pulseaudio-libs-devel openssl-devel libvorbis-devel libwebp-devel gnu-free-mono-fonts
		;;
		"rpmfusion-free-release-7.noarch.rpm")
		echo "rpmfusion-free-release-7.noarch.rpm"
		sudo rpm -Uvh rpmfusion-free-release-7.noarch.rpm
		;;
		"install ffmpeg-devel")
		echo "install ffmpeg-devel"
		sudo yum -y install ffmpeg-devel
		;;
		"install rsyslog")
		echo "install rsyslog"
		sudo yum -y install rsyslog
		;;
		"install firewalld")
  		echo "install firewalld"
		sudo yum -y install firewalld
		;;
		"clear")
		echo "clear"
		clear		
		;;
	        "Quit")
		break
		;;
		*)echo "invalid otpion $REPLY";;
	esac
done