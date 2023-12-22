import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

extension TimeOfDayExtension on TimeOfDay {
  String get formatHm {
    // 年と月と日は表示に必要なく関係ないのでダミーの値を入れている
    final date = DateTime(2000, 1, 1, hour, minute);
    return DateFormat.Hm().format(date);
  }

  bool isBefore(TimeOfDay other) {
    return hour < other.hour || (hour == other.hour && minute < other.minute);
  }

  bool isAfter(TimeOfDay other) {
    return hour > other.hour || (hour == other.hour && minute > other.minute);
  }
}
