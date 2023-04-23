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

This is the package of colorful gradiant container which helps to get less time consuming for users 

## Features

- hieght
- width
- title 
- subtitle
- gradiant(color1 and color2)
<hr>

## Getting started

```dart
flutter pub add colorful_container
```


```dart

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Colorful Container'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            ColorfulContainer(
              hieght: 150,
              title: 'hello',
              textColor: Colors.white,
              subtitle: 'this is subtitle',
              subtitleColor: Colors.white,
              color1: Colors.amberAccent,
            )
          ],
        ),
      ),
    );
  }
}

```
