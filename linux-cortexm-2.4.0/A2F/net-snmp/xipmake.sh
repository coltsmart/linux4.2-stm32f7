#!/bin/sh

A2F_APPS8K="snmpget snmpset"
A2F_APPS64K="snmptrap snmptrapd"
A2F_AGENT128K="snmpd"
A2F_CPREFIX=arm-v7-linux-uclibceabi
A2F_FLTHDR=fdpichdr

#configure
CFLAGS="-Os -static" \
LDFLAGS="-static" \
./configure --host=${A2F_CPREFIX}		\
	--build=i386-linux			\
	--disable-debugging			\
	--disable-shared			\
	--enable-mini-agent			\
	--with-transports=UDP			\
	--disable-mib-loading			\
	--disable-manuals			\
	--disable-scripts			\
	--disable-mibs				\
	--with-security-modules=		\
	--disable-des				\
	--disable-privacy			\
	--disable-md5				\
	--with-out-transports="TCP TCPBase"	\
	--with-default-snmp-version=2		\
	--with-sys-contact=admin@no.where	\
	--with-sys-location=Unknown		\
	--prefix=/usr		\
	--with-logfile=/var/log/snmpd.log	\
	--with-persistent-directory=/var/lib/snmp

# make
make

# Hack - rebuilds some of apps as true static.
sh xipstatic.sh

# install
make DESTDIR=${INSTALL_ROOT}/A2F/xiproot install

# raise stack of programs
for app in ${A2F_APPS8K}
do
        ${A2F_FLTHDR} -s 8192 ${INSTALL_ROOT}/A2F/xiproot/usr/bin/${app}
        ${A2F_FLTHDR} -s 65536 ${INSTALL_ROOT}/A2F/xiproot/usr/sbin/${app}
done

for app in ${A2F_APPS64K}
do
       ${A2F_FLTHDR} -s 65536 ${INSTALL_ROOT}/A2F/xiproot/usr/bin/${app}
       ${A2F_FLTHDR} -s 65536 ${INSTALL_ROOT}/A2F/xiproot/usr/sbin/${app}
done

for app in ${A2F_AGENT128K}
do
       ${A2F_FLTHDR} -s 131072 ${INSTALL_ROOT}/A2F/xiproot/usr/sbin/${app}
done

${A2F_CPREFIX}-strip -s ${INSTALL_ROOT}/A2F/xiproot/usr/bin/snmp*
${A2F_CPREFIX}-strip -s ${INSTALL_ROOT}/A2F/xiproot/usr/sbin/snmp*


# clean
##make clean

