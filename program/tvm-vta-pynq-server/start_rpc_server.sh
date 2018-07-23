#!/bin/bash

echo "********************************************************************************"
echo "Local IP:"
echo ""

ifconfig eth0
echo "********************************************************************************"

${CK_ENV_COMPILER_PYTHON_FILE} -m tvm.exec.rpc_server
# --load-library ${CK_ENV_LIB_VTA_SERVER_LIB_FULL}
