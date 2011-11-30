#!/bin/bash
. $SCRIPTS_DIR/JPEG.env
cd $WRF_BASE/src/
cd ${DIR}
./configure --prefix=$JPEG_ROOT | tee ${APP}.${COMP}.config
make clean 2>&1 | tee ${APP}.${COMP}.clean
make 2>&1 | tee ${APP}.${COMP}.make
make check 2>&1 | tee ${APP}.${COMP}.check
make install 2>&1 | tee ${APP}.${COMP}.install
