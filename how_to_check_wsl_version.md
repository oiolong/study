source : https://github.com/microsoft/WSL/issues/4555#issuecomment-539674785

path ：~/check_wsl_version.sh


#!/bin/bash -
#title           :check_wsl_version.sh
#description     :This script will check windows wsl version
#author          :Allen
#date            :20210123
#version         :0.1
#usage           :sh check_wsl_version.sh
#notes           :source : https://github.com/microsoft/WSL/issues/4555#issuecomment-539674785
#bash_version    :1.1.0(1)-release




[ $(grep -oE 'gcc version ([0-9]+)' /proc/version | awk '{print $3}') -gt 5 ] && \
            echo "WSL2" || echo "WSL1"
