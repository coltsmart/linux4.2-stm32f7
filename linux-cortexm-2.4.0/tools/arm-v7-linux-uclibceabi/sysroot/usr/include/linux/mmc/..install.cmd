cmd_/home/build/fdpic/install/sysroot/usr/include/linux/mmc/.install := /bin/sh /home/build/fdpic/scratch/kernel/scripts/headers_install.sh /home/build/fdpic/install/sysroot/usr/include/linux/mmc /home/build/fdpic/scratch/kernel/include/uapi/linux/mmc ioctl.h; /bin/sh /home/build/fdpic/scratch/kernel/scripts/headers_install.sh /home/build/fdpic/install/sysroot/usr/include/linux/mmc /home/build/fdpic/scratch/kernel/include/linux/mmc ; /bin/sh /home/build/fdpic/scratch/kernel/scripts/headers_install.sh /home/build/fdpic/install/sysroot/usr/include/linux/mmc /home/build/fdpic/build/kernelheader/include/generated/uapi/linux/mmc ; for F in ; do echo "\#include <asm-generic/$$F>" > /home/build/fdpic/install/sysroot/usr/include/linux/mmc/$$F; done; touch /home/build/fdpic/install/sysroot/usr/include/linux/mmc/.install