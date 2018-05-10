#!/bin/bash
currDir=$PWD
s3fsDir=/tmp/scripts/apps/S3FS
git clone https://github.com/RMelanson/linux-aws-scripts-utils-s3fs.git $s3fsDir
cd $s3fsDir
chmod 744 setup.sh
./setup.sh
cd $currDir
