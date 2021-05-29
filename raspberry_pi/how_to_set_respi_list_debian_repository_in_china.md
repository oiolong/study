

I just installed my Pi 4 and was going to update the packages.

Unfortunately I live in China and the original repository download at 2 k/s here. I changed the repository in sources.list but I understood that also the debian repository in raspi.list must be changed. I tried to use some of the chinese mirrors indicated in the Raspbian mirrors list but they do not have the debian repository (it says the repository does not have a Release file)

So I change to the image source of Tsinghua in Raspberry 

```

deb http://mirrors.tuna.tsinghua.edu.cn/raspbian/raspbian/ stretch main contrib non-free rpi
deb-src http://mirrors.tuna.tsinghua.edu.cn/raspbian/raspbian/ stretch main contrib non-free rpi

```

after i changed

I wanna install opencv and i run


```


root@raspberrypi:~# apt install libjpeg-dev libtiff5-dev libjasper-dev libpng12-dev -y

The following packages have unmet dependencies:
libtiff5-dev : Depends: libjbig-dev but it is not going to be installed
Depends: libjpeg-dev
Depends: liblzma-dev but it is not going to be installed
Depends: libtiff5 (= 4.0.8-2+deb9u4) but 4.0.10-4 is to be installed
E: Unable to correct problems, you have held broken packages.


```


I try a few moments , and I found maybe the problem is in the mirros site

#Lesson 1 check your os veriosn before you change the mirros source . please


```console 

root@raspberrypi:~# cat /etc/debian_version
10.9


```

and check it out on the debian site [debian releases](https://www.debian.org/releases/)


```

Debian 10（buster） — 当前的稳定（stable）版
Debian 9（stretch） — 旧的稳定（oldstable）版，现有长期支持
Debian 8（jessie） — 更旧的稳定（oldoldstable）版，现有扩展长期支持


```


and 10.9 is buster version

so ...

change the source in /etc/apt/sources.list and  /etc/apt/sources.list.d/raspi.list


###/etc/apt/sources.list
```

deb http://mirrors.tuna.tsinghua.edu.cn/raspbian/raspbian/ buster main contrib non-free rpi
deb-src http://mirrors.tuna.tsinghua.edu.cn/raspbian/raspbian/ buster main contrib non-free rpi

```

###/etc/apt/sources.list.d/raspi.list


```

deb https://mirror.tuna.tsinghua.edu.cn/raspberrypi/ buster main ui
deb-src https://mirror.tuna.tsinghua.edu.cn/raspberrypi/ buster main ui


```

## apt update

``` console
root@raspberrypi:~# history
root@raspberrypi:~# apt update
root@raspberrypi:~# apt list --upgradable
root@raspberrypi:~# history
root@raspberrypi:~# sudo apt full-upgrade
root@raspberrypi:~# 

```
ok . it's work


source:[how_to_set_respi_list_debian_repository_in_china](https://blog.csdn.net/weixin_43894786/article/details/105642275)

[apt update](https://www.jianshu.com/p/93ef6bace0a4)
