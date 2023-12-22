// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'firestore_timestamp.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FirestoreTimestamp _$FirestoreTimestampFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'date':
      return Date.fromJson(json);
    case 'serverTimestamp':
      return ServerTimestamp.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'FirestoreTimestamp',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$FirestoreTimestamp {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime date) date,
    required TResult Function() serverTimestamp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime date)? date,
    TResult? Function()? serverTimestamp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime date)? date,
    TResult Function()? serverTimestamp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Date value) date,
    required TResult Function(ServerTimestamp value) serverTimestamp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Date value)? date,
    TResult? Function(ServerTimestamp value)? serverTimestamp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Date value)? date,
    TResult Function(ServerTimestamp value)? serverTimestamp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirestoreTimestampCopyWith<$Res> {
  factory $FirestoreTimestampCopyWith(
          FirestoreTimestamp value, $Res Function(FirestoreTimestamp) then) =
      _$FirestoreTimestampCopyWithImpl<$Res, FirestoreTimestamp>;
}

/// @nodoc
class _$FirestoreTimestampCopyWithImpl<$Res, $Val extends FirestoreTimestamp>
    implements $FirestoreTimestampCopyWith<$Res> {
  _$FirestoreTimestampCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$DateImplCopyWith<$Res> {
  factory _$$DateImplCopyWith(
          _$DateImpl value, $Res Function(_$DateImpl) then) =
      __$$DateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime date});
}

/// @nodoc
class __$$DateImplCopyWithImpl<$Res>
    extends _$FirestoreTimestampCopyWithImpl<$Res, _$DateImpl>
    implements _$$DateImplCopyWith<$Res> {
  __$$DateImplCopyWithImpl(_$DateImpl _value, $Res Function(_$DateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
  }) {
    return _then(_$DateImpl(
      null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DateImpl implements Date {
  const _$DateImpl(this.date, {final String? $type}) : $type = $type ?? 'date';

  factory _$DateImpl.fromJson(Map<String, dynamic> json) =>
      _$$DateImplFromJson(json);

  @override
  final DateTime date;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'FirestoreTimestamp.date(date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DateImpl &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DateImplCopyWith<_$DateImpl> get copyWith =>
      __$$DateImplCopyWithImpl<_$DateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime date) date,
    required TResult Function() serverTimestamp,
  }) {
    return date(this.date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime date)? date,
    TResult? Function()? serverTimestamp,
  }) {
    return date?.call(this.date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime date)? date,
    TResult Function()? serverTimestamp,
    required TResult orElse(),
  }) {
    if (date != null) {
      return date(this.date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Date value) date,
    required TResult Function(ServerTimestamp value) serverTimestamp,
  }) {
    return date(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Date value)? date,
    TResult? Function(ServerTimestamp value)? serverTimestamp,
  }) {
    return date?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Date value)? date,
    TResult Function(ServerTimestamp value)? serverTimestamp,
    required TResult orElse(),
  }) {
    if (date != null) {
      return date(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$DateImplToJson(
      this,
    );
  }
}

abstract class Date implements FirestoreTimestamp {
  const factory Date(final DateTime date) = _$DateImpl;

  factory Date.fromJson(Map<String, dynamic> json) = _$DateImpl.fromJson;

  DateTime get date;
  @JsonKey(ignore: true)
  _$$DateImplCopyWith<_$DateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ServerTimestampImplCopyWith<$Res> {
  factory _$$ServerTimestampImplCopyWith(_$ServerTimestampImpl value,
          $Res Function(_$ServerTimestampImpl) then) =
      __$$ServerTimestampImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ServerTimestampImplCopyWithImpl<$Res>
    extends _$FirestoreTimestampCopyWithImpl<$Res, _$ServerTimestampImpl>
    implements _$$ServerTimestampImplCopyWith<$Res> {
  __$$ServerTimestampImplCopyWithImpl(
      _$ServerTimestampImpl _value, $Res Function(_$ServerTimestampImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$ServerTimestampImpl implements ServerTimestamp {
  const _$ServerTimestampImpl({final String? $type})
      : $type = $type ?? 'serverTimestamp';

  factory _$ServerTimestampImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServerTimestampImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'FirestoreTimestamp.serverTimestamp()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ServerTimestampImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime date) date,
    required TResult Function() serverTimestamp,
  }) {
    return serverTimestamp();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime date)? date,
    TResult? Function()? serverTimestamp,
  }) {
    return serverTimestamp?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime date)? date,
    TResult Function()? serverTimestamp,
    required TResult orElse(),
  }) {
    if (serverTimestamp != null) {
      return serverTimestamp();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Date value) date,
    required TResult Function(ServerTimestamp value) serverTimestamp,
  }) {
    return serverTimestamp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Date value)? date,
    TResult? Function(ServerTimestamp value)? serverTimestamp,
  }) {
    return serverTimestamp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Date value)? date,
    TResult Function(ServerTimestamp value)? serverTimestamp,
    required TResult orElse(),
  }) {
    if (serverTimestamp != null) {
      return serverTimestamp(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ServerTimestampImplToJson(
      this,
    );
  }
}

abstract class ServerTimestamp implements FirestoreTimestamp {
  const factory ServerTimestamp() = _$ServerTimestampImpl;

  factory ServerTimestamp.fromJson(Map<String, dynamic> json) =
      _$ServerTimestampImpl.fromJson;
}
