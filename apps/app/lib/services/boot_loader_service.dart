import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../pages/splash/splash_page_state.dart';
import '../routing/app_route.dart';

abstract class ABootLoaderService {
  Future<SplashPageState> setUp();
}

class BootLoaderService implements ABootLoaderService {
  BootLoaderService(this.ref);
  final Ref ref;

  @override
  Future<SplashPageState> setUp() async {
    // 後々いろんな初期化する
    return SplashPageState(
      bootState: BootState.succeed,
      navigatePageRoute: AppRoute.top.path,
    );
  }
}
