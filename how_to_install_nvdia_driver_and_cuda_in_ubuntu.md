if u wanna run tensorflow in wsl ( windows subsystem for Linux )

i list what i need to do 

1. upgrade wsl to wsl2
+
*
*
9.



prob

the wsl can not install Cuda


Cuda can not be installe


issue url https://github.com/Microsoft/WSL/issues/327


so let's install Cuda



https://github.com/Microsoft/WSL/issues/327





goto nvidia to download gpu driver


Download and install the NVIDIA CUDA-enabled driver for WSL to use with your existing CUDA ML workflows.



https://docs.microsoft.com/en-us/windows/wsl/install-win10
https://docs.microsoft.com/zh-cn/windows/wsl/install-win10

1.

The wsl --install simplified install command requires that you join the Windows Insiders Program and install a preview build of Windows 10 (OS build 20262 or higher), but eliminates the need to follow the manual install steps. All you need to do is open a command window with administrator privileges and run wsl --install, after a restart you will be ready to use WSL.

加入Windows Insider Program ( Windows 预览体验计划)

2.

Run the commands blow

 
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
wsl --set-version Ubuntu-20.04 2

wsl -l -v


- [ ] 没选中的复选框
- [x] 选中复选框





