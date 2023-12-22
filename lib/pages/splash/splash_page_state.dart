import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'splash_page_state.freezed.dart';

@freezed
class SplashPageState with _$SplashPageState {
  factory SplashPageState({
    @Default('/') String navigatePageRoute,
    @Default(BootState.none) BootState bootState,
    @Default(AsyncData(null)) AsyncValue<void> currentState,
  }) = _SplashPageState;
}

enum BootState { none, forceUpdate, maintenance, succeed }
