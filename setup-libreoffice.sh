#!/bin/sh

mkdir -p /tmp/libre
cd /tmp/libre
curl -OL http://download.documentfoundation.org/libreoffice/stable/5.4.0/rpm/x86_64/LibreOffice_5.4.0_Linux_x86-64_rpm.tar.gz
curl -OL http://download.documentfoundation.org/libreoffice/stable/5.4.0/rpm/x86_64/LibreOffice_5.4.0_Linux_x86-64_rpm_langpack_ja.tar.gz
tar xzf LibreOffice_5.4.0_Linux_x86-64_rpm.tar.gz
tar xzf LibreOffice_5.4.0_Linux_x86-64_rpm_langpack_ja.tar.gz
cd LibreOffice_5.4.0.3_Linux_x86-64_rpm/RPMS
yum -y install *.rpm
cd ../../LibreOffice_5.4.0.3_Linux_x86-64_rpm_langpack_ja/RPMS
yum -y install *.rpm
cd /tmp
rm -r /tmp/libre
echo LibreOffce install
