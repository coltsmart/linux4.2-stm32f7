cmd_/home/build/fdpic/install/sysroot/usr/include/sound/.install := /bin/sh /home/build/fdpic/scratch/kernel/scripts/headers_install.sh /home/build/fdpic/install/sysroot/usr/include/sound /home/build/fdpic/scratch/kernel/include/uapi/sound asequencer.h asound.h asound_fm.h compress_offload.h compress_params.h emu10k1.h hdsp.h hdspm.h sb16_csp.h sfnt_info.h; /bin/sh /home/build/fdpic/scratch/kernel/scripts/headers_install.sh /home/build/fdpic/install/sysroot/usr/include/sound /home/build/fdpic/scratch/kernel/include/sound ; /bin/sh /home/build/fdpic/scratch/kernel/scripts/headers_install.sh /home/build/fdpic/install/sysroot/usr/include/sound /home/build/fdpic/build/kernelheader/include/generated/uapi/sound ; for F in ; do echo "\#include <asm-generic/$$F>" > /home/build/fdpic/install/sysroot/usr/include/sound/$$F; done; touch /home/build/fdpic/install/sysroot/usr/include/sound/.install