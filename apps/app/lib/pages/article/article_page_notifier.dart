import 'package:fiction_times_app/domain/article/article_repository.dart';
import 'package:fiction_times_app/domain/common/app_exception.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../domain/article/article.dart';
import '../../providers.dart';
import 'article_page_state.dart';

final articlePageProvider =
    StateNotifierProvider<ArticlePageNotifier, ArticlePageState>(
  ArticlePageNotifier.new,
);

class ArticlePageNotifier extends StateNotifier<ArticlePageState> {
  ArticlePageNotifier(this.ref)
      : _articleRepository = ref.read(articleRepositoryProvider),
        super(const ArticlePageState());
  final Ref ref;
  final ArticleRepository _articleRepository;

  Future<void> setup({required String articleId, Article? article}) async {
    try {
      if (article != null) {
        state = state.copyWith(article: AsyncValue.data(article));
        return;
      }
      state = state.copyWith(article: const AsyncValue.loading());
      final fetchedArticle = await _articleRepository.fetchArticle(articleId);
      if (fetchedArticle == null) {
        final error = AppException('NotFound');
        state = state.copyWith(
            article: AsyncValue.error(error, StackTrace.current));
        return;
      }
      state = state.copyWith(article: AsyncValue.data(fetchedArticle));
    } catch (e, stackTrace) {
      state = state.copyWith(article: AsyncValue.error(e, stackTrace));
    }
  }
}
