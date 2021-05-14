#!/bin/bash

cd /home/user888/simplepy

git status >/dev/null 2>&1
[ $(echo $?) -eq 0 ] && echo "Updating ${dir%*/}..." && git pull


