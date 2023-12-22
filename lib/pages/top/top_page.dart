import 'package:flutter/material.dart';

class TopPage extends StatelessWidget {
  const TopPage({super.key});

  @override
  Widget build(BuildContext context) {
    // ラベルだけ表示
    return const Scaffold(
      body: Center(
        child: Text('Top'),
      ),
    );
  }
}
