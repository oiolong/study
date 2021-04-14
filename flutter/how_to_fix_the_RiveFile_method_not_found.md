

i found a funny video diary app on reddit

(One Second Diary)[https://github.com/KyleKun/one_second_diary]

after i fork it and run it in my pc

i found the error



[+4794 ms] [+4782 ms] lib/pages/donation/widgets/heart_animation.dart:22:22: Error: Method not found: 'RiveFile'.
[   +1 ms] [   +1 ms]         final file = RiveFile();
[        ] [        ]                      ^^^^^^^^


and i fix it by the Rive pub v0.7.2

old code

```
rootBundle.load('assets/images/heart.riv').then(
      (data) async {


        final file = RiveFile();
        if (file.import(data)) {
          final artboard = file.mainArtboard;
          artboard.addController(SimpleAnimation('heart'));
          setState(() => _riveArtboard = artboard);
        }



      },
    );

```

replace it

```

   rootBundle.load('assets/images/heart.riv').then(
      (data) async {


        final file = RiveFile.import(data);
        // The artboard is the root of the animation and gets drawn in the
        // Rive widget.
        final artboard = file.mainArtboard;
        // Add a controller to play back a known animation on the main/default
        // artboard.We store a reference to it so we can toggle playback.
        artboard.addController(SimpleAnimation('heart'));
        setState(() => _riveArtboard = artboard);


      },
    );


```




sources:(rive 0.7.2)[https://pub.dev/packages/rive]

