import 'dart:io';

final flavor = Flavor.values.firstWhere(
  (e) => e.toString() == 'Flavor.${const String.fromEnvironment('FLAVOR')}',
);

enum Flavor { local, dev, prod }

extension FlavorExtension on Flavor {
  String get domain {
    switch (this) {
      case Flavor.local:
        if (Platform.isAndroid) {
          return '10.0.2.2';
        }
        return 'localhost';
      case Flavor.dev:
        return 'fiction-times.mogmet.com';
      case Flavor.prod:
        return 'fiction-times.mogmet.com';
    }
  }

  String get cdnDomain {
    return 'cdn-$domain';
  }

  String get appUrl {
    switch (this) {
      case Flavor.local:
        return 'http://$domain:3000';
      case Flavor.dev:
      case Flavor.prod:
        return 'https://$domain';
    }
  }
}
