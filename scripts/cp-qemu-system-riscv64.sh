#!/bin/bash

set -x

cd ~/github/keystone/build-generic64/buildroot.build
cp -a host/bin/qemu-system-riscv64 host/bin/qemu-system-riscv64.bak-$(date +%Y%m%d-%H%M%S)
cp -a per-package/host-qemu/host/bin/qemu-system-riscv64 host/bin/qemu-system-riscv64
