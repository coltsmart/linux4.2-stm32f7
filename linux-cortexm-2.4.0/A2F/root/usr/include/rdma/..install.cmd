cmd_/work/psl/SF/release/linux-cortexm-2.4.0/A2F/root/usr//include/rdma/.install := /bin/sh scripts/headers_install.sh /work/psl/SF/release/linux-cortexm-2.4.0/A2F/root/usr//include/rdma ./include/uapi/rdma ib_user_cm.h ib_user_mad.h ib_user_sa.h ib_user_verbs.h rdma_netlink.h rdma_user_cm.h; /bin/sh scripts/headers_install.sh /work/psl/SF/release/linux-cortexm-2.4.0/A2F/root/usr//include/rdma ./include/rdma ; /bin/sh scripts/headers_install.sh /work/psl/SF/release/linux-cortexm-2.4.0/A2F/root/usr//include/rdma ./include/generated/uapi/rdma ; for F in ; do echo "\#include <asm-generic/$$F>" > /work/psl/SF/release/linux-cortexm-2.4.0/A2F/root/usr//include/rdma/$$F; done; touch /work/psl/SF/release/linux-cortexm-2.4.0/A2F/root/usr//include/rdma/.install