// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'article.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Article _$ArticleFromJson(Map<String, dynamic> json) {
  return _Article.fromJson(json);
}

/// @nodoc
mixin _$Article {
  @ServerTimestampConverter()
  FirestoreTimestamp get createdAt => throw _privateConstructorUsedError;
  @ServerTimestampConverter()
  FirestoreTimestamp get updatedAt => throw _privateConstructorUsedError;
  @DocumentReferenceConverter()
  DocumentReference<Object?>? get reference =>
      throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;
  String get reporter => throw _privateConstructorUsedError;
  String get source => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArticleCopyWith<Article> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleCopyWith<$Res> {
  factory $ArticleCopyWith(Article value, $Res Function(Article) then) =
      _$ArticleCopyWithImpl<$Res, Article>;
  @useResult
  $Res call(
      {@ServerTimestampConverter() FirestoreTimestamp createdAt,
      @ServerTimestampConverter() FirestoreTimestamp updatedAt,
      @DocumentReferenceConverter() DocumentReference<Object?>? reference,
      String title,
      String body,
      String reporter,
      String source});

  $FirestoreTimestampCopyWith<$Res> get createdAt;
  $FirestoreTimestampCopyWith<$Res> get updatedAt;
}

/// @nodoc
class _$ArticleCopyWithImpl<$Res, $Val extends Article>
    implements $ArticleCopyWith<$Res> {
  _$ArticleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? reference = freezed,
    Object? title = null,
    Object? body = null,
    Object? reporter = null,
    Object? source = null,
  }) {
    return _then(_value.copyWith(
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as FirestoreTimestamp,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as FirestoreTimestamp,
      reference: freezed == reference
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as DocumentReference<Object?>?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      reporter: null == reporter
          ? _value.reporter
          : reporter // ignore: cast_nullable_to_non_nullable
              as String,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FirestoreTimestampCopyWith<$Res> get createdAt {
    return $FirestoreTimestampCopyWith<$Res>(_value.createdAt, (value) {
      return _then(_value.copyWith(createdAt: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FirestoreTimestampCopyWith<$Res> get updatedAt {
    return $FirestoreTimestampCopyWith<$Res>(_value.updatedAt, (value) {
      return _then(_value.copyWith(updatedAt: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ArticleImplCopyWith<$Res> implements $ArticleCopyWith<$Res> {
  factory _$$ArticleImplCopyWith(
          _$ArticleImpl value, $Res Function(_$ArticleImpl) then) =
      __$$ArticleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@ServerTimestampConverter() FirestoreTimestamp createdAt,
      @ServerTimestampConverter() FirestoreTimestamp updatedAt,
      @DocumentReferenceConverter() DocumentReference<Object?>? reference,
      String title,
      String body,
      String reporter,
      String source});

  @override
  $FirestoreTimestampCopyWith<$Res> get createdAt;
  @override
  $FirestoreTimestampCopyWith<$Res> get updatedAt;
}

/// @nodoc
class __$$ArticleImplCopyWithImpl<$Res>
    extends _$ArticleCopyWithImpl<$Res, _$ArticleImpl>
    implements _$$ArticleImplCopyWith<$Res> {
  __$$ArticleImplCopyWithImpl(
      _$ArticleImpl _value, $Res Function(_$ArticleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? reference = freezed,
    Object? title = null,
    Object? body = null,
    Object? reporter = null,
    Object? source = null,
  }) {
    return _then(_$ArticleImpl(
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as FirestoreTimestamp,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as FirestoreTimestamp,
      reference: freezed == reference
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as DocumentReference<Object?>?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      reporter: null == reporter
          ? _value.reporter
          : reporter // ignore: cast_nullable_to_non_nullable
              as String,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ArticleImpl extends _Article {
  const _$ArticleImpl(
      {@ServerTimestampConverter() required this.createdAt,
      @ServerTimestampConverter() required this.updatedAt,
      @DocumentReferenceConverter() this.reference,
      this.title = '',
      this.body = '',
      this.reporter = '',
      this.source = ''})
      : super._();

  factory _$ArticleImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArticleImplFromJson(json);

  @override
  @ServerTimestampConverter()
  final FirestoreTimestamp createdAt;
  @override
  @ServerTimestampConverter()
  final FirestoreTimestamp updatedAt;
  @override
  @DocumentReferenceConverter()
  final DocumentReference<Object?>? reference;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String body;
  @override
  @JsonKey()
  final String reporter;
  @override
  @JsonKey()
  final String source;

  @override
  String toString() {
    return 'Article(createdAt: $createdAt, updatedAt: $updatedAt, reference: $reference, title: $title, body: $body, reporter: $reporter, source: $source)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArticleImpl &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.reference, reference) ||
                other.reference == reference) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.reporter, reporter) ||
                other.reporter == reporter) &&
            (identical(other.source, source) || other.source == source));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, createdAt, updatedAt, reference,
      title, body, reporter, source);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArticleImplCopyWith<_$ArticleImpl> get copyWith =>
      __$$ArticleImplCopyWithImpl<_$ArticleImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ArticleImplToJson(
      this,
    );
  }
}

abstract class _Article extends Article {
  const factory _Article(
      {@ServerTimestampConverter() required final FirestoreTimestamp createdAt,
      @ServerTimestampConverter() required final FirestoreTimestamp updatedAt,
      @DocumentReferenceConverter() final DocumentReference<Object?>? reference,
      final String title,
      final String body,
      final String reporter,
      final String source}) = _$ArticleImpl;
  const _Article._() : super._();

  factory _Article.fromJson(Map<String, dynamic> json) = _$ArticleImpl.fromJson;

  @override
  @ServerTimestampConverter()
  FirestoreTimestamp get createdAt;
  @override
  @ServerTimestampConverter()
  FirestoreTimestamp get updatedAt;
  @override
  @DocumentReferenceConverter()
  DocumentReference<Object?>? get reference;
  @override
  String get title;
  @override
  String get body;
  @override
  String get reporter;
  @override
  String get source;
  @override
  @JsonKey(ignore: true)
  _$$ArticleImplCopyWith<_$ArticleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
