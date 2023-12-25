// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'splash_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SplashPageState {
  String get navigatePageRoute => throw _privateConstructorUsedError;
  BootState get bootState => throw _privateConstructorUsedError;
  AsyncValue<void> get currentState => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SplashPageStateCopyWith<SplashPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SplashPageStateCopyWith<$Res> {
  factory $SplashPageStateCopyWith(
          SplashPageState value, $Res Function(SplashPageState) then) =
      _$SplashPageStateCopyWithImpl<$Res, SplashPageState>;
  @useResult
  $Res call(
      {String navigatePageRoute,
      BootState bootState,
      AsyncValue<void> currentState});
}

/// @nodoc
class _$SplashPageStateCopyWithImpl<$Res, $Val extends SplashPageState>
    implements $SplashPageStateCopyWith<$Res> {
  _$SplashPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? navigatePageRoute = null,
    Object? bootState = null,
    Object? currentState = null,
  }) {
    return _then(_value.copyWith(
      navigatePageRoute: null == navigatePageRoute
          ? _value.navigatePageRoute
          : navigatePageRoute // ignore: cast_nullable_to_non_nullable
              as String,
      bootState: null == bootState
          ? _value.bootState
          : bootState // ignore: cast_nullable_to_non_nullable
              as BootState,
      currentState: null == currentState
          ? _value.currentState
          : currentState // ignore: cast_nullable_to_non_nullable
              as AsyncValue<void>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SplashPageStateImplCopyWith<$Res>
    implements $SplashPageStateCopyWith<$Res> {
  factory _$$SplashPageStateImplCopyWith(_$SplashPageStateImpl value,
          $Res Function(_$SplashPageStateImpl) then) =
      __$$SplashPageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String navigatePageRoute,
      BootState bootState,
      AsyncValue<void> currentState});
}

/// @nodoc
class __$$SplashPageStateImplCopyWithImpl<$Res>
    extends _$SplashPageStateCopyWithImpl<$Res, _$SplashPageStateImpl>
    implements _$$SplashPageStateImplCopyWith<$Res> {
  __$$SplashPageStateImplCopyWithImpl(
      _$SplashPageStateImpl _value, $Res Function(_$SplashPageStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? navigatePageRoute = null,
    Object? bootState = null,
    Object? currentState = null,
  }) {
    return _then(_$SplashPageStateImpl(
      navigatePageRoute: null == navigatePageRoute
          ? _value.navigatePageRoute
          : navigatePageRoute // ignore: cast_nullable_to_non_nullable
              as String,
      bootState: null == bootState
          ? _value.bootState
          : bootState // ignore: cast_nullable_to_non_nullable
              as BootState,
      currentState: null == currentState
          ? _value.currentState
          : currentState // ignore: cast_nullable_to_non_nullable
              as AsyncValue<void>,
    ));
  }
}

/// @nodoc

class _$SplashPageStateImpl implements _SplashPageState {
  _$SplashPageStateImpl(
      {this.navigatePageRoute = '/',
      this.bootState = BootState.none,
      this.currentState = const AsyncData(null)});

  @override
  @JsonKey()
  final String navigatePageRoute;
  @override
  @JsonKey()
  final BootState bootState;
  @override
  @JsonKey()
  final AsyncValue<void> currentState;

  @override
  String toString() {
    return 'SplashPageState(navigatePageRoute: $navigatePageRoute, bootState: $bootState, currentState: $currentState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SplashPageStateImpl &&
            (identical(other.navigatePageRoute, navigatePageRoute) ||
                other.navigatePageRoute == navigatePageRoute) &&
            (identical(other.bootState, bootState) ||
                other.bootState == bootState) &&
            (identical(other.currentState, currentState) ||
                other.currentState == currentState));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, navigatePageRoute, bootState, currentState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SplashPageStateImplCopyWith<_$SplashPageStateImpl> get copyWith =>
      __$$SplashPageStateImplCopyWithImpl<_$SplashPageStateImpl>(
          this, _$identity);
}

abstract class _SplashPageState implements SplashPageState {
  factory _SplashPageState(
      {final String navigatePageRoute,
      final BootState bootState,
      final AsyncValue<void> currentState}) = _$SplashPageStateImpl;

  @override
  String get navigatePageRoute;
  @override
  BootState get bootState;
  @override
  AsyncValue<void> get currentState;
  @override
  @JsonKey(ignore: true)
  _$$SplashPageStateImplCopyWith<_$SplashPageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
