# Makefile for cvsw_tun driver
# 
# Copyright 2014 Ryota Kawashima <kawa1983@ieee.org> Nagoya Institute of Technology
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License along
# with this program; if not, write to the Free Software Foundation, Inc.,
# 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
#

#ifndef DIST_DIR
  DIST_DIR:= `./dist.sh`
#endif

INST_DIR=/lib/modules/`uname -r`/kernel/drivers/net


TARGET:= cvsw_tun.ko

CFILES = distributions/${DIST_DIR}/cvsw_tun.c

cvsw_tun-objs:= $(CFILES:.c=.o)

all: ${TARGET}

install:
	./mkback.sh ${TARGET}

uninstall:
	./mkback.sh -d

cvsw_tun.ko: $(CFILES)
	make -C /lib/modules/`uname -r`/build M=`pwd` V=1 modules DIST_DIR=${DIST_DIR}

clean:
	make -C /lib/modules/`uname -r`/build M=`pwd` V=1 clean

obj-m:= cvsw_tun.o

distributions/${DIST_DIR}/cvsw_tun.c: cvsw_tun.h

clean-files := *.o *.ko *.mod.[co] *~

