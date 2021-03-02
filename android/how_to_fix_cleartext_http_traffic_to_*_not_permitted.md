there 3 solutions to fixed it

1. chang the http traffic to http

2. targetSdkVerions downgrade under 27

3. change the network settings


step 1. make a xml file in the res folder

```

<?xml version="1.0" encoding="utf-8"?>
<network-security-config>
    <base-config cleartextTrafficPermitted="true" />
</network-security-config>


```

step 2. add the application tags in the AndroidManifest.xml

```


<application
...
 android:networkSecurityConfig="@xml/network_security_config"
...
    />



```

Source:[how to fix Cleartext HTTP traffic to xxx not permitted](https://www.itread01.com/content/1541933583.html)


