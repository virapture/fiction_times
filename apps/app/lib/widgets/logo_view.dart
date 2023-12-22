import 'package:flutter/material.dart';

class LogoView extends StatelessWidget {
  const LogoView({this.size, super.key});
  final double? size;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/top_logo.webp',
      width: size,
    );
  }
}
