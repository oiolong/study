i stuck in china 

it's so slow to updates downloading ....

so ... 

```
 
vim /etc/apt/sources.list

```
and add apt list blow

```
deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal main restricted universe multiverse
deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal-updates main restricted universe multiverse
deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal-backports main restricted universe multiverse
deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal-security main restricted universe multiverse

deb https://security.ubuntu.com/ubuntu xenial-security main
deb https://developer.download.nvidia.cn/compute/cuda/repos/ubuntu2004/x86_64/ /

```
