import 'package:intl/intl.dart';

extension IntExtension on int {
  String get priceNumber => NumberFormat('#,###').format(this);
}
