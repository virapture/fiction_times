extension IterableExtension<T> on Iterable<T> {
  /// index を付与した map
  Iterable<R> mapWithIndex<R>(R Function(int index, T value) f) sync* {
    var index = 0;
    for (final value in this) {
      yield f(index, value);
      index++;
    }
  }
}
