#!/bin/sh
if [ "x$CONTAINER_CORE_REQUEST" != "x" ]; then
   LIBSYSCONFCPUS="$CONTAINER_CORE_REQUEST"
   if [ ${LIBSYSCONFCPUS} -lt 2 ]; then
      LIBSYSCONFCPUS=2
   fi
   export LIBSYSCONFCPUS
fi
export LD_PRELOAD="/usr/local/lib/libsysconfcpus.so:$LD_PRELOAD"