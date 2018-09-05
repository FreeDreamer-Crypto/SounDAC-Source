#!/bin/sh

# Copy Config file if doesn't exist
if [ -f "${DATADIR}/config.ini" ]
  then
    echo
  else
    cp "${WORKDIR}/config.ini" ${DATADIR}
fi

exec "${BUILDDIR}/programs/mused" --replay-blockchain