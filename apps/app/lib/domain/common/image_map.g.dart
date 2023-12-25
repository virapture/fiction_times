// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_map.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ImageMapImpl _$$ImageMapImplFromJson(Map<String, dynamic> json) =>
    _$ImageMapImpl(
      width: json['width'] as int? ?? 0,
      height: json['height'] as int? ?? 0,
      path: json['path'] as String? ?? '',
      blurHash: json['blurHash'] as String? ?? '',
    );

Map<String, dynamic> _$$ImageMapImplToJson(_$ImageMapImpl instance) =>
    <String, dynamic>{
      'width': instance.width,
      'height': instance.height,
      'path': instance.path,
      'blurHash': instance.blurHash,
    };
