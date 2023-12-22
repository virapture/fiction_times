import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

extension DateTimeExtension on DateTime {
  String get formatYMDEHm {
    return DateFormat.yMEd().add_Hm().format(this);
  }

  String get formatYMEd {
    return DateFormat.yMEd().format(this);
  }

  /// 日本語だと3月1日という表記になる
  String get formatMMMd {
    return DateFormat.MMMd().format(this);
  }

  String get formatYMD {
    return DateFormat.yMd().format(this);
  }

  String get formatYM {
    return DateFormat.yM().format(this);
  }

  /// 日本語だと2023年3月という表記になる
  String get formatYMMM {
    return DateFormat.yMMM().format(this);
  }

  String get formatMEd {
    return DateFormat.MEd().format(this);
  }

  /// 時間情報を除いた日付を返す
  DateTime get dateWithoutTime {
    return DateTime(year, month, day);
  }

  /// 年と月だけを返す
  DateTime get yearMonth {
    return DateTime(year, month);
  }

  /// OpenDate の id に使用する形式
  String toYMDHmSSString() {
    final format = DateFormat('yyyy-MM-dd-HH:mm:ss');
    return format.format(this);
  }

  /// cast の openMonths に使用する形式
  /// fetchedMonths のキーに使用する形式
  String get formatYMKey {
    final format = DateFormat('yyyy-MM');
    return format.format(this);
  }

  /// cast の openDates に使用する形式
  /// eventScreen の id に使用する形式
  String get formatYMDKey {
    final format = DateFormat('yyyy-MM-dd');
    return format.format(this);
  }

  /// fetchedMonths のキーに使用する形式
  String get formatFetchedMonths {
    final format = DateFormat('yyyy-MM');
    return format.format(this);
  }

  /// 時間情報を追加する
  DateTime addTime(TimeOfDay time) {
    return DateTime(year, month, day, time.hour, time.minute);
  }

  /// 時間情報を取得
  TimeOfDay get timeOfDay {
    return TimeOfDay(hour: hour, minute: minute);
  }
}
