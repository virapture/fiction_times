import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../domain/article/article.dart';

part 'top_page_state.freezed.dart';

@freezed
class TopPageState with _$TopPageState {
  const factory TopPageState({
    @Default(AsyncValue<List<Article>>.loading())
    AsyncValue<List<Article>> articles,
  }) = _TopPageState;
}
