
I have a small 128GB SSD. I run out of space when I install ReactNative related dev tools. So I wanted to find a way to install/move my existing distro to different location than C drive.

Move WSL to another drive
- Using the WSL command line tool



If you are using Windows 10 version 1903 (April 2019 Update) or later, you can try the WSL command line tool with the export and import options. If you are using an older Windows 10 version, you can move the distribution to another drive using lxRunOffline.

Using the WSL command line tool
In Windows 10 version 1903 (April 2019 Update) or later, you can use the wsl.exe command line tool.

1. Export the distribution. Create a .tar file with the distribution to move using wsl.exe --export

wsl.exe --export <DistributionName> <Tar-FileName>
For instance, to export an Ubuntu distribution, you can use
```

C:\> wsl.exe --export Ubuntu c:\data\ubuntu.tar

```

2. Import the distribution into the target folder. Then, you can import the exported distribution into another folder

wsl.exe --import <DistributionName> <Folder-To-Install> <Tar-FileName>
For instance, to import the exported Ubuntu into a new UbuntuCustom distribution, you can use

```

C:\> wsl.exe --import UbuntuCustom d:\wsl\UbuntuCustom c:\data\ubuntu.tar

```


NOTE: You may check an script for moving WSL distros that use these commands at https://github.com/pxlrbt/move-wsl





- Install LxRunOffline tool. 


```

choco install lxrunoffline

```

- List all wsls


```

lxrunoffline list 

```


List all the installed distros on your system. I get output like this.



```

lxrunoffline move -n Ubuntu-18.04 -d D:\wsl\ 

```

. Move your distro to another drive. My distro name here is Ubuntu-18.04. I am moving it to G drive and wsl folder inside it. It would take some time to finish moving.


source:
https://stackoverflow.com/questions/38779801/move-wsl-bash-on-windows-root-filesystem-to-another-hard-drive?answertab=votes#tab-top


https://dev.to/kapilgorve/move-install-wsl-distro-from-c-drive-to-another-drive-19g9
