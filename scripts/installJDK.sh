#!/bin/bash
# name: installJDK.sh
# author: jafamo
#
# Requeriments: curl and config sudo
#
# 
# Doc: This script download the version 1.8.65 from Oracle web page.
#		Install and configure JDK for Debian.
#		This JDK contains JRE.
# 
#


###CONFIG JDK
echo "Hi User: $USER"
echo "This script download and install JDK in your system."
echo 
echo

echo "1.- Download JDK version:"
#Download the version 1.8.65
curl -L -O -H "Cookie: oraclelicense=accept-securebackup-cookie" -k "http://download.oracle.com/otn-pub/java/jdk/8u65-b17/jdk-8u65-linux-x64.tar.gz"

#Create directory install jdk
sudo mkdir -pv /opt/java_se/java/

#decompress and copy 
sudo tar xzvf jdk-8u65-linux-x64.tar.gz -C /opt/java_se/java/

#Create link for updates 
sudo ln -sv /opt/java_se/java/* /opt/java_se/JAVA-ORACLE

# Install update alternative Java.
sudo update-alternatives --install /usr/bin/java java /opt/java_se/JAVA-ORACLE/bin/java 1200

#Config alternative.
sudo update-alternatives --config java


##Config Javac

#config compiler javac
sudo update-alternatives --install /usr/bin/javac javac /opt/java_se/JAVA-ORACLE/bin/javac 1200

#  Config alternative javac
sudo update-alternatives --config javac

echo
echo "Do you want add PATH in .exports?"
echo "Select  (Y / N) "
read op

if [ "$option" == "Y" ]; then
	echo "You export PATH in your $HOME.exports"
	#echo "export PATH=$PATH:/opt/java_se/JAVA-ORACLE/bin  "
	echo 'export PATH=$PATH:/opt/java_se/JAVA-ORACLE/bin ' >> $HOME.exports
	#You need export PATH in bashrc for users
	
	echo "Version java: "
	java -version
	echo
	echo "Version javac"
	javac -version
	echo
else
	echo "You didn't."
fi


### CONFIG PLUGINS MOZILLA
echo 
echo "CONFIG PLUGIN MOZILLA"
echo
echo "Do you want install plugins for mozilla? "
echo "write Y/N"
read option
if [ "$option" == "Y" ]; then
		#Create a directory 
	sudo mkdir -pv /usr/lib/mozilla/plugins

	#symbolic link 
	sudo ln -sv /opt/java_se/JAVA-ORACLE/jre/lib/amd64/libnpjp2.so /usr/lib/mozilla/plugins

	#Install in user Home
	mkdir -pv $HOME/.mozilla/plugins

	#create a symbolic link
	ln -sv /opt/java_se/JAVA-ORACLE/jre/lib/amd64/libnpjp2.so $HOME/.mozilla/plugins

	echo "You installed plugins."
else
	echo "NO, you didn't."
fi


