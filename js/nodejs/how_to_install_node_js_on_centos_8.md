#Option 1 — Installing Node from the CentOS AppStream Repository
Node.js is available from CentOS 8’s default AppStream software repository. There are multiple versions available, and you can choose between them by enabling the appropriate module stream. First list out the available streams for the nodejs module using the dnf command:

sudo dnf module list nodejs
 
Output

```console
Last metadata expiration check: 0:32:34 ago on Mon 17 May 2021 03:39:20 AM UTC.
CentOS Linux 8 - AppStream
Name                Stream              Profiles                                          Summary
nodejs              10 [d]              common [d], development, minimal, s2i             Javascript runtime
nodejs              12                  common [d], development, minimal, s2i             Javascript runtime
nodejs              14 [e]              common [d], development, minimal, s2i             Javascript runtime

Extra Packages for Enterprise Linux Modular 8 - x86_64
Name                Stream              Profiles                                          Summary
nodejs              13                  default, development, minimal                     Javascript runtime

Hint: [d]efault, [e]nabled, [x]disabled, [i]nstalled

```

```

sudo dnf module enable nodejs:14

``` 

You will be prompted to confirm your decision. Afterwards the version 14 stream will be enabled and we can continue with the installation. For more information on working with module streams, see the official CentOS AppStream documentation.

Install the nodejs package with dnf:

```

sudo dnf install nodejs

```
 
Again, dnf will ask you to confirm the actions it will take. Press y then ENTER to do so, and the software will install.

Check that the install was successful by querying node for its version number:

```
node --version
``` 

Output
v14.16.0


source:[how to install node js on centos 8](https://www.digitalocean.com/community/tutorials/how-to-install-node-js-on-centos-8)
