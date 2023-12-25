import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';

class PlatformAwareAssetImage extends StatelessWidget {
  final String assetPath;
  final BoxFit fit;
  final double? height;

  const PlatformAwareAssetImage({
    super.key,
    required this.assetPath,
    this.fit = BoxFit.contain,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    final imagePath = kIsWeb ? 'assets/$assetPath' : assetPath;
    return Image.asset(imagePath, fit: fit, height: height);
  }
}
