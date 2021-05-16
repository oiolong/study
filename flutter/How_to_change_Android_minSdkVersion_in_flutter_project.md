I was trying to start a flutter project for an App using vlc player .
For that , I was using [flutter_vlc_player](https://pub.dev/packages/flutter_vlc_player)

Unfortunately, when trying to run (on an Android device) the first example 

I created I was met with the following error:



```

[        ] android_projs\android\app\src\debug\AndroidManifest.xml Error:
[        ] 	uses-sdk:minSdkVersion 16 cannot be smaller than version 17 declared in library [:flutter_vlc_player] D:\dev\android_projs\chewie_test\build\flutter_vlc_player\intermediates\library_manifest\debug\AndroidManifest.xml as the library might be using APIs not available in 16
[        ] 	Suggestion: use a compatible library with a minSdk of at most 16,
[        ] 		or increase this project's minSdk version to at least 17,
[        ] 		or use tools:overrideLibrary="software.solid.fluttervlcplayer" to force usage (may lead to runtime failures)


```

How to fix it .

Edit the file ./android/app/build.gradle

and change the parameter minSdkVersion , what the Suggestion asked (in this case 17)

```java

defaultConfig {
        // TODO: Specify your own unique Application ID (https://developer.android.com/studio/build/application-id.html).
        applicationId "com.example.chewie_test"
        minSdkVersion 17
        targetSdkVersion 30
        versionCode flutterVersionCode.toInteger()
        versionName flutterVersionName
}




```

ok it's work
