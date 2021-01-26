
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

```
"http://username:password@yourproxyaddress:proxyport";
```

using username and password from the proxy server.


source: [configure proxy for apt](https://askubuntu.com/questions/257290/configure-proxy-for-apt)
	[setting up apt-get to use a proxy](https://help.ubuntu.com/community/AptGet/Howto/#Setting_up_apt-get_to_use_a_http-proxy)
