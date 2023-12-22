/// エラーじゃないけどメッセージを表示したいときに使うException
class MessageException implements Exception {
  MessageException(this.message);

  final String message;

  @override
  String toString() {
    return message;
  }
}
