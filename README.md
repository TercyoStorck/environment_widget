# Environment Widget

Easily environment implementation

## How to use

Create your files that represents your environments. Than confiure like bellow.

``` dart
Environment(
    bannerColor: Colors.orange,
    bannerTag: 'Dev',
    baseUrl: 'https://dev.foo.bar',
)
```
``` dart
Environment(
    bannerColor: Colors.purple,
    bannerTag: 'Hmg',
    baseUrl: 'https://hmg.foo.bar',
    bannerLocation: BannerLocation.bottomEnd,
)
```
``` dart
Environment(
    baseUrl: 'https://foo.bar',
    lightThemeData: ThemeData(),
    darkThemeData: ThemeData(),
)
```

For more details see example project on Github.