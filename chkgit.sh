#!/bin/bash

echo
echo "CHECKING $1..."

cd $1

git fsck --no-dangling --strict
if [ $? -ne 0 ]; then
    echo
    echo "$1 IS CORRUPT"
    read -rsp $'Press any key to continue...\n' -n 1
fi

cd ..

# END
