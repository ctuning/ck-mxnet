#! /bin/bash

#
# Installation script for Caffe.
#
# See CK LICENSE for licensing details.
# See CK COPYRIGHT for copyright details.
#
# Developer(s):
# - Grigori Fursin, 2015;
# - Anton Lokhmotov, 2016.
#

# PACKAGE_DIR
# INSTALL_DIR

echo "**************************************************************"
echo "Preparing vars for MxNet ..."

# Check extra stuff
export MXNET_LIB_DIR=${INSTALL_DIR}/lib

cd ${INSTALL_DIR}/src

make ${CK_MAKE_BEFORE} -j ${CK_HOST_CPU_NUMBER_OF_PROCESSORS} USE_OPENCV=${USE_OPENCV} USE_BLAS=${USE_BLAS}

return 0
