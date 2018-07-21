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

${CK_ENV_COMPILER_PYTHON_FILE} -m pip install --ignore-installed decorator tornado psutil wget -t ${EXTRA_PYTHON_SITE}  ${SYS}
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

mkdir build
cd build

# Update config.cmake
ck replace_strings_in_file misc --replacement_json_file=${TMP_TVM_CMAKE_UPDATE_FILE} \
                                --file=../src/cmake/config.cmake \
                                --file_out=config.cmake
if [ "${?}" != "0" ] ; then
  echo "Error: config.cmake update failed!"
  exit 1
fi

rm -f ${TMP_TVM_CMAKE_UPDATE_FILE}

cmake ../src
if [ "${?}" != "0" ] ; then
  echo "Error: cmake failed!"
  exit 1
fi

make -j ${CK_HOST_CPU_NUMBER_OF_PROCESSORS}
#      USE_OPENCL=${USE_OPENCL} \
#      USE_RPC=${USE_RPC} \
#      LLVM_CONFIG=${CK_LLVM_CONFIG} \

if [ "${?}" != "0" ] ; then
  echo "Error: make failed!"
  exit 1
fi
cd ${INSTALL_DIR}/src

return 0
