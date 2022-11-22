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

# dart_published

This package aims to reproduce Swift's @Published functionality.\
This package was developed by a Japanese information science students. So please understand that the English in this document may be poor! \
(Please point out any oddities. It's good study of English!)

## What this package can do

* Detecting changes in the value of a variable.

## Example

source

```dart
void main(List<String> arguments) {
  Publisher<int> a = Publisher<int>(1);

  a.sink((newValue) {
    print(newValue);
  });

  a.value = 2;

  print("----");

  a.value = 3;
}
```

output
```
2
----
3

```

