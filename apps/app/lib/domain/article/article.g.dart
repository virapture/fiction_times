// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ArticleImpl _$$ArticleImplFromJson(Map<String, dynamic> json) =>
    _$ArticleImpl(
      createdAt: const ServerTimestampConverter().fromJson(json['createdAt']),
      updatedAt: const ServerTimestampConverter().fromJson(json['updatedAt']),
      reference: _$JsonConverterFromJson<DocumentReference<Object?>,
              DocumentReference<Object?>>(
          json['reference'], const DocumentReferenceConverter().fromJson),
      title: json['title'] as String? ?? '',
      body: json['body'] as String? ?? '',
      reporter: json['reporter'] as String? ?? '',
      source: json['source'] as String? ?? '',
    );

Map<String, dynamic> _$$ArticleImplToJson(_$ArticleImpl instance) =>
    <String, dynamic>{
      'createdAt': const ServerTimestampConverter().toJson(instance.createdAt),
      'updatedAt': const ServerTimestampConverter().toJson(instance.updatedAt),
      'reference': _$JsonConverterToJson<DocumentReference<Object?>,
              DocumentReference<Object?>>(
          instance.reference, const DocumentReferenceConverter().toJson),
      'title': instance.title,
      'body': instance.body,
      'reporter': instance.reporter,
      'source': instance.source,
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
