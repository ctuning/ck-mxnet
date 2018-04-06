#! /bin/bash

#
# CK installation script
#
# See CK LICENSE for licensing details.
# See CK COPYRIGHT for copyright details.
#
# Developer(s):
# - Grigori Fursin, 2018;
#

# PACKAGE_DIR
# INSTALL_DIR

echo "**************************************************************"
echo "Preparing vars for TVM ..."

# Check extra stuff
EXTRA_FLAGS=""

if [ "${BUILD_RPC_SERVER}" == "ON" ] ; then
  TVM_MAKE_TARGET=runtime
fi

cd ${INSTALL_DIR}/src
pwd 
make ${TVM_MAKE_TARGET} -j ${CK_HOST_CPU_NUMBER_OF_PROCESSORS} \
      USE_OPENCL=${USE_OPENCL} \
      USE_RPC=${USE_RPC} \
      LLVM_CONFIG=${CK_LLVM_CONFIG} \

if [ "${?}" != "0" ] ; then
  echo "Error: make failed!"
  exit 1
fi
cd ${INSTALL_DIR}/src

return 0
