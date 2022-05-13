import 'package:flutter/material.dart';

class DarkTheme {
  late ThemeData theme;

  DarkTheme() {
    theme = ThemeData(
      appBarTheme: const AppBarTheme(
          centerTitle: true,
          color: Color.fromARGB(255, 246, 198, 69),
          titleTextStyle: TextStyle(fontSize: 35, fontWeight: FontWeight.w400),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)))),
      scaffoldBackgroundColor: const Color.fromARGB(255, 38, 38, 38).withOpacity(0.8),
      colorScheme: const ColorScheme.dark(),
    );
  }
}
