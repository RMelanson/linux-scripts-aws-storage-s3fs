#!/bin/bash

# Download the required Development libraries
./installDevTools.sh
./installFuse.sh
./createS3fsPwdFile.sh $1 $2
./addS3fsAsService.sh
