
#Install python 3.9 on Raspberry PI


##First install the dependencies needed to build:


```

sudo apt-get update
sudo apt-get install -y build-essential tk-dev libncurses5-dev libncursesw5-dev libreadline6-dev libdb5.3-dev libgdbm-dev libsqlite3-dev libssl-dev libbz2-dev libexpat1-dev liblzma-dev zlib1g-dev libffi-dev

```


##Next download the latest python version, untar it and compile it.


```console


root@raspberrypi: wget https://www.python.org/ftp/python/3.9.5/Python-3.9.5.tgz
root@raspberrypi:
root@raspberrypi: tar xvf Python-3.9.5.tgz
root@raspberrypi: cd Python-3.9.5/
root@raspberrypi: ./configure --prefix=/usr/local/bin/python3.9
root@raspberrypi: ./configure –enable-optimizations
root@raspberrypi:
root@raspberrypi: make -j 4
root@raspberrypi: make altinstall
root@raspberrypi: make install
root@raspberrypi:
root@raspberrypi:~/Python-3.9.5# which python3.9
/usr/local/bin/python3.9



```


source:[Install Python 3.9 on a Raspberry PI](https://itheo.nl/install-python-3-9-on-raspberry-pi)
[Python 3.9.5](https://www.python.org/downloads/release/python-395/)
