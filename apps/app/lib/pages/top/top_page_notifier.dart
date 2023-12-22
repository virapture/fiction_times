import 'package:fiction_times_app/domain/article/article_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../providers.dart';
import 'top_page_state.dart';

final topPageProvider = StateNotifierProvider<TopPageNotifier, TopPageState>(
  TopPageNotifier.new,
);

class TopPageNotifier extends StateNotifier<TopPageState> {
  TopPageNotifier(this.ref)
      : _articleRepository = ref.read(articleRepositoryProvider),
        super(const TopPageState());
  final Ref ref;
  final ArticleRepository _articleRepository;

  Future<void> setup() async {
    try {
      state = state.copyWith(articles: const AsyncValue.loading());
      final articles = await _articleRepository.fetchArticles();
      state = state.copyWith(articles: AsyncValue.data(articles));
    } catch (e, stackTrace) {
      state = state.copyWith(articles: AsyncValue.error(e, stackTrace));
    }
  }
}
