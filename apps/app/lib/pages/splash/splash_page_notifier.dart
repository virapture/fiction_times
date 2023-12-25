import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../providers.dart';
import '../../services/boot_loader_service.dart';
import 'splash_page_state.dart';

final splashPageProvider =
    StateNotifierProvider<SplashPageNotifier, SplashPageState>(
  SplashPageNotifier.new,
);

class SplashPageNotifier extends StateNotifier<SplashPageState> {
  SplashPageNotifier(this.ref) : super(SplashPageState());

  final Ref ref;
  ABootLoaderService get _bootLoaderService =>
      ref.read(bootLoaderServiceProvider);

  Future<void> setup() async {
    try {
      state = await _bootLoaderService.setUp();
    } on Exception catch (e) {
      state = state.copyWith(currentState: AsyncError(e, StackTrace.current));
    }
  }
}
