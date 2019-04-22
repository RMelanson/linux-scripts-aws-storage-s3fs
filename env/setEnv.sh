#!/bin/bash

# S3FS CONFIGURATION PARAMETERS
bootstrap="s3fsBootstrap.sh"
gitRepo="linux-aws-scripts-utils-s3fs.git"

#SET UP INSTALLATION DIRECTORY
pkg=S3FS
scriptType="apps"
parentDir="/tmp/scripts/$scriptType/"
installDir="$parentDir/$pkg"
