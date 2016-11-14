#!/bin/bash

CMD=`which chkgit.sh`

if [ -z $1 ]; then
    LOOKUP="."
else
    LOOKUP=$1
fi

echo $LOOKUP

find $LOOKUP -maxdepth 1 -type d -exec $CMD '{}' \;

# END
