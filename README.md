<!-- 
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages). 

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages). 
-->

Display a banner when your internet connection is unavailable.

## Features

Display a banner when your internet connection is unavailable.

![](example/screenshot.png)

## Getting started

TODO: List prerequisites and provide or point to information on how to
start using the package.

1. Add the latest version of package to your pubspec.yaml (and rundart pub get):
```dart
    dependencies:
      internet_checker_banner: ^0.0.1
```

2. Import the package and use it in your Flutter App.
```dart
    import 'package:internet_checker_banner/internet_checker_banner.dart';

```


## Usage

Initialize internet_checker_banner inside the initState() function. 

```dart
    InternetCheckerBanner().initialize(
      context,
      title: "No internet access",
    );
```

don't forget to dispose it inside dispose() function.

```dart
    InternetCheckerBanner().dispose();
```


