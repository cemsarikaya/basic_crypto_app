import 'package:basic_crypto_app/product/constant/project_items.dart';
import 'package:basic_crypto_app/product/global/theme_notifier.dart';
import 'package:basic_crypto_app/view/crypto_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [ChangeNotifierProvider<ThemeNotifer>(create: (context) => ThemeNotifer())],
    builder: (context, child) => const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: ProjectItems.projectName,
        debugShowCheckedModeBanner: false,
        theme: context.watch<ThemeNotifer>().currentTheme,
        home: const CryptoView());
  }
}
