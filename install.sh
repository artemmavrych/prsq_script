#!/bin/sh
RETPATH=`pwd`
cp -a /usr/local/etc/squid/passwd ${RETPATH}/passwd_initialBackup
mkdir -p /usr/local/etc/squid
touch /usr/local/etc/squid/passwd
chmod +rwx /usr/local/etc/squid/passwd
mkdir /etc/proxyUsers
cd /etc/proxyUsers
mkdir backup
mkdir docx
mkdir bin
mkdir attributes
cp -a ${RETPATH}/bin/createUser /etc/proxyUsers/bin/createUser
cp -a ${RETPATH}/bin/deleteUser /etc/proxyUsers/bin/deleteUser
cp -a ${RETPATH}/bin/findUser /etc/proxyUsers/bin/findUser
cp -a ${RETPATH}/bin/modifyUser /etc/proxyUsers/bin/modifyUser
cp -a ${RETPATH}/bin/proxy /etc/proxyUsers/bin/proxy
cp -a ${RETPATH}/docx/attributes.docx /etc/proxyUsers/docx/attributes.docx
ln -s /etc/proxyUsers/bin/proxy /usr/local/bin/proxy
chmod +rwx /usr/local/bin/proxy
cp -a /usr/local/etc/squid/passwd /etc/proxyUsers/backup/passwd_firstBackup
echo "Proxy squid menu has been successfully installed!"
