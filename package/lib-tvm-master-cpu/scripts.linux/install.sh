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

######################################################################################
# Check if has --system option
${CK_ENV_COMPILER_PYTHON_FILE} -m pip install --help > tmp-pip-help.tmp
if grep -q "\-\-system" tmp-pip-help.tmp ; then
 SYS=" --system"
fi
rm -f tmp-pip-help.tmp

######################################################################################
echo "Downloading and installing deps ..."
echo ""

EXTRA_PYTHON_SITE=${INSTALL_DIR}/src/python

${CK_ENV_COMPILER_PYTHON_FILE} -m pip install --ignore-installed decorator tornado psutil xgboost wget \
                                                                 nose pylint numpy nose-timer cython scipy \
                                                                 -t ${EXTRA_PYTHON_SITE} ${SYS}
if [ "${?}" != "0" ] ; then
  echo "Error: installation failed!"
  exit 1
fi

echo "**************************************************************"
echo "Preparing vars for TVM ..."

# Check extra stuff
EXTRA_FLAGS=""

if [ "${BUILD_RPC_RUNTIME}" == "ON" ] ; then
  TVM_MAKE_TARGET=runtime
fi

cd ${INSTALL_DIR}

cd src

mkdir build
cd build

# Update config.cmake
cp -f ${TMP_TVM_CMAKE_UPDATE_FILE} ../config.cmake
if [ "${?}" != "0" ] ; then
  echo "Error: config.cmake update failed!"
  exit 1
fi

rm -f ${TMP_TVM_CMAKE_UPDATE_FILE}

cmake ..
if [ "${?}" != "0" ] ; then
  echo "Error: cmake failed!"
  exit 1
fi

make -j ${CK_HOST_CPU_NUMBER_OF_PROCESSORS}
if [ "${?}" != "0" ] ; then
  echo "Error: make failed!"
  exit 1
fi

return 0
