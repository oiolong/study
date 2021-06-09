I'm trying to use ContentBlocker to block ads ... 

There are the same issue like me 

It's helpful.






```dart

InAppWebViewGroupOptions options = InAppWebViewGroupOptions(
      crossPlatform: InAppWebViewOptions(
        useShouldOverrideUrlLoading: true,
        mediaPlaybackRequiresUserGesture: false,
        contentBlockers: [
            ContentBlocker(
                            trigger: ContentBlockerTrigger( urlFilter: "http://.*aaa.*", resourceType: [ContentBlockerTriggerResourceType.SCRIPT], ),
                            action: ContentBlockerAction( type: ContentBlockerActionType.BLOCK, ), ),
        ],
      ),
      android: AndroidInAppWebViewOptions(
        useHybridComposition: true,
      ),
      ios: IOSInAppWebViewOptions(
        allowsInlineMediaPlayback: true,
      ));


```

the urlFilter property 

String urlFilter
read / write
A regular expression pattern to match the URL against.

Implementation

```dart

late String urlFilter;


```

source:[How to use ContentBlocker to block ads?](https://github.com/pichillilorenzo/flutter_inappwebview/issues/616)
[urlFilter property in flutter_inappwebview](https://pub.dev/documentation/flutter_inappwebview/latest/flutter_inappwebview/ContentBlockerTrigger/urlFilter.html)
