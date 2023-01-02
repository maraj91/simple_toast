# simple_m_toast

Simple toast package created with Flutter.

[![Say Thanks!](https://img.shields.io/badge/Say%20Thanks-!-1EAEDB.svg)](https://github.com/maraj91)


The source code is **100% Dart**

## Show some :heart: and star the repo to support the project

[![GitHub]](https://github.com/maraj91)

[![Medium]](https://marajhussain.medium.com/)



## 💻 Installation

In the `dependencies:` section of your `pubspec.yaml`, add the following line:

```yaml
simple_m_toast: <latest_version>
```

Import in your project:
```dart
import 'package:simple_m_toast/ToastWidget.dart';
```

## ❔Basic Usage
```dart
SimpleMToast.showToast(
  context: context,
  message: "My custom message",
  positionFromBottom:
  MediaQuery.of(context).size.height * 0.05,
  backgroundColor: Colors.redAccent,
  textStyle: const TextStyle(fontSize: 18,color: Colors.white),
  seconds: SimpleMToast.lengthShort
);
```

## 👨 Developed By

```
Maraj Hossain
```


# 📃 License

    Copyright (c) 2022 Maraj Hossain

    Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

    The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

## Getting Started

For help getting started with Flutter, view our online [documentation](https://flutter.dev/).

For help on editing package code, view the [documentation](https://flutter.dev/developing-packages/).