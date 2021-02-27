
I want to get the variables I set up in win10

and 

Why is this?


```

C:\Users\Allen> echo $PATH
C:\Users\Allen> echo PATH
PATH
C:\Users\Allen> echo %PATH%
%PATH%


```


PowerShell uses a different syntax than Windows Command Prompt.

Use $Env:Path or Get-ChildItem Env:Path to retrieve the PATH variable.


```

C:\Users\Allen> $Env:Path
D:\dev\python\python3.8\Scripts\;D:\dev\python\python3.8\;C:\Program Files\NVIDIA GPU Computing Toolkit\CUDA\v11.1\bin;C:\Program Files\NVIDIA GPU Computing Toolkit\CUDA\v11.1\libnvvp;C:\Windows\system32;C:\Windows;C:\Windows\System32\Wbem;C:\Windows\System32\WindowsPowerShell\v1.0\;C:\Windows\System32\OpenSSH\;C:\Program Files (x86)\NVIDIA Corporation\PhysX\Common;D:\dev\nodejs\;D:\dev\Go\bin;C:\ProgramData\chocolatey\bin;C:\Program Files\NVIDIA Corporation\NVIDIA NvDLISR;C:\WINDOWS\system32;C:\WINDOWS;C:\WINDOWS\System32\Wbem;C:\WINDOWS\System32\WindowsPowerShell\v1.0\;C:\WINDOWS\System32\OpenSSH\;C:\Program Files\dotnet\;C:\Program Files\Microsoft SQL Server\130\Tools\Binn\;C:\Program Files\Microsoft SQL Server\Client SDK\ODBC\170\Tools\Binn\;C:\Program Files\NVIDIA Corporation\Nsight Compute 2020.2.0\;C:\WINDOWS\system32;C:\WINDOWS;C:\WINDOWS\System32\Wbem;C:\WINDOWS\System32\WindowsPowerShell\v1.0\;C:\WINDOWS\System32\OpenSSH\;C:\Users\Allen\scoop\shims;C:\Users\Allen\AppData\Local\Microsoft\WindowsApps;D:\dev\nodejs\node_global;D:\dev\Microsoft VS Code\bin;C:\Users\Allen\go\bin;D:\dev\flutter\bin;C:\Users\Allen\AppData\Local\Microsoft\WindowsApps;C:\Users\Allen\.dotnet\tools;D:\dev\AndroidSDK\platform-tools;D:\dev\AndroidSDK\tools\bin;D:\dev\Android\jre\bin;D:\dev\AndroidSDK\tools;D:\dev\Android\jre\jre\bin;D:\msys64\usr\bin


```


Source:[Path Environment Variable Windows 10. Echo %Path% on command prompt shows only %Path% ](https://superuser.com/questions/1216658/path-environment-variable-windows-10-echo-path-on-command-prompt-shows-only)
[Windows PowerShell Tip: Creating and Modifying Environment Variables](https://docs.microsoft.com/en-us/previous-versions/windows/it-pro/windows-powershell-1.0/)
