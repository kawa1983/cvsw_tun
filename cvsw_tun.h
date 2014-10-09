/*
 * cvsw_tun.h : TUN/TAP CVSW-extention
 * 
 * Copyright 2014 Ryota Kawashima <kawa1983@ieee.org> Nagoya Institute of Technology
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License along
 * with this program; if not, write to the Free Software Foundation, Inc.,
 * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
 */

#ifndef __CVSW_TUN_INCLUDED__
#define __CVSW_TUN_INCLUDED__

#define VIRTIO_NET_HDR_GSO_UDP_TUNNEL     0x20

#define VIRTIO_NET_HDR_GSO_GRE_TUNNEL     0x40

#endif /* __CVSW_TUN_INCLUDED__ */
