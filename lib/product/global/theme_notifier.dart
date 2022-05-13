import 'package:basic_crypto_app/product/constant/light_theme.dart';
import 'package:basic_crypto_app/product/dark_theme.dart';
import 'package:flutter/material.dart';

class ThemeNotifer extends ChangeNotifier {
  bool isLighTheme = false;

  void changeTheme() {
    isLighTheme = !isLighTheme;
    notifyListeners();
  }

  ThemeData get currentTheme => !isLighTheme ? LighTheme().theme : DarkTheme().theme;
}
