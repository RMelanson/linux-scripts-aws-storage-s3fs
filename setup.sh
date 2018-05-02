#!/bin/bash
fuseDir=/tmp/s3fs-fuse
callingDir=pwd
cd $installDir
pvtKey=AKIAILM6IJE5QG26I6CQ
pubKey=kQhOnXfkdSzoAVYoMPjE7lS+Fa7LrQeqkbcUr0b4

# Download the required Development libraries
#. ./devToolsInstall.sh
#!/bin/bash
yum groupinstall "Development Tools" -y
yum install curl-devel -y
yum install fuse-devel -y
yum install libxml2-devel -y
yum install openssl-devel -y

# Download the s3fs fuse libs
if [ ! -d "$fuseDir" ]
then
   s3fsInstDir=$PWD
   cd /tmp
   git clone https://github.com/s3fs-fuse/s3fs-fuse.git
   # Build, Configure snd install s3fs
   cd $fuseDir
   ./autogen.sh
   ./configure
   make
   make install
   cd $s3fsInstDir
fi

# add the s3fs access credentials built from IAM with s3 full access rights
echo $pvtKey:pubKey > /etc/passwd-s3fs
#chown root:root /etc/passwd-s3fs
chmod 600 /etc/passwd-s3fs

echo y | cp passwd-s3fs /etc

#Set s3fs as an init.d service
#rm -rf /etc/init.d/s3fsMounts /etc/init.d/s3fs*

#install required unix files directly
rsync -avhu --progress Source Destination linux/* /

chkconfig s3fs on
service s3fs start
