// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, implicit_dynamic_parameter, implicit_dynamic_type, implicit_dynamic_method, strict_raw_type

part of 'firestore_timestamp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$Date _$$DateFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$Date',
      json,
      ($checkedConvert) {
        final val = _$Date(
          $checkedConvert('date', (v) => DateTime.parse(v as String)),
          $type: $checkedConvert('runtimeType', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {r'$type': 'runtimeType'},
    );

Map<String, dynamic> _$$DateToJson(_$Date instance) => <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'runtimeType': instance.$type,
    };

_$ServerTimestamp _$$ServerTimestampFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$ServerTimestamp',
      json,
      ($checkedConvert) {
        final val = _$ServerTimestamp(
          $type: $checkedConvert('runtimeType', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {r'$type': 'runtimeType'},
    );

Map<String, dynamic> _$$ServerTimestampToJson(_$ServerTimestamp instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };
