import 'package:flutter/material.dart';

import 'app_color.dart';

class AppThemeData {
  static ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: AppColor.accent,
    primaryColorDark: AppColor.primaryDark,
    accentColor: AppColor.accent,
    scaffoldBackgroundColor: AppColor.white,
    highlightColor: AppColor.accent,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    appBarTheme: const AppBarTheme(
      color: AppColor.primaryDark
    ),


  );
}
