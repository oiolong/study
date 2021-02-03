#list all wsl 


```

wsl -l -v

  NAME            STATE           VERSION
* Ubuntu-18.04    Running         2


```

#shutdown and export tar

```
wsl --shutdown
wsl --export Ubuntu-18.04 D:\Ubuntu-18.04.tar

```
#init new folder u wanna use and import the tar to the folder

```

wslconfig /l
mkdir D:\wsl
mkdir D:\wsl\Ubuntu18.04
wsl --import Ubuntu-18.04 D:\wsl\Ubuntu18.04 D:\Ubuntu-18.04.tar --version 2


```

#remove old wsl

```

wslconfig /l
wslconfig /u Ubuntu-18.04

```



source:[Easily move WSL distributions between Windows 10 machines with import and export!](https://www.hanselman.com/blog/easily-move-wsl-distributions-between-windows-10-machines-with-import-and-export)
source:[WSL:install and uninstall](https://blog.csdn.net/zhangpeterx/article/details/97616268)

