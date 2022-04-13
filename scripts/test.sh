#!/bin/bash

# Unit test batch run script file for list.c
#
# authors Joseph Harrington (joseph.d.harrington.ug@dartmouth.edu)
#         Brian Provost (brian.r.provost.22@dartmouth.edu)
#         Tian Xia (tian.xia.ug@dartmouth.edu)

BUILD_DIR=../build

(cd ../ && make tests)

for f in ${BUILD_DIR}/*; do
    if [ ${f: -2} != ".o" ]; then
        bash runtest.sh "./$f"
    fi
done 