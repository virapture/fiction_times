// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_map.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ImageMap _$ImageMapFromJson(Map<String, dynamic> json) {
  return _ImageMap.fromJson(json);
}

/// @nodoc
mixin _$ImageMap {
  int get width => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;
  String get path => throw _privateConstructorUsedError;
  String get blurHash => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageMapCopyWith<ImageMap> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageMapCopyWith<$Res> {
  factory $ImageMapCopyWith(ImageMap value, $Res Function(ImageMap) then) =
      _$ImageMapCopyWithImpl<$Res, ImageMap>;
  @useResult
  $Res call({int width, int height, String path, String blurHash});
}

/// @nodoc
class _$ImageMapCopyWithImpl<$Res, $Val extends ImageMap>
    implements $ImageMapCopyWith<$Res> {
  _$ImageMapCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? width = null,
    Object? height = null,
    Object? path = null,
    Object? blurHash = null,
  }) {
    return _then(_value.copyWith(
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      blurHash: null == blurHash
          ? _value.blurHash
          : blurHash // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ImageMapCopyWith<$Res> implements $ImageMapCopyWith<$Res> {
  factory _$$_ImageMapCopyWith(
          _$_ImageMap value, $Res Function(_$_ImageMap) then) =
      __$$_ImageMapCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int width, int height, String path, String blurHash});
}

/// @nodoc
class __$$_ImageMapCopyWithImpl<$Res>
    extends _$ImageMapCopyWithImpl<$Res, _$_ImageMap>
    implements _$$_ImageMapCopyWith<$Res> {
  __$$_ImageMapCopyWithImpl(
      _$_ImageMap _value, $Res Function(_$_ImageMap) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? width = null,
    Object? height = null,
    Object? path = null,
    Object? blurHash = null,
  }) {
    return _then(_$_ImageMap(
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      blurHash: null == blurHash
          ? _value.blurHash
          : blurHash // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ImageMap extends _ImageMap {
  const _$_ImageMap(
      {this.width = 0, this.height = 0, this.path = '', this.blurHash = ''})
      : super._();

  factory _$_ImageMap.fromJson(Map<String, dynamic> json) =>
      _$$_ImageMapFromJson(json);

  @override
  @JsonKey()
  final int width;
  @override
  @JsonKey()
  final int height;
  @override
  @JsonKey()
  final String path;
  @override
  @JsonKey()
  final String blurHash;

  @override
  String toString() {
    return 'ImageMap(width: $width, height: $height, path: $path, blurHash: $blurHash)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImageMap &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.blurHash, blurHash) ||
                other.blurHash == blurHash));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, width, height, path, blurHash);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ImageMapCopyWith<_$_ImageMap> get copyWith =>
      __$$_ImageMapCopyWithImpl<_$_ImageMap>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ImageMapToJson(
      this,
    );
  }
}

abstract class _ImageMap extends ImageMap {
  const factory _ImageMap(
      {final int width,
      final int height,
      final String path,
      final String blurHash}) = _$_ImageMap;
  const _ImageMap._() : super._();

  factory _ImageMap.fromJson(Map<String, dynamic> json) = _$_ImageMap.fromJson;

  @override
  int get width;
  @override
  int get height;
  @override
  String get path;
  @override
  String get blurHash;
  @override
  @JsonKey(ignore: true)
  _$$_ImageMapCopyWith<_$_ImageMap> get copyWith =>
      throw _privateConstructorUsedError;
}
