// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'firestore_timestamp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DateImpl _$$DateImplFromJson(Map<String, dynamic> json) => _$DateImpl(
      DateTime.parse(json['date'] as String),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$DateImplToJson(_$DateImpl instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'runtimeType': instance.$type,
    };

_$ServerTimestampImpl _$$ServerTimestampImplFromJson(
        Map<String, dynamic> json) =>
    _$ServerTimestampImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ServerTimestampImplToJson(
        _$ServerTimestampImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };
