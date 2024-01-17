import 'package:flutter/material.dart';

ThemeData lightTheme() {
  return ThemeData(
    fontFamily: 'Ubuntu',
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xFF5fc092),
      onPrimary: Color(0xFF1b211d),
      error: Color(0xFFF44336),
      onError: Color(0xFFFFFFFF),
      background: Color(0xFFbbe4cd),
      onBackground: Color(0xFF1b211d),
      secondary: Color(0xFF5fc092),
      onSecondary: Color(0xFF1b211d),
      surface: Color(0xFFbbe4cd),
      onSurface: Color(0xFF1b211d),
    ),
  );
}

ThemeData darkTheme() {
  return ThemeData(
    fontFamily: 'Ubuntu',
    colorScheme: const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xFF1b211d),
      onPrimary: Color(0xFFFFFFFF),
      error: Colors.red,
      onError: Color(0xFFFFFFFF),
      background: Color(0xFF1b211d),
      onBackground: Color(0xFFFFFFFF),
      secondary: Color(0xFF5FC092),
      onSecondary: Color(0xFFFFFFFF),
      surface: Color(0xFF1b211d),
      onSurface: Color(0xFFFFFFFF),
    ),
  );
}
