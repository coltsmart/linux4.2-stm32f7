cmd_/home/build/fdpic/install/sysroot/usr/include/scsi/.install := /bin/sh /home/build/fdpic/scratch/kernel/scripts/headers_install.sh /home/build/fdpic/install/sysroot/usr/include/scsi /home/build/fdpic/scratch/kernel/include/uapi/scsi scsi_bsg_fc.h scsi_netlink.h scsi_netlink_fc.h; /bin/sh /home/build/fdpic/scratch/kernel/scripts/headers_install.sh /home/build/fdpic/install/sysroot/usr/include/scsi /home/build/fdpic/scratch/kernel/include/scsi ; /bin/sh /home/build/fdpic/scratch/kernel/scripts/headers_install.sh /home/build/fdpic/install/sysroot/usr/include/scsi /home/build/fdpic/build/kernelheader/include/generated/uapi/scsi ; for F in ; do echo "\#include <asm-generic/$$F>" > /home/build/fdpic/install/sysroot/usr/include/scsi/$$F; done; touch /home/build/fdpic/install/sysroot/usr/include/scsi/.install