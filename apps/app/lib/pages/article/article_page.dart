import 'package:fiction_times_app/domain/common/firestore_timestamp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../domain/article/article.dart';
import 'article_page_notifier.dart';

class ArticlePage extends HookConsumerWidget {
  const ArticlePage({super.key, required this.articleId, this.article});
  final String articleId;
  final Article? article;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(articlePageProvider);
    String appBarTitle = state.article.maybeWhen(
      data: (article) => article.title, // 記事データがある場合、記事のタイトルを使用
      orElse: () => 'Loading...', // それ以外（ロード中、エラー）の場合は「Loading...」を表示
    );
    useEffect(
      () {
        Future.microtask(() => ref
            .read(articlePageProvider.notifier)
            .setup(articleId: articleId, article: article));
        return null;
      },
      [],
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(appBarTitle),
      ),
      body: state.article.when(
        loading: () => const CircularProgressIndicator(),
        error: (error, stack) => Text('Error: $error'),
        data: (article) => SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  article.title,
                  style: Theme.of(context).textTheme.headline4?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const SizedBox(height: 10),
                // TODO: 画像表示したい
                // Container(
                //   height: 200,
                //   width: double.infinity,
                //   color: Colors.grey[300],
                //   child: const Center(child: Text('Article Image')),
                // ),
                const SizedBox(height: 10),
                Text(
                  article.body,
                  style: Theme.of(context).textTheme.bodyText2?.copyWith(
                        height: 1.5,
                      ),
                ),
                const SizedBox(height: 10),
                Text(
                  'Published on ${article.createdAt.toDate().toLocal()}',
                  style: Theme.of(context).textTheme.caption,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
