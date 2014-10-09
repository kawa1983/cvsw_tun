#!/bin/sh

VERSION=`uname -r`

if expr ${VERSION} : ".*el6" > /dev/null; then
	echo RHEL6
elif expr ${VERSION} : ".*el7" > /dev/null; then
	echo RHEL7
fi

