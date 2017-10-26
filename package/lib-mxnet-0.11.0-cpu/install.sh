#! /bin/bash

# CK installation script for TensorFlow package
#
# Developer(s):
#  * Grigori Fursin, dividiti/cTuning foundation
#

# PACKAGE_DIR
# INSTALL_DIR
# TENSORFLOW_URL

export TENSORFLOW_LIB_DIR=${INSTALL_DIR}/lib

######################################################################################
echo ""
echo "Removing '${TENSORFLOW_LIB_DIR}' ..."
rm -rf ${TENSORFLOW_LIB_DIR}

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
    sudo ${CK_PYTHON_PIP_BIN} install --upgrade pip opencv-python easydict image joblib
    ;;
esac

######################################################################################
echo ""
echo "Downloading and installing TensorFlow prebuilt binaries (${TF_PYTHON_URL}) ..."
echo ""

${CK_PYTHON_PIP_BIN} install --upgrade ${TF_PYTHON_URL} -t ${TENSORFLOW_LIB_DIR} --trusted-host storage.googleapis.com
if [ "${?}" != "0" ] ; then
  echo "Error: installation failed!"
  exit 1
fi

exit 0
