#How To Use SSHFS to Mount Remote File Systems Over SSH

##Introduction

In many cases it can become cumbersome to transfer files to and from a droplet. 
Imagine a development usage scenario where you are coding apps remotely and find 
yourself uploading a script repeatedly to your virtual server to test. 
This can become quite a hassle in a very short period of time. 
Luckily there is a way to mount your VPS file system to your local computer 
so you can make changes on the fly and treat your droplet as local storage. 
In this article, we will show you how to do exactly that.


##Installing SSHFS


SSHFS is Linux based software that needs to be installed on your local computer. 
On Ubuntu and Debian based systems it can be installed through apt-get.


```console

sudo apt-get install sshfs


```

##Mounting the Remote File System

The following instructions will work for both Ubuntu/Debian and OSX. Instructions for Windows systems can be found at the bottom of the tutorial.

To start we will need to create a local directory in which to mount the droplet’s file system.


```console

sudo mkdir /mnt/droplet <--replace "droplet" whatever you prefer

```

Now we can use sshfs to mount the file system locally with the following command. If your VPS was created with a password login the following command will do the trick. You will be asked for your virtual server’s root password during this step.




```console


sudo sshfs -o allow_other,default_permissions root@xxx.xxx.xxx.xxx:/ /mnt/droplet


```


In case that you don’t have your SSH key stored under the root user, you would need to specify the full path to the private SSH key as follows:

```console

sudo sshfs -o allow_other,default_permissions,IdentityFile=~/.ssh/id_rsa root@xxx.xxx.xxx.xxx:/ /mnt/droplet


```

##Unmounting the Remote File System


When you no longer need the mount point you can simply unmount it with the command



```console

sudo umount /mnt/droplet


```


##Permanently Mounting the Remote File System
SSHFS also allows for setting up permanent mount points to remote file systems. This would set a mount point that would persist through restarts of both your local machine and droplets. In order to set up a permanent mount point, we will need to edit the /etc/fstab file on the local machine to automatically mount the file system each time the system is booted.

First we need to edit the /etc/fstab file with a text editor.

```console

vim /etc/fstab

```


Scroll to the bottom of the file and add the following entry


```

sshfs#root@xxx.xxx.xxx.xxx:/ /mnt/droplet


```


Save the changes to /etc/fstab and reboot if necessary.



source:[How To Use SSHFS to Mount Remote File Systems Over SSH](https://www.digitalocean.com/community/tutorials/how-to-use-sshfs-to-mount-remote-file-systems-over-ssh)
[wiki SSHFS](https://en.wikipedia.org/wiki/SSHFS)
