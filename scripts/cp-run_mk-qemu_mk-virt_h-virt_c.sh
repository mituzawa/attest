ATTEST_DIR=$HOME/attest
GITHUB_DIR=$HOME/github

RUN_MK=keystone/mkutils/plat/generic/run.mk
QEMU_MK=keystone/buildroot/package/qemu/qemu.mk
VIRT_C=keystone/build-generic64/buildroot.build/build/host-qemu-7.2.1/hw/riscv/virt.c
VIRT_H=keystone/build-generic64/buildroot.build/build/host-qemu-7.2.1/include/hw/riscv/virt.h

if [ ! -f $GITHUB_DIR/${RUN_MK}_ORG ]; then
	mv $GITHUB_DIR/$RUN_MK{,_ORG}
	cp {$ATTEST_DIR,$GITHUB_DIR}/$RUN_MK
fi

if [ ! -f $GITHUB_DIR/${QEMU_MK}_ORG ]; then
	mv $GITHUB_DIR/$QEMU_MK{,_ORG}
	cp {$ATTEST_DIR,$GITHUB_DIR}/$QEMU_MK
fi

if [ ! -f $GITHUB_DIR/${VIRT_C}_ORG ]; then
	mv $GITHUB_DIR/$VIRT_C{,_ORG}
	cp {$ATTEST_DIR,$GITHUB_DIR}/$VIRT_C
fi

if [ ! -f $GITHUB_DIR/${VIRT_H}_ORG ]; then
	mv $GITHUB_DIR/$VIRT_H{,_ORG}
	cp {$ATTEST_DIR,$GITHUB_DIR}/$VIRT_H
fi
