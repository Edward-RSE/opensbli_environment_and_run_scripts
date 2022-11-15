#!/bin/bash
if [ $# -eq 0 ]
then
    echo "This script will compile the C/C++ code generated by OpenSBLI!"
    echo "Usage: ./CompileC.sh"
    echo "EnvDir: the directory for the environment."
    echo "The compiling process needs Python3!"
    exit 1
fi
cmake ../ -DOPS_INSTALL_DIR=$1/OPS-INSTALL -DOPS_TEST=OFF -DAPP_INSTALL_DIR=$HOME/OPS-APP -DGPU_NUMBER=1