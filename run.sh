#!/bin/bash

echo "THE START INSTALL ... "

#detect user directory

my_pwd=$(pwd)

echo "The path : ${my_pwd}"

file="$my_pwd/build"

if [ -e $file ]
then
	cd build/
	cmake ..
	make
	SRC_BIN="/home/tfy1/cmake02/build/bin/hello"
	if [ -e $SRC_BIN ]
	then
		make install
		SRC_BIN='/usr/local/test'
		if [ -e $SRC_BIN ]
		then
			SRC_DIR='/usr/local/test/runhello.sh'
			if [ -e $SRC_DIR ]
			then
				echo -e "THE INSTALL SUCCEED\n"
				echo -e "start run runhello.sh"
				cd /usr/local/test/
				./runhello.sh

			fi
		fi
	fi
else
	echo "Fatal error ,the dir $file does not exist!!!!"
fi
