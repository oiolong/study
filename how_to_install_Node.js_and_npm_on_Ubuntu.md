
Install Node.js and npm from Ubuntu Repository
The simple and easiest way to install Node.js and npm is to install them from the Ubuntu default repository. However, it does not contains the latest Node.js version. At the time of writing this tutorial, the latest Node.js version available in the Ubuntu 20.04 is 10.19.0.

#First, update the system packages by running the following command:


```

apt-get update -y


```

#Once all the packages are updated, install the Node.js and npm with the following command:

```

apt-get install nodejs npm -y


```


#install cnpm if you living in china


```
sudo npm install -g cnpm --registry=https://registry.npm.taobao.org

```


source:[How to install Node.js and npm on Ubuntu](https://www.rosehosting.com/blog/how-to-install-node-js-and-npm-on-ubuntu-20-04/)
