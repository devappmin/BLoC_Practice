// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'package.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Package _$PackageFromJson(Map<String, dynamic> json) {
  return _Package.fromJson(json);
}

/// @nodoc
class _$PackageTearOff {
  const _$PackageTearOff();

  _Package call(
      {required String name,
      required String description,
      required String version,
      required bool nullSafety,
      required int likes,
      required int pubPoints,
      required int popularity}) {
    return _Package(
      name: name,
      description: description,
      version: version,
      nullSafety: nullSafety,
      likes: likes,
      pubPoints: pubPoints,
      popularity: popularity,
    );
  }

  Package fromJson(Map<String, Object?> json) {
    return Package.fromJson(json);
  }
}

/// @nodoc
const $Package = _$PackageTearOff();

/// @nodoc
mixin _$Package {
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get version => throw _privateConstructorUsedError;
  bool get nullSafety => throw _privateConstructorUsedError;
  int get likes => throw _privateConstructorUsedError;
  int get pubPoints => throw _privateConstructorUsedError;
  int get popularity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PackageCopyWith<Package> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PackageCopyWith<$Res> {
  factory $PackageCopyWith(Package value, $Res Function(Package) then) =
      _$PackageCopyWithImpl<$Res>;
  $Res call(
      {String name,
      String description,
      String version,
      bool nullSafety,
      int likes,
      int pubPoints,
      int popularity});
}

/// @nodoc
class _$PackageCopyWithImpl<$Res> implements $PackageCopyWith<$Res> {
  _$PackageCopyWithImpl(this._value, this._then);

  final Package _value;
  // ignore: unused_field
  final $Res Function(Package) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? version = freezed,
    Object? nullSafety = freezed,
    Object? likes = freezed,
    Object? pubPoints = freezed,
    Object? popularity = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      version: version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      nullSafety: nullSafety == freezed
          ? _value.nullSafety
          : nullSafety // ignore: cast_nullable_to_non_nullable
              as bool,
      likes: likes == freezed
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int,
      pubPoints: pubPoints == freezed
          ? _value.pubPoints
          : pubPoints // ignore: cast_nullable_to_non_nullable
              as int,
      popularity: popularity == freezed
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$PackageCopyWith<$Res> implements $PackageCopyWith<$Res> {
  factory _$PackageCopyWith(_Package value, $Res Function(_Package) then) =
      __$PackageCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      String description,
      String version,
      bool nullSafety,
      int likes,
      int pubPoints,
      int popularity});
}

/// @nodoc
class __$PackageCopyWithImpl<$Res> extends _$PackageCopyWithImpl<$Res>
    implements _$PackageCopyWith<$Res> {
  __$PackageCopyWithImpl(_Package _value, $Res Function(_Package) _then)
      : super(_value, (v) => _then(v as _Package));

  @override
  _Package get _value => super._value as _Package;

  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? version = freezed,
    Object? nullSafety = freezed,
    Object? likes = freezed,
    Object? pubPoints = freezed,
    Object? popularity = freezed,
  }) {
    return _then(_Package(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      version: version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      nullSafety: nullSafety == freezed
          ? _value.nullSafety
          : nullSafety // ignore: cast_nullable_to_non_nullable
              as bool,
      likes: likes == freezed
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int,
      pubPoints: pubPoints == freezed
          ? _value.pubPoints
          : pubPoints // ignore: cast_nullable_to_non_nullable
              as int,
      popularity: popularity == freezed
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Package implements _Package {
  _$_Package(
      {required this.name,
      required this.description,
      required this.version,
      required this.nullSafety,
      required this.likes,
      required this.pubPoints,
      required this.popularity});

  factory _$_Package.fromJson(Map<String, dynamic> json) =>
      _$$_PackageFromJson(json);

  @override
  final String name;
  @override
  final String description;
  @override
  final String version;
  @override
  final bool nullSafety;
  @override
  final int likes;
  @override
  final int pubPoints;
  @override
  final int popularity;

  @override
  String toString() {
    return 'Package(name: $name, description: $description, version: $version, nullSafety: $nullSafety, likes: $likes, pubPoints: $pubPoints, popularity: $popularity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Package &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.version, version) &&
            const DeepCollectionEquality()
                .equals(other.nullSafety, nullSafety) &&
            const DeepCollectionEquality().equals(other.likes, likes) &&
            const DeepCollectionEquality().equals(other.pubPoints, pubPoints) &&
            const DeepCollectionEquality()
                .equals(other.popularity, popularity));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(version),
      const DeepCollectionEquality().hash(nullSafety),
      const DeepCollectionEquality().hash(likes),
      const DeepCollectionEquality().hash(pubPoints),
      const DeepCollectionEquality().hash(popularity));

  @JsonKey(ignore: true)
  @override
  _$PackageCopyWith<_Package> get copyWith =>
      __$PackageCopyWithImpl<_Package>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PackageToJson(this);
  }
}

abstract class _Package implements Package {
  factory _Package(
      {required String name,
      required String description,
      required String version,
      required bool nullSafety,
      required int likes,
      required int pubPoints,
      required int popularity}) = _$_Package;

  factory _Package.fromJson(Map<String, dynamic> json) = _$_Package.fromJson;

  @override
  String get name;
  @override
  String get description;
  @override
  String get version;
  @override
  bool get nullSafety;
  @override
  int get likes;
  @override
  int get pubPoints;
  @override
  int get popularity;
  @override
  @JsonKey(ignore: true)
  _$PackageCopyWith<_Package> get copyWith =>
      throw _privateConstructorUsedError;
}
