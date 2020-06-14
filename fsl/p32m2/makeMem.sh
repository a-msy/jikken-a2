#!/bin/sh
#
# USAGE ./makeMem.sh input.s
#
if [ "x$1" == "x" ]; then
    echo "USAGE: ./makeMem.sh file.s"
    exit -1
fi
echo "makeMem $1"

cp $1.text.0.mem text.0.mem
cp $1.text.1.mem text.1.mem
cp $1.text.2.mem text.2.mem
cp $1.text.3.mem text.3.mem

cp $1.data.0.mem data.0.mem
cp $1.data.1.mem data.1.mem
cp $1.data.2.mem data.2.mem
cp $1.data.3.mem data.3.mem

exit 0
