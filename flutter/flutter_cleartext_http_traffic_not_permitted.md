
#Cleartext HTTP traffic not permitted


there are 3 ways to fix 

#Option 1 


Create file res/xml/network_security_config.xml


```
<?xml version="1.0" encoding="utf-8"?>
<network-security-config>
<base-config cleartextTrafficPermitted="true" />
<domain-config cleartextTrafficPermitted="true">
        <domain includeSubdomains="true">Your URL(ex: 127.0.0.1)</domain>
</domain-config>
</network-security-config>

``` 

AndroidManifest.xml 



```

<?xml version="1.0" encoding="utf-8"?>
<manifest ...>
    <uses-permission android:name="android.permission.INTERNET" />
    <application
        ...
        android:networkSecurityConfig="@xml/network_security_config"
        ...>
        ...
    </application>
</manifest>


```



#Option 2


AndroidManifest.xml -


```

<?xml version="1.0" encoding="utf-8"?>
<manifest ...>
    <uses-permission android:name="android.permission.INTERNET" />
    <application
        ...
	==android:usesCleartextTraffic="true"==
        ...>
        ...
    </application>
</manifest>




``` 

#Option 3

change the http resources to https


source:[Flutter Cleartext HTTP traffic not permitted](https://stackoverflow.com/questions/62623388/flutter-cleartext-http-traffic-not-permitted)
[Android 9: Cleartext HTTP traffic not permitted](https://imstudio.medium.com/android-8-cleartext-http-traffic-not-permitted-73c1c9e3b803)
