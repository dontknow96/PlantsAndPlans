import 'package:flutter/material.dart';

class GlobalThemeData {
  static ThemeData lightThemeData = ThemeData(
    colorScheme: lightColorScheme,
    focusColor: lightFocusColor,
  );

  static const ColorScheme lightColorScheme = ColorScheme(
      brightness: Brightness.light,
      primary: Color.fromARGB(255, 67, 100, 54),
      onPrimary: Color.fromARGB(255, 249, 234, 218),
      secondary: Color.fromARGB(255, 252, 170, 103),
      onSecondary: Color.fromARGB(255, 0, 0, 0),
      tertiary: Color.fromARGB(255, 230, 248, 178),
      onTertiary: Color.fromARGB(255, 0, 0, 0),
      error: Color.fromARGB(255, 216, 59, 41),
      onError: Color.fromARGB(255, 255, 255, 255),
      background: Color.fromARGB(255, 220, 193, 168),
      onBackground: Color.fromARGB(255, 0, 0, 0),
      surface: Color.fromARGB(255, 249, 234, 218),
      onSurface: Color.fromARGB(255, 0, 0, 0),
  );

  static const Color lightFocusColor = Color.fromARGB(20, 0, 0, 0);
}
