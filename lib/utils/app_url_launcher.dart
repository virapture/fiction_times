import 'package:fiction_times_app/domain/common/app_exception.dart';
import 'package:url_launcher/url_launcher_string.dart';

// ignore: avoid_classes_with_only_static_members
class AppUrlLauncher {
  static Future<void> launchUrl(String url) async {
    if (!await canLaunchUrlString(url)) {
      throw AppException('The URL cannot be launched.');
    }
    await launchUrlString(url);
  }
}
