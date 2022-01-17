import 'package:flutter/material.dart';

final ThemeData themeData = ThemeData(
  cardColor: Colors.white,
  dividerColor: Colors.grey[300],
  backgroundColor: Colors.grey[100],
  primaryColor: CustomColors.theme[500],
  primaryColorBrightness: Brightness.light,
  colorScheme: ColorScheme.fromSwatch(
    brightness: Brightness.dark,
  ).copyWith(
    secondary: CustomColors.accent[500],
  ),
  scaffoldBackgroundColor: Colors.black,
  navigationBarTheme: const NavigationBarThemeData(
    height: 50,
    backgroundColor: Colors.black,
    indicatorColor: Colors.red,
  ),
);

class CustomColors {
  CustomColors._();
  static const Map<int, Color> theme = <int, Color>{
    500: Color(0xFFFBC812),
    600: Color(0xFFFEAD22),
  };

  static const Map<int, Color> accent = <int, Color>{
    500: Color(0xFFF57C00),
  };
}
