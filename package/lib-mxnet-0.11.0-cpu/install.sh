#! /bin/bash

# CK installation script for TensorFlow package
#
# Developer(s):
#  * Grigori Fursin, dividiti/cTuning foundation
#

# PACKAGE_DIR
# INSTALL_DIR
# TENSORFLOW_URL

export MXNET_LIB_DIR=${INSTALL_DIR}/lib

echo ""
echo "Removing '${MXNET_LIB_DIR}' ..."
rm -rf ${MXNET_LIB_DIR}

######################################################################################
# Print info about possible issues
echo ""
echo "Note that you sometimes need to upgrade your pip to the latest version"
echo "to avoid well-known issues with user/system space installation:"

echo ""
read -r -p "Install OpenCV and other dependencies via sudo pip (Y/n)? " x

case "$x" in
  [nN][oO]|[nN])
    ;;
  *)
    sudo ${CK_PYTHON_PIP_BIN} install --upgrade pip
    sudo ${CK_PYTHON_PIP_BIN} install requests matplotlib jupyter opencv-python
    if [ "${CK_PYTHON_VER3}" == "YES" ] ; then
      sudo apt-get install python3-tk
    else
      sudo apt-get install python-tk
    fi 
    ;;
esac

######################################################################################
echo ""
echo "Downloading and installing TensorFlow prebuilt binaries (${TF_PYTHON_URL}) ..."
echo ""

${CK_PYTHON_PIP_BIN} install mxnet${MXNET_EXTRA}==${MXNET_PACKAGE_VER} -t ${INSTALL_DIR}/lib
if [ "${?}" != "0" ] ; then
  echo "Error: installation failed!"
  exit 1
fi

exit 0
