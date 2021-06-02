#How to install & use Transmission in Ubuntu 


##Transmission in Ubuntu Linux comes as a default BitTorrent client

that can be used to download torrent files directly from the internet to local computer. BitTorrent protocol used by this client helps in downloading files from multiple sources instead of from one single which trust a burden on the server. It uses multiple nodes to upload and download files as we all know.

The interface of this torrent client is very straight forward, easy to use, yet powerful. It also has a web interface. A user can block bad peers, access to directories,  command line interface and more ..



##Step 1 : Update the system


```console

sudo apt-get update

```


##Step 2 : Install Transmission on Ubuntu

```console

sudo apt-get install transmission-gtk transmission-cli transmission-common transmission-daemon


```


##Step 3 : Change Transmission RCP /web interface username and password


Default transmission rpc-username and password is “transmission” for privacy and security, you change them. 
It means whenever you want to access the torrent downloader remotely or locally using a browser, it will ask you for username and password first.

First of all, close the GUI running program and then in a command terminal, use the below command to stop the daemon.



```console


sudo service transmission-daemon stop


```

After that edit the JSON setting file using nano or VIM text editor. Here we are using simple nano.



```console

sudo vim /var/lib/transmission-daemon/info/settings.json

```
Now in the file find values: rpc-password and rpc-username and then change their corresponding values as you need. You can set any username and password. 
After that save the changes to file, for that press CTRL+X and then type YES followed by hitting of the Enter Key.

“rpc-password”: “{efd95272bba62fb512ed5ab280897b964c570c8aO7TIHa/2”,
“rpc-username”: “transmission”,



![chnage username and password](/data/linux/transmission_in_ubuntu/chnage-username-and-password.jpg)

```console

sudo service transmission-daemon start

```


###Step 4:Access Web interface of Transmission Ubuntu

To access it from anywhere remotely you have to forward Transmission port in your router. However, locally or remotely, the only thing we need is the browser. Open it and type your Ubuntu or server IP address along with port number 9091. I am using it locally thus, transmission rpc url will be as http:127.0.01:9091/transmission


![transmission-ubuntu-web-interface](/data/linux/transmission_in_ubuntu/transmission-ubuntu-web-interface.jpg)
![Download-torrent-using-transmissio](/data/linux/transmission_in_ubuntu/Download-torrent-using-transmissio.jpg)
![Ubuntu-web-torretn-downloader](/data/linux/transmission_in_ubuntu/Ubuntu-web-torretn-downloader.jpg)


##Step 5: Whitelist IP address to access transmission (optional)

If you want to access this Ubuntu torrent downloader using any IP address then you have to mention or whitelist that in the transmission setting.Json file.

```console


sudo service transmission-daemon stop

sudo vim /var/lib/transmission-daemon/info/settings.json

```


Find rpc-whitelist and mention the range of Ip address, like we did i.e 192.168.*.*.



```console


"rpc-whitelist": "127.0.0.1,192.168.*.*",


```


##Step 6 : How to use transmission ubuntu

We already have seen above the way to download files from a torrent file using its web interface, now, in the same way, we can do it for local installed GUI.

When you click some magnet link of a torrent file, the transmission automatically detects and give you an option to download files on Ubuntu. However, in the case of the torrent file, click on the Open button and browse the torrent file and click on Open button to start the downloading.


![how-to-use-transmission-on-Ubuntu-to-download-torrent-files](/data/linux/transmission_in_ubuntu/how-to-use-transmission-on-Ubuntu-to-download-torrent-files.jpg)



##Step 7 : How to Uninstall Transmission in Ubuntu


```
sudo apt remove transmission*


```

source: [How to install & use Transmission in Ubuntu](https://www.how2shout.com/how-to/transmission-ubuntu-how-to-install-use-it-on-ubuntu-19-0418-04.html)
