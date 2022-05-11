import 'package:basic_crypto_app/product/constant/light_theme.dart';
import 'package:basic_crypto_app/view/crypto_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Crypto App', theme: LighTheme().theme, home: const CryptoView());
  }
}
