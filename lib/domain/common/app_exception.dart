/// Exception をそのまま使うと `Exception: message` という文字列になってしまうので、
/// toString() をオーバーライドして `message` だけを返すようにしている
class AppException implements Exception {
  AppException(this.message);
  final String message;
  @override
  String toString() {
    return message;
  }
}
