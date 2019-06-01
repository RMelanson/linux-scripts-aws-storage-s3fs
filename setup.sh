#!/bin/bash
# Setup the required environment
. ./env/setEnv.sh $*

# COPY RESTORE 
cp $pkg_RESTORE.sh ..

# Download the required Development libraries
./installDevTools.sh
./installFuse.sh
./createS3fsPwdFile.sh $1 $2
./addS3fsAsService.sh
