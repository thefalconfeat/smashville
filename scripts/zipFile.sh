#!/bin/bash
#Author: thefalconfeat@gmail.com
#Usage: zipFile file_to_be_zipped zipped_file_name
#Zips all the files under the given folder into single zip file.
function zipFile {
  echo "Zipping the file $1"
  local input=$1;
  eval "datestamp=$(date +'%y%m%d-%H%M%S')";
  eval "$2='archive-$datestamp-$input.zip'";
  echo "final zip file: $2"
  zip -r "$2" $input;
}