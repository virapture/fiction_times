import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../domain/article/article.dart';

part 'article_page_state.freezed.dart';

@freezed
class ArticlePageState with _$ArticlePageState {
  const factory ArticlePageState({
    @Default(AsyncValue<Article>.loading()) AsyncValue<Article> article,
  }) = _ArticlePageState;
}
