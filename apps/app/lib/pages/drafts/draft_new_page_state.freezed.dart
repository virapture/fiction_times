// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'draft_new_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DraftNewPageState {
  AsyncValue<void> get current => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DraftNewPageStateCopyWith<DraftNewPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DraftNewPageStateCopyWith<$Res> {
  factory $DraftNewPageStateCopyWith(
          DraftNewPageState value, $Res Function(DraftNewPageState) then) =
      _$DraftNewPageStateCopyWithImpl<$Res, DraftNewPageState>;
  @useResult
  $Res call({AsyncValue<void> current});
}

/// @nodoc
class _$DraftNewPageStateCopyWithImpl<$Res, $Val extends DraftNewPageState>
    implements $DraftNewPageStateCopyWith<$Res> {
  _$DraftNewPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? current = null,
  }) {
    return _then(_value.copyWith(
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as AsyncValue<void>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DraftNewPageStateImplCopyWith<$Res>
    implements $DraftNewPageStateCopyWith<$Res> {
  factory _$$DraftNewPageStateImplCopyWith(_$DraftNewPageStateImpl value,
          $Res Function(_$DraftNewPageStateImpl) then) =
      __$$DraftNewPageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AsyncValue<void> current});
}

/// @nodoc
class __$$DraftNewPageStateImplCopyWithImpl<$Res>
    extends _$DraftNewPageStateCopyWithImpl<$Res, _$DraftNewPageStateImpl>
    implements _$$DraftNewPageStateImplCopyWith<$Res> {
  __$$DraftNewPageStateImplCopyWithImpl(_$DraftNewPageStateImpl _value,
      $Res Function(_$DraftNewPageStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? current = null,
  }) {
    return _then(_$DraftNewPageStateImpl(
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as AsyncValue<void>,
    ));
  }
}

/// @nodoc

class _$DraftNewPageStateImpl implements _DraftNewPageState {
  const _$DraftNewPageStateImpl({this.current = const AsyncValue.data(null)});

  @override
  @JsonKey()
  final AsyncValue<void> current;

  @override
  String toString() {
    return 'DraftNewPageState(current: $current)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DraftNewPageStateImpl &&
            (identical(other.current, current) || other.current == current));
  }

  @override
  int get hashCode => Object.hash(runtimeType, current);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DraftNewPageStateImplCopyWith<_$DraftNewPageStateImpl> get copyWith =>
      __$$DraftNewPageStateImplCopyWithImpl<_$DraftNewPageStateImpl>(
          this, _$identity);
}

abstract class _DraftNewPageState implements DraftNewPageState {
  const factory _DraftNewPageState({final AsyncValue<void> current}) =
      _$DraftNewPageStateImpl;

  @override
  AsyncValue<void> get current;
  @override
  @JsonKey(ignore: true)
  _$$DraftNewPageStateImplCopyWith<_$DraftNewPageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
