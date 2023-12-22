import 'package:freezed_annotation/freezed_annotation.dart';

import '../../extensions/flavor.dart';

part 'image_map.freezed.dart';
part 'image_map.g.dart';

@freezed
abstract class ImageMap implements _$ImageMap {
  const factory ImageMap({
    @Default(0) int width,
    @Default(0) int height,
    @Default('') String path,
    @Default('') String blurHash,
  }) = _ImageMap;

  factory ImageMap.fromJson(Map<String, dynamic> json) =>
      _$ImageMapFromJson(json);
  const ImageMap._();

  String url(ImageSize size) =>
      'https://${flavor.cdnDomain}/$path?w=${size.size}';

  static String defaultIconImagePath() => 'assets/default_icon.png';
}

enum ImageSize { small, medium, large }

extension ImageSizeExtension on ImageSize {
  int get size {
    switch (this) {
      case ImageSize.small:
        return 128;
      case ImageSize.medium:
        return 512;
      case ImageSize.large:
        return 1024;
    }
  }
}
