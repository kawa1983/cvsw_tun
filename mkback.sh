#!/bin/sh

INST_DIR=/lib/modules/`uname -r`/kernel/drivers/net

if [ $# -eq 1 ] && [ $1 = '-d' ]; then
    mv ${INST_DIR}/tun.ko.orig ${INST_DIR}/tun.ko
    exit 0
fi

if [ ! -e ${INST_DIR}/tun.ko.orig ]; then
    mv ${INST_DIR}/tun.ko ${INST_DIR}/tun.ko.orig
fi

cp $1 ${INST_DIR}/tun.ko

