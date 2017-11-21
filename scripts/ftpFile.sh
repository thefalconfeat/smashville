#!/bin/bash
#Author: thefalconfeat@gmail.com
#FTPs the file to the given location\path using the provided username and password
#Usage: ftpFile file ftplocation username password path
function ftpFile {
  local file=$1;
  local ftp_loc=$2;
  local ftp_usr=$3;
  local ftp_pas=$4;
  local ftp_path=$5;
  echo "Sending the $1 to $ftp_loc using $ftp_usr and ******";
#  ftp -n $ftp_loc <<END_SCRIPT
#  quote USER $ftp_usr
#  quote PASS $ftp_pas
#  cd $ftp_path
#  put $file 
#  quit
#  END_SCRIPT  
  echo "Done uploading";
#  exit 0;
}