import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'draft_new_page_state.freezed.dart';

@freezed
class DraftNewPageState with _$DraftNewPageState {
  const factory DraftNewPageState({
    @Default(AsyncValue.data(null)) AsyncValue<void> current,
  }) = _DraftNewPageState;
}
