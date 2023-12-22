import 'package:fiction_times_app/extensions/build_context.dart';
import 'package:fiction_times_app/routing/app_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'draft_new_page_notifier.dart';

class DraftNewPage extends HookConsumerWidget {
  const DraftNewPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final reporterController = useTextEditingController();
    final sourceController = useTextEditingController();
    final state = ref.watch(draftNewPageProvider);

    final isPosting = state.current is AsyncLoading;

    return Scaffold(
      appBar: AppBar(
        title: const Text('ネタ投稿'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 600), // 最大幅を600に制限
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center, // 子要素を中央に寄せる
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextField(
                  controller: reporterController,
                  decoration: const InputDecoration(
                    labelText: 'Reporter Name',
                    hintText: '素敵な名前を入れてね',
                  ),
                  enabled: !isPosting,
                  maxLength: 20,
                ),
                const SizedBox(height: 16),
                TextField(
                  controller: sourceController,
                  decoration: const InputDecoration(
                    labelText: 'Article Source',
                    hintText: '元ネタになる情報を入れてね。簡単なワードだけでも大丈夫だよ。',
                  ),
                  maxLines: null,
                  minLines: 5,
                  maxLength: 1000,
                  // 無制限の行数
                  keyboardType: TextInputType.multiline,
                  enabled: !isPosting,
                ),
                const SizedBox(height: 24),
                ElevatedButton(
                  onPressed: isPosting
                      ? null
                      : () => _postArticle(context, ref,
                          reporterController.text, sourceController.text),
                  child: isPosting
                      ? const CircularProgressIndicator()
                      : const Text('Post'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _postArticle(BuildContext context, WidgetRef ref,
      String reporter, String source) async {
    await ref
        .read(draftNewPageProvider.notifier)
        .postArticle(reporter: reporter, source: source);
    if (!context.mounted) {
      return;
    }
    // 投稿感謝のダイアログを表示したあとに画面遷移する
    context.showSimple(
      title: '投稿完了',
      content: '投稿が完了しました。ありがとうございます！',
    );
    context.appGoNamed(AppRoute.top);
  }
}
