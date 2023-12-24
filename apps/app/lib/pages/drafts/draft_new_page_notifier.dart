import 'package:fiction_times_app/domain/article/article_repository.dart';
import 'package:fiction_times_app/domain/common/app_exception.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../domain/article/article.dart';
import '../../providers.dart';
import 'draft_new_page_state.dart';

final draftNewPageProvider =
    StateNotifierProvider<DraftNewPageNotifier, DraftNewPageState>(
  DraftNewPageNotifier.new,
);

class DraftNewPageNotifier extends StateNotifier<DraftNewPageState> {
  DraftNewPageNotifier(this.ref)
      : _articleRepository = ref.read(articleRepositoryProvider),
        super(const DraftNewPageState(current: AsyncValue.data(null)));
  final Ref ref;
  final ArticleRepository _articleRepository;

  Future<Article?> postArticle(
      {String? reporter, required String source}) async {
    try {
      state = state.copyWith(current: const AsyncValue.loading());
      final article = await _articleRepository.createArticle(
          reporter: reporter ?? 'Anonymous', source: source);
      if (article.error.isNotEmpty) {
        final error = AppException(article.error!);
        state = state.copyWith(
            current: AsyncValue.error(error, StackTrace.current));
        return null;
      }
      state = state.copyWith(current: const AsyncValue.data(null));
      return article;
    } catch (e, stackTrace) {
      state = state.copyWith(current: AsyncValue.error(e, stackTrace));
      return null;
    }
  }
}
