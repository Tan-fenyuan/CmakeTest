#the project name

PROJECT(HELLO_VERSION_ONE)


#add subdir with src
ADD_SUBDIRECTORY(src bin)


#INSTALL
INSTALL(FILES COPYRIGHT README DESTINATION test/)

#DESTINATION + PATH

#eg:	${CMAKE_INSTALL_PREFIX} /<DESTINATION PATH> 
#  CMAKE_INSTALL_PREFIX = '/usr/local/'

# cmake -D CMAKE_INSTALL_PREFIX = /usr RUN CMAKE TIME designate 

#install shell.sh
INSTALL(PROGRAMS runhello.sh DESTINATION test/)
#INSTALL PATH = /usr/local/bin/...

#PROGRAMS + An executable installer for a non-target file


#install doc/hello.txt


INSTALL(DIRECTORY doc/ DESTINATION test/)

#DIRECTORY IS INSTALL DIR 

#install process
# eg
#	cmake ...
#	make
#	make install
