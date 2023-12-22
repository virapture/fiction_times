// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, implicit_dynamic_parameter, implicit_dynamic_type, implicit_dynamic_method, strict_raw_type

part of 'image_map.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ImageMap _$$_ImageMapFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$_ImageMap',
      json,
      ($checkedConvert) {
        final val = _$_ImageMap(
          width: $checkedConvert('width', (v) => v as int? ?? 0),
          height: $checkedConvert('height', (v) => v as int? ?? 0),
          path: $checkedConvert('path', (v) => v as String? ?? ''),
          blurHash: $checkedConvert('blurHash', (v) => v as String? ?? ''),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_ImageMapToJson(_$_ImageMap instance) =>
    <String, dynamic>{
      'width': instance.width,
      'height': instance.height,
      'path': instance.path,
      'blurHash': instance.blurHash,
    };
