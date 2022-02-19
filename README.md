# pub.dev scrapping with BLoC Pattern

[![Badge](https://img.shields.io/badge/GitHub%20Blog-Click-yellow)](https://petabyte.studio/posts/learn-bloc-like-eating-cake/)

The purpose of this project is learning `BLoC` Architecture pattern by creating `pub.dev` scrapping application.

![Screenshot_1644225681](https://user-images.githubusercontent.com/4322099/154806248-3462848a-cd90-49c3-957b-3c85bf2919d8.png)

## Directory Tree

```bash
lib
│   main.dart
│
├───bloc
│       package_bloc.dart
│       package_event.dart
│       package_state.dart
│
├───domain
│   ├───colors
│   │       colors.dart
│   │
│   └───constant
│           pub_dev.dart
│           score_value.dart
│
├───model
│       package.dart
│       package.freezed.dart
│       package.g.dart
│
└───repository
        package_repository.dart
```

## Used Packages.

- [build_runner](https://pub.dev/packages/build_runner)
- [equatable](https://pub.dev/packages/equatable)
- [flutter_bloc](https://pub.dev/packages/flutter_bloc)
- [freezed](https://pub.dev/packages/freezed)
- [freezed_annotation](https://pub.dev/packages/freezed_annotation)
- [http](https://pub.dev/packages/http)
- [html](https://pub.dev/packages/html)
- [json_serializable](https://pub.dev/packages/json_serializable)
