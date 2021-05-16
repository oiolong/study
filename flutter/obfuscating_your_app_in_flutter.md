#Obfuscating your app

To obfuscate your app, build a release version using the --obfuscate flag, combined with the --split-debug-info flag. 
The --split-debug-info flag specifies the directory where Flutter can output debug files. 
This command generates a symbol map. The apk, appbundle, ios, and ios-framework targets are currently supported. 
(macos and aar are supported on the master and dev channels.) For example:


```

flutter build apk --obfuscate --split-debug-info=/<project-name>/<directory>

```




