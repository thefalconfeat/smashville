#!/bin/bash
#Author: thefalconfeat@gmail.com
#Usage: zipAndFtp folder_path ftp_location username password
#Will zip the folders/files under the folder_path and then ftp each zipped file.
#Will delete the original and zipped file as well in the end

#load the ftp script
. ./ftpFile.sh;
#load the zip script
. ./zipFile.sh;

input_folder=$1;
ftp_loc=$2;
ftp_usr=$3;
ftp_pas=$4;
ftp_path=$5;

cd $input_folder;

for subDir in *
do
  echo "The directory is $subDir"
  zippedFile="";
  zipFile $subDir $zippedFile
  ftpFile $zippedFile $ftp_loc $ftp_usr $ftp_pas $ftp_path;
  echo "Removing the zipped file $zippedFile"
  rm -rf $zippedFile;
  echo "Removing the original file $subDir"
  rm -rf $subDir;
done;
