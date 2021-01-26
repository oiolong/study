
# config proxy for apt-get


APT configuration file method

This method uses the apt.conf file which is found in your /etc/apt/ directory. This method is useful if you only want apt-get (and not other applications) to use a http-proxy permanently.

On some installations there will be no apt-conf file set up. Edit apt-conf file (or create a new one if you have no one yet) using the editor of your choice.

```

sudo vim /etc/apt/apt.conf

```
Add this line to your /etc/apt/apt.conf file (substitute your details for yourproxyaddress and proxyport).

Acquire::http::Proxy "http://yourproxyaddress:proxyport";
Save the apt.conf file.

```

```

If your proxy needs a login/password, substitute:

```
"http://yourproxyaddress:proxyport";
```

with:
using username and password from the proxy server.

```
"http://username:password@yourproxyaddress:proxyport";
```


with:
using username and password from the https proxy server.

```

$ sudo vim /etc/apt/apt.conf

Acquire::http::Proxy "http://USERNAME:PASSWORD@SERVER:PORT";
Acquire::https::Proxy "https://USERNAME:PASSWORD@SERVER:PORT";

```


source: [configure proxy for apt](https://askubuntu.com/questions/257290/configure-proxy-for-apt)
	[setting up apt-get to use a proxy](https://help.ubuntu.com/community/AptGet/Howto/#Setting_up_apt-get_to_use_a_http-proxy)



# make vim default editor for git and ubuntu


To make vim the default editor for Git or your entire operating system. Firstly make sure that vim is installed and then you can choose one of the options below.

If you want to change Git default editor only use the following


```
$~ git config --global core.editor "vim"
```

If you want to change the default editor across the whole installation use this command
```
$~ sudo update-alternatives --config editor
There are 4 choices for the alternative editor (providing /usr/bin/editor).

  Selection    Path                Priority   Status
------------------------------------------------------------
* 0            /bin/nano            40        auto mode
  1            /bin/ed             -100       manual mode
  2            /bin/nano            40        manual mode
  3            /usr/bin/vim.basic   30        manual mode
  4            /usr/bin/vim.tiny    15        manual mode

Press <enter> to keep the current choice[*], or type selection number: 3
update-alternatives: using /usr/bin/vim.basic to provide /usr/bin/editor (editor) in manual mode

```

source : [make vim default editor for git and ubuntu](https://mail.purencool.digital/development/make-vim-default-editor-for-git-and-ubuntu)
 
