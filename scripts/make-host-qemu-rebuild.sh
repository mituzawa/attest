cd $HOME/github/keystone/build-generic64/buildroot.build

KEYSTONE=$HOME/github/keystone \
KEYSTONE_BOOTROM=$HOME/github/keystone/bootrom \
KEYSTONE_SM=$HOME/github/keystone/sm \
KEYSTONE_SDK=$HOME/github/keystone/sdk \
KEYSTONE_RUNTIME=$HOME/github/keystone/runtime \
KEYSTONE_DRIVER=$HOME/github/keystone/linux-keystone-driver \
KEYSTONE_EXAMPLES=$HOME/github/keystone/examples \
make host-qemu-rebuild V=1 2>&1 | tee host-qemu-rebuild.log
