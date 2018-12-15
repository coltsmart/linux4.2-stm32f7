cd apps
arm-v7-linux-uclibceabi-gcc -static -fno-strict-aliasing -Os -Uuclinux -Duclinux=uclinux -Wall -Wstrict-prototypes -Wwrite-strings -Wcast-qual -o snmptrap snmptrap.o  -L${INSTALL_ROOT}/A2F/net-snmp/snmplib/.libs -L${INSTALL_ROOT}/A2F/net-snmp/snmplib -L${INSTALL_ROOT}/A2F/net-snmp/agent/.libs -L${INSTALL_ROOT}/A2F/net-snmp/agent ../snmplib/.libs/libnetsnmp.a

arm-v7-linux-uclibceabi-gcc -static -fno-strict-aliasing -Os -Uuclinux -Duclinux=uclinux -Wall -Wstrict-prototypes -Wwrite-strings -Wcast-qual -o snmptrapd snmptrapd.o  -L${INSTALL_ROOT}/A2F/net-snmp/agent/.libs -L${INSTALL_ROOT}/A2F/net-snmp/snmplib/.libs ./.libs/libnetsnmptrapd.a ${INSTALL_ROOT}/A2F/net-snmp/agent/.libs/libnetsnmpmibs.a -L${INSTALL_ROOT}/A2F/net-snmp/snmplib -L${INSTALL_ROOT}/A2F/net-snmp/agent ../agent/.libs/libnetsnmpmibs.a ${INSTALL_ROOT}/A2F/net-snmp/agent/.libs/libnetsnmpagent.a ../agent/.libs/libnetsnmpagent.a ${INSTALL_ROOT}/A2F/net-snmp/snmplib/.libs/libnetsnmp.a ../snmplib/.libs/libnetsnmp.a

arm-v7-linux-uclibceabi-gcc -static -fno-strict-aliasing -Os -Uuclinux -Duclinux=uclinux -Wall -Wstrict-prototypes -Wwrite-strings -Wcast-qual -o snmpget snmpget.o  -L${INSTALL_ROOT}/A2F/net-snmp/snmplib/.libs -L${INSTALL_ROOT}/A2F/net-snmp/snmplib -L${INSTALL_ROOT}/A2F/net-snmp/agent/.libs -L${INSTALL_ROOT}/A2F/net-snmp/agent ../snmplib/.libs/libnetsnmp.a

arm-v7-linux-uclibceabi-gcc -static -fno-strict-aliasing -Os -Uuclinux -Duclinux=uclinux -Wall -Wstrict-prototypes -Wwrite-strings -Wcast-qual -o snmpset snmpset.o  -L${INSTALL_ROOT}/A2F/net-snmp/snmplib/.libs -L${INSTALL_ROOT}/A2F/net-snmp/snmplib -L${INSTALL_ROOT}/A2F/net-snmp/agent/.libs -L${INSTALL_ROOT}/A2F/net-snmp/agent ../snmplib/.libs/libnetsnmp.a

arm-v7-linux-uclibceabi-gcc -static -fno-strict-aliasing -Os -Uuclinux -Duclinux=uclinux -Wall -Wstrict-prototypes -Wwrite-strings -Wcast-qual -o snmpbulkwalk snmpbulkwalk.o  -L${INSTALL_ROOT}/A2F/net-snmp/snmplib/.libs -L${INSTALL_ROOT}/A2F/net-snmp/snmplib -L${INSTALL_ROOT}/A2F/net-snmp/agent/.libs -L${INSTALL_ROOT}/A2F/net-snmp/agent ../snmplib/.libs/libnetsnmp.a

arm-v7-linux-uclibceabi-gcc -static -fno-strict-aliasing -Os -Uuclinux -Duclinux=uclinux -Wall -Wstrict-prototypes -Wwrite-strings -Wcast-qual -o snmpbulkget snmpbulkget.o  -L${INSTALL_ROOT}/A2F/net-snmp/snmplib/.libs -L${INSTALL_ROOT}/A2F/net-snmp/snmplib -L${INSTALL_ROOT}/A2F/net-snmp/agent/.libs -L${INSTALL_ROOT}/A2F/net-snmp/agent ../snmplib/.libs/libnetsnmp.a

arm-v7-linux-uclibceabi-gcc -static -fno-strict-aliasing -Os -Uuclinux -Duclinux=uclinux -Wall -Wstrict-prototypes -Wwrite-strings -Wcast-qual -o snmpdelta snmpdelta.o  -L${INSTALL_ROOT}/A2F/net-snmp/snmplib/.libs -L${INSTALL_ROOT}/A2F/net-snmp/snmplib -L${INSTALL_ROOT}/A2F/net-snmp/agent/.libs -L${INSTALL_ROOT}/A2F/net-snmp/agent ../snmplib/.libs/libnetsnmp.a


arm-v7-linux-uclibceabi-gcc -static -fno-strict-aliasing -Os -Uuclinux -Duclinux=uclinux -Wall -Wstrict-prototypes -Wwrite-strings -Wcast-qual -o snmpdf snmpdf.o  -L${INSTALL_ROOT}/A2F/net-snmp/snmplib/.libs -L${INSTALL_ROOT}/A2F/net-snmp/snmplib -L${INSTALL_ROOT}/A2F/net-snmp/agent/.libs -L${INSTALL_ROOT}/A2F/net-snmp/agent ../snmplib/.libs/libnetsnmp.a

arm-v7-linux-uclibceabi-gcc -static -fno-strict-aliasing -Os -Uuclinux -Duclinux=uclinux -Wall -Wstrict-prototypes -Wwrite-strings -Wcast-qual -o snmpgetnext snmpgetnext.o  -L${INSTALL_ROOT}/A2F/net-snmp/snmplib/.libs -L${INSTALL_ROOT}/A2F/net-snmp/snmplib -L${INSTALL_ROOT}/A2F/net-snmp/agent/.libs -L${INSTALL_ROOT}/A2F/net-snmp/agent ../snmplib/.libs/libnetsnmp.a

arm-v7-linux-uclibceabi-gcc -static -fno-strict-aliasing -Os -Uuclinux -Duclinux=uclinux -Wall -Wstrict-prototypes -Wwrite-strings -Wcast-qual -o snmpstatus snmpstatus.o  -L${INSTALL_ROOT}/A2F/net-snmp/snmplib/.libs -L${INSTALL_ROOT}/A2F/net-snmp/snmplib -L${INSTALL_ROOT}/A2F/net-snmp/agent/.libs -L${INSTALL_ROOT}/A2F/net-snmp/agent ../snmplib/.libs/libnetsnmp.a

arm-v7-linux-uclibceabi-gcc -static -fno-strict-aliasing -Os -Uuclinux -Duclinux=uclinux -Wall -Wstrict-prototypes -Wwrite-strings -Wcast-qual -o snmptable snmptable.o  -L${INSTALL_ROOT}/A2F/net-snmp/snmplib/.libs -L${INSTALL_ROOT}/A2F/net-snmp/snmplib -L${INSTALL_ROOT}/A2F/net-snmp/agent/.libs -L${INSTALL_ROOT}/A2F/net-snmp/agent ../snmplib/.libs/libnetsnmp.a

arm-v7-linux-uclibceabi-gcc -static -fno-strict-aliasing -Os -Uuclinux -Duclinux=uclinux -Wall -Wstrict-prototypes -Wwrite-strings -Wcast-qual -o snmptest snmptest.o  -L${INSTALL_ROOT}/A2F/net-snmp/snmplib/.libs -L${INSTALL_ROOT}/A2F/net-snmp/snmplib -L${INSTALL_ROOT}/A2F/net-snmp/agent/.libs -L${INSTALL_ROOT}/A2F/net-snmp/agent ../snmplib/.libs/libnetsnmp.a


arm-v7-linux-uclibceabi-gcc -static -fno-strict-aliasing -Os -Uuclinux -Duclinux=uclinux -Wall -Wstrict-prototypes -Wwrite-strings -Wcast-qual -o snmptranslate snmptranslate.o  -L${INSTALL_ROOT}/A2F/net-snmp/snmplib/.libs -L${INSTALL_ROOT}/A2F/net-snmp/snmplib -L${INSTALL_ROOT}/A2F/net-snmp/agent/.libs -L${INSTALL_ROOT}/A2F/net-snmp/agent ../snmplib/.libs/libnetsnmp.a

arm-v7-linux-uclibceabi-gcc -static -fno-strict-aliasing -Os -Uuclinux -Duclinux=uclinux -Wall -Wstrict-prototypes -Wwrite-strings -Wcast-qual -o snmpusm snmpusm.o  -L${INSTALL_ROOT}/A2F/net-snmp/snmplib/.libs -L${INSTALL_ROOT}/A2F/net-snmp/snmplib -L${INSTALL_ROOT}/A2F/net-snmp/agent/.libs -L${INSTALL_ROOT}/A2F/net-snmp/agent ../snmplib/.libs/libnetsnmp.a

arm-v7-linux-uclibceabi-gcc -static -fno-strict-aliasing -Os -Uuclinux -Duclinux=uclinux -Wall -Wstrict-prototypes -Wwrite-strings -Wcast-qual -o snmpvacm snmpvacm.o  -L${INSTALL_ROOT}/A2F/net-snmp/snmplib/.libs -L${INSTALL_ROOT}/A2F/net-snmp/snmplib -L${INSTALL_ROOT}/A2F/net-snmp/agent/.libs -L${INSTALL_ROOT}/A2F/net-snmp/agent ../snmplib/.libs/libnetsnmp.a

arm-v7-linux-uclibceabi-gcc -static -fno-strict-aliasing -Os -Uuclinux -Duclinux=uclinux -Wall -Wstrict-prototypes -Wwrite-strings -Wcast-qual -o snmpwalk snmpwalk.o  -L${INSTALL_ROOT}/A2F/net-snmp/snmplib/.libs -L${INSTALL_ROOT}/A2F/net-snmp/snmplib -L${INSTALL_ROOT}/A2F/net-snmp/agent/.libs -L${INSTALL_ROOT}/A2F/net-snmp/agent ../snmplib/.libs/libnetsnmp.a

arm-v7-linux-uclibceabi-gcc -static -fno-strict-aliasing -Os -Uuclinux -Duclinux=uclinux -Wall -Wstrict-prototypes -Wwrite-strings -Wcast-qual -o encode_keychange encode_keychange.o  -L${INSTALL_ROOT}/A2F/net-snmp/snmplib/.libs -L${INSTALL_ROOT}/A2F/net-snmp/snmplib -L${INSTALL_ROOT}/A2F/net-snmp/agent/.libs -L${INSTALL_ROOT}/A2F/net-snmp/agent ../snmplib/.libs/libnetsnmp.a
cd -

cd apps/snmpnetstat
arm-v7-linux-uclibceabi-gcc -static -fno-strict-aliasing -Os -Uuclinux -Duclinux=uclinux -Wall -Wstrict-prototypes -Wwrite-strings -Wcast-qual -o snmpnetstat inet.o inet6.o if.o main.o route.o winstub.o ffs.o  ../../snmplib/.libs/libnetsnmp.a
cd -

cd agent
arm-v7-linux-uclibceabi-gcc -static -fno-strict-aliasing -Os -Uuclinux -Duclinux=uclinux -Wall -Wstrict-prototypes -Wwrite-strings -Wcast-qual -o snmpd snmpd.o  -L${INSTALL_ROOT}/A2F/net-snmp/agent/.libs -L${INSTALL_ROOT}/A2F/net-snmp/snmplib/.libs -L${INSTALL_ROOT}/A2F/net-snmp/snmplib ./.libs/libnetsnmpagent.a ./.libs/libnetsnmpmibs.a ${INSTALL_ROOT}/A2F/net-snmp/agent/.libs/libnetsnmpagent.a ${INSTALL_ROOT}/A2F/net-snmp/snmplib/.libs/libnetsnmp.a ../snmplib/.libs/libnetsnmp.a
cd -
