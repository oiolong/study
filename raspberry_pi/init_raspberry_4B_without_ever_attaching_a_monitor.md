







```


country=US
ctrl_interface=DIR=/var/run/wpa_supplicant GROUP=netdev
update_config=1

network={
scan_ssid=1
ssid="your_wifi_ssid"
psk="your_wifi_password"
}



```


```

vi /etc/apt/sources.list

```

```

deb http://mirrors.tuna.tsinghua.edu.cn/raspbian/raspbian/ stretch main contrib non-free rpi
deb-src http://mirrors.tuna.tsinghua.edu.cn/raspbian/raspbian/ stretch main contrib non-free rpi


```


```
vi /etc/apt/sources.list.d/raspi.list
```


```
deb http://mirror.tuna.tsinghua.edu.cn/raspberrypi/ stretch main ui
deb-src http://mirror.tuna.tsinghua.edu.cn/raspberrypi/ stretch main ui

```

```
apt-get upgrade
apt-get update


```





#set up static ip for wlan

```

vi /etc/dhcpcd.conf

```

```

#profile static_eth0
static ip_address=192.168.1.9/24
static routers=192.168.1.1
static domain_name_servers=223.5.5.5

```


source:[How to Set Up a Headless Raspberry Pi, Without Ever Attaching a Monitor](https://www.tomshardware.com/reviews/raspberry-pi-headless-setup-how-to,6028.html)
[set up raspberry mirror sites in china](https://blog.csdn.net/u014663232/article/details/105599521)

