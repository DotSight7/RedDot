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
options=("SHIELD@HOME" "All install" "update" "groupinstall" "install epel-release nano" "install libaio" "rpmfusion-free-release-7.noarch.rpm" "install ffmpeg-devel" "install rsyslog" "install firewalld" "clear" "Quit" )

select opt in "${options[@]}"
do
	case $opt in
		"SHIELD@HOME")
echo -e "                                                   
 ███████╗██╗  ██╗██╗███████╗██╗     ██████╗  ██████╗ ██╗  ██╗ ██████╗ ███╗   ███╗███████╗
██╔════╝██║  ██║██║██╔════╝██║     ██╔══██╗██╔═══██╗██║  ██║██╔═══██╗████╗ ████║██╔════╝
███████╗███████║██║█████╗  ██║     ██║  ██║██║██╗██║███████║██║   ██║██╔████╔██║█████╗  
╚════██║██╔══██║██║██╔══╝  ██║     ██║  ██║██║██║██║██╔══██║██║   ██║██║╚██╔╝██║██╔══╝  
███████║██║  ██║██║███████╗███████╗██████╔╝╚█║████╔╝██║  ██║╚██████╔╝██║ ╚═╝ ██║███████╗
╚══════╝╚═╝  ╚═╝╚═╝╚══════╝╚══════╝╚═════╝  ╚╝╚═══╝ ╚═╝  ╚═╝ ╚═════╝ ╚═╝     ╚═╝╚══════╝
                                                                                        \e[49m"
		PS3='Please enter your choice:'
		options2=( "Help!!" "IP INTERFACE" "ifcfg" "Downlod SHIELD@HOME" "restart network" "Check package" 
			 "shieldathome.tar.gz" "shieldathome.install" "Edit" "NO")
		select opt2 in "${options2[@]}"
		do
		case $opt2 in 
		"Help!!")
		echo "
		1.login
		2.Check IP INTERFACE
		3.Check vi ifcfg-IP INTERFACE ONBOOT=no => ONBOOT=YES 
		4.network restart
		5.Check IP INTERFACE
		6.Shieldathome.tar.gz Downlod> /home tar xvf shieldathome.tar.gz
		7.Check shieldathome install.sh "
		;;

		"IP INTERFACE")
		echo "IP INTERFACE..."
		ip addr
		;;

		"ifcfg")
		echo "ifcfg..."
		vi /etc/sysconfig/network-scripts/ifcfg-ens33
		;;

		"Downlod SHIELD@HOME")
		echo "Downlod SHIELD@HOME >>> /Home"
		wget -P /home/ https://1drv.ms/u/s!Av_OyRX3WJVB8xH3ioS-m40nQM89?e=xzb4RA 
		;;

		"restart network")
		echo "restart network..."
		systemctl restart network
		;;

		"Check package properties")
		echo "Check package..."
		vi /home/app/tomcat9/webapps/workathome/WEB-INF/classes/properties/server.properties
		;;

        "shieldathome.tar.gz")
		echo "shieldathome.tar.gz"
        tar xvf shieldathome.tar.gz
		;;

        "shieldathome.install")
		echo "shieldathome.install"
        ./home/shieldathome/install.sh
		;;

		"tomcat restart")
		echo "tomcat restart & status tomcat..."
		systemctl restart tomcat
		systemctl status tomcat
		;;

		"Check package properties")
		echo "Check package..."
		cd /home/app/tomcat9/webapps/workathome/WEB-INF/classes/properties
		;;
		"Edit")
		echo "Edit..."
		vi Novus_Poc_install.sh 
		;;

		"NO")
		echo "Back menu => ENTER KEY or 12 exit..."
			break;;
		esac
		done
		;;




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
		sudo rpm -Uvh rpmfusion-free-release-7.noarch.rpm
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
