import 'dart:async';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uni_links/uni_links.dart';

class DeepLinkService extends StateNotifier<String?> {
  DeepLinkService() : super(null);

  Future<void> setup() async {
    final initialLink = await getInitialLink();
    if (initialLink != null) {
      moveFromDeepLink(initialLink);
    }
    linkStream.listen(moveFromDeepLink);
  }

  void moveFromDeepLink(String? deepLinkPath) {
    if (deepLinkPath == null) {
      return;
    }
    final uri = Uri.parse(deepLinkPath);
    state = uri.path;
  }
}
