import 'package:flutter/material.dart';

// TODO(2ero20ne): Setting Theme
final ThemeData themeData = ThemeData(
  cardColor: Colors.white,
  dividerColor: Colors.grey[300],
  backgroundColor: Colors.grey[100],
  primaryColorBrightness: Brightness.light,
  colorScheme: ColorScheme.fromSwatch(
    brightness: Brightness.dark,
  ),
  scaffoldBackgroundColor: Colors.black,
  navigationBarTheme: const NavigationBarThemeData(
    height: 50,
    backgroundColor: Colors.black,
    indicatorColor: Colors.red,
  ),
);
