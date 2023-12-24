import 'package:flutter/material.dart';

// ignore: avoid_classes_with_only_static_members
class OriginalTheme {
  static final themeData = ThemeData(
    disabledColor: fillSecondary,
    primaryTextTheme: const TextTheme(
      bodyLarge: TextStyle(color: Color(0xff222222)),
      bodyMedium: TextStyle(color: Color(0xff666666)),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: backgroundQuaternary,
      centerTitle: true,
      elevation: 1,
      shadowColor: dividerPrimary,
      iconTheme: IconThemeData(color: Colors.white),
      actionsIconTheme: IconThemeData(color: link),
      titleTextStyle: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.white,
        fontSize: 17,
      ),
    ),
    dividerTheme: const DividerThemeData(
      color: dividerPrimary,
      thickness: 1,
    ),
    scaffoldBackgroundColor: backgroundPrimary,
    inputDecorationTheme: InputDecorationTheme(
      fillColor: backgroundSecondary,
      hintStyle:
          const TextStyle(fontWeight: FontWeight.normal, color: textSecondary),
      suffixIconColor: fillPrimary,
      filled: true,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: BorderSide.none,
      ),
    ),
    dividerColor: dividerPrimary,
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: accent,
      foregroundColor: Colors.white,
      iconSize: 30,
    ),
    colorScheme: ColorScheme.fromSwatch().copyWith(
      secondary: accent,
      tertiary: accentLight,
      onPrimaryContainer: fillPrimary,
      onSecondaryContainer: fillSecondary,
      onTertiaryContainer: backgroundSecondary,
      secondaryContainer: backgroundQuaternary,
      background: backgroundPrimary,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: backgroundPrimary,
      selectedIconTheme: IconThemeData(color: fillPrimary),
      selectedLabelStyle: TextStyle(color: fillPrimary),
      selectedItemColor: fillPrimary,
      unselectedIconTheme: IconThemeData(color: fillSecondary),
      unselectedLabelStyle: TextStyle(color: fillSecondary),
      unselectedItemColor: fillSecondary,
    ),
    buttonTheme: const ButtonThemeData(
      colorScheme: ColorScheme.light(
        onPrimary: fillPrimary,
        onSecondary: fillSecondary,
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        overlayColor: MaterialStateProperty.all(Colors.transparent),
        textStyle: MaterialStateProperty.all(
          const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
    ),
    textTheme: const TextTheme(
      labelMedium: TextStyle(color: Colors.white, fontSize: 16),
      bodySmall: TextStyle(color: textSecondary),
      labelSmall: TextStyle(color: textQuaternary, fontSize: 16),
      labelLarge: TextStyle(color: link, fontSize: 16),
    ),
    iconTheme: const IconThemeData(color: Colors.white),
    tabBarTheme: const TabBarTheme(
      labelColor: textPrimary,
      indicator: UnderlineTabIndicator(
        borderSide: BorderSide(color: textPrimary, width: 2),
      ),
      unselectedLabelColor: textSecondary,
    ),
    checkboxTheme: CheckboxThemeData(
      fillColor: MaterialStateProperty.all(positive),
      checkColor: MaterialStateProperty.all(Colors.white),
      side: const BorderSide(
        color: fillSecondary,
        width: 2,
      ),
    ),
    hintColor: textTertiary,
    toggleButtonsTheme: const ToggleButtonsThemeData(selectedColor: review),
  );

  static const textPrimary = Color(0xff333333);
  static const textSecondary = Color(0xff757575);
  static const textTertiary = Color(0xffAAAAAA);

  static const textQuaternary = Colors.white;

  static const backgroundPrimary = Colors.white;
  static const backgroundSecondary = Color(0xffF5F5F5);
  static const backgroundTertiary = Color(0xffCACACA);
  static const backgroundQuaternary = Color(0xff666666);

  static const fillPrimary = Color(0xff222222);
  static const fillSecondary = Color(0xffAAAAAA);
  static const fillTertiary = Colors.white;

  static const dividerPrimary = Color(0xffCCCCCC);
  static const dividerSecondary = Color(0xffEEEEEE);

  static const accent = Color(0xff3B82F6);
  static const accentMiddle = Color(0xff8dadff);
  static const accentLight = Color(0xffDCEEFB);
  static const review = Color(0xffFFA133);
  static const link = Color(0xff1C76FC);
  static const negative = Color(0xffEF4444);
  static const positive = Color(0xff10B981);
  static const caution = Color(0xffF6C00C);

  static final calendarHolidayBackground =
      const Color(0xffEF4444).withOpacity(0.1);

  static const transparent = Colors.transparent;
}
