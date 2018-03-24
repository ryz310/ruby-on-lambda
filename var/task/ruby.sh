#!/bin/sh
cd /var/task/app
export LD_LIBRARY_PATH=/var/task/lib
/var/task/lib/ld-musl-x86_64.so.1 /var/task/ruby/bin/ruby $*
