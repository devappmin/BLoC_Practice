// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'package.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Package _$$_PackageFromJson(Map<String, dynamic> json) => _$_Package(
      name: json['name'] as String,
      description: json['description'] as String,
      version: json['version'] as String,
      nullSafety: json['nullSafety'] as bool,
      likes: json['likes'] as int,
      pubPoints: json['pubPoints'] as int,
      popularity: json['popularity'] as int,
    );

Map<String, dynamic> _$$_PackageToJson(_$_Package instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'version': instance.version,
      'nullSafety': instance.nullSafety,
      'likes': instance.likes,
      'pubPoints': instance.pubPoints,
      'popularity': instance.popularity,
    };
