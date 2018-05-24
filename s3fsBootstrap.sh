#!/bin/bash

#Set Cloning Properties
pkg=s3fs
gitRepo="linux-aws-scripts-utils-s3fs.git"
installDir="/tmp/scripts/apps/S3FS"
if [ -f ~/.ssh/gitHub.key ]; then
   clone="git clone git@github.com:RMelanson/"
else
   clone="git clone https://github.com/RMelanson/"
fi

# Clone $pkg
echo Executing $clone$gitRepo $installDir
$clone$gitRepo $installDir

# Setup $pkg
cd $installDir
. ./setup.sh

cd $s3fsCurrDir
