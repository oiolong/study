#How to post message from Javascript


I wanna load a json obj in webview .

so I make the code below


```dart

_controller.evaluateJavascript('share.postMessage(player_data);');


```


but it's not work 

cause

Warning: postMessage accepts String value only. So if you want to send an object/array, you need to using JSON.stringify to convert it to JSON string. InteractiveWebView will convert it back to Map/List respectively.

so there are 2 ways to fix the problem

# stubid way

add the single quotes  to the server side in js

```js

var string_player_data = 'player_data';


```

and post data via evaluatJaavascript

```dart

_controller.evaluateJavascript('share.postMessage(string_player_data);');

```

but it's too stubid...


A few days later, I read the docs


I found a new way

send an object data via JSON.string


```dart


_controller.evaluateJavascript('share.postMessage(JSON.string(palyer_data));');


```



source:

[interactive_webview](https://pub.dev/documentation/interactive_webview/latest/)

[flutter hybrid practice](https://lifeasy.github.io/2020/03/27/Hybrid%E5%AE%9E%E8%B7%B5/)
