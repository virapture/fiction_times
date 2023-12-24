import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../extensions/build_context.dart';
import '../../routing/app_route.dart';
import 'top_page_notifier.dart';

class TopPage extends HookConsumerWidget {
  const TopPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useEffect(
      () {
        Future.microtask(() => ref.read(topPageProvider.notifier).setup());
        return null;
      },
      [],
    );
    // TopPageStateを監視
    final state = ref.watch(topPageProvider);

    return Scaffold(
      appBar: AppBar(
        flexibleSpace: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return Padding(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).padding.top,
              ),
              child: Center(
                child: Image.asset(
                  'logo.png',
                  height: constraints.maxHeight -
                      MediaQuery.of(context).padding.top, // AppBarの高さに合わせて調整
                ),
              ),
            );
          },
        ),
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 600), // 最大幅の制限
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: state.articles.when(
              loading: () => const CircularProgressIndicator(),
              error: (error, stack) => Text('Error: $error'),
              data: (articles) => ListView.builder(
                  itemCount: articles.length,
                  itemBuilder: (context, index) {
                    return Card(
                        margin: const EdgeInsets.all(8),
                        child: ListTile(
                          leading: const Icon(Icons.article),
                          title: Text(
                            articles[index].title,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          onTap: () {
                            // タップ時の動作（例：詳細ページへの遷移）
                            context.appPushNamed(AppRoute.article,
                                params: {
                                  'id': articles[index].id,
                                },
                                extra: articles[index]);
                          },
                        ));
                  }),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          context.appPushNamed(AppRoute.draftNew);
        },
        icon: const Icon(Icons.add),
        label: const Text('ネタをタレこむ'),
      ),
    );
  }
}
