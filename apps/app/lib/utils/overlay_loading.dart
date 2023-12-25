import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// アプリ全体に半透明のローディング画面を重ねるかどうか
final overlayLoadingProvider =
    StateNotifierProvider<OverlayLoadingNotifier, bool>((ref) {
  return OverlayLoadingNotifier();
});

/// 二度押しを防止したいときなどの重ねるローディングウィジェット
class OverlayLoading extends StatelessWidget {
  const OverlayLoading({
    super.key,
    this.backgroundColor = Colors.black26,
  });

  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: backgroundColor,
      child: const SizedBox.expand(
        child: Center(child: CircularProgressIndicator()),
      ),
    );
  }
}

class OverlayLoadingNotifier extends StateNotifier<bool> {
  OverlayLoadingNotifier() : super(false);

  void show() => state = true;

  void hide() => state = false;
}
