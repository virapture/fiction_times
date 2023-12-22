import 'package:fiction_times_app/extensions/build_context.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../widgets/logo_view.dart';
import 'splash_page_notifier.dart';
import 'splash_page_state.dart';

class SplashPage extends HookConsumerWidget {
  const SplashPage({super.key});

  static const routePath = '/';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.watch(splashPageProvider.notifier);
    useEffect(
      () {
        Future.microtask(() => ref.read(splashPageProvider.notifier).setup());
        return null;
      },
      [],
    );
    ref.listen<SplashPageState>(
      splashPageProvider,
      (previous, next) {
        switch (next.bootState) {
          case BootState.forceUpdate:
            showUpdateDialog(context);
            break;
          case BootState.maintenance:
            showMaintenanceDialog(context);
            break;
          case BootState.succeed:
          case BootState.none:
            break;
        }
        if (previous?.currentState != next.currentState) {
          context.showErrorDialogOrMessageToast(
            ref,
            next.currentState,
            onButtonClicked: notifier.setup,
          );
        }
      },
    );
    return const Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 32),
          child: LogoView(),
        ),
      ),
    );
  }

  /// 強制アップデートの場合は永遠とアップデートを表示
  void showUpdateDialog(BuildContext context) {
    // TODO: ここでアップデートのダイアログを表示
  }

  /// メンテ中は永遠とメンテを表示
  void showMaintenanceDialog(BuildContext context) {
    // TODO: ここでメンテのダイアログを表示
  }
}
