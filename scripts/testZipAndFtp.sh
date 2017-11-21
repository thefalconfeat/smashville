#!/bin/bash
#Author: thefalconfeat@gmail.com
#Usage: This is a test script to verify the ftp and zip functionality

#test folder setup
rm -rf ./testF
cp -r ./testSingle ./testF

ftp_loc=ftp_location;
ftp_usr=username;
ftp_pas=password;
ftp_path=/var/save

#load the ftp script
. ./ftpFile.sh;
#load the zip script
. ./zipFile.sh;

./zipAndFtp.sh testF ftp_loc ftp_usr ftp_pas ftp_path 

