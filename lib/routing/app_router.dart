import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../pages/splash/splash_page.dart';
import '../pages/splash/splash_page_notifier.dart';
import '../pages/splash/splash_page_state.dart';
import '../pages/top/top_page.dart';
import '../providers.dart';
import 'app_route.dart';

final goRouterProvider = Provider<GoRouter>(
  (ref) {
    final bootState = ref.watch(
      splashPageProvider.select((value) => value.bootState),
    );
    final navigatePageRoute = ref.watch(
      splashPageProvider.select((value) => value.navigatePageRoute),
    );
    final analyticsObserver = ref.watch(analyticsObserverProvider);

    return GoRouter(
      observers: [analyticsObserver],
      initialLocation: () {
        switch (bootState) {
          case BootState.none:
          case BootState.forceUpdate:
          case BootState.maintenance:
            return AppRoute.boot.path;
          case BootState.succeed:
            return navigatePageRoute;
        }
      }(),
      routes: [
        GoRoute(
          path: AppRoute.boot.path,
          name: AppRoute.boot.path,
          builder: (context, state) => const SplashPage(),
        ),
        GoRoute(
          path: AppRoute.top.path,
          name: AppRoute.top.path,
          builder: (context, state) => const TopPage(),
        ),
        GoRoute(
          path: AppRoute.article.path,
          name: AppRoute.article.path,
          builder: (context, state) {
            final articleId = state.pathParameters['id'];
            if (articleId == null) {
              // TODO: 404ページを作成
              // return const NotFoundScreen();
            }
            return SplashPage();
            // return ArticlePage(
            //   articleId: articleId,
            //   article: state.extra as Article?,
            // );
          },
        ),
      ],
    );
  },
);

final appRouterProvider = Provider.autoDispose<AppRouter>(
  AppRouter.new,
);

class AppRouter {
  const AppRouter(this.ref);
  final Ref ref;
  GoRouter get goRouter => ref.watch(goRouterProvider);

  void navigate(String? path) {
    if (path == null) {
      return;
    }
    final id = path.split('/').isNotEmpty ? path.split('/').last : '';
    if (_isArticlePath(path)) {
      goRouter.pushNamed(
        AppRoute.article.path,
        pathParameters: {'id': id},
      );
      return;
    }
    goRouter.pushNamed(path);
  }

  bool _isArticlePath(String path) {
    return path.contains('articles');
  }
}
