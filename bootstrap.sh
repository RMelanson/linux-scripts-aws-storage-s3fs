#!/bin/bash
s3fsCurrDir=$PWD
s3fsDir=/tmp/scripts/apps/S3FS
git clone https://github.com/RMelanson/linux-aws-scripts-utils-s3fs.git $s3fsDir
cd $s3fsDir
./setup.sh
cd $s3fsCurrDir
