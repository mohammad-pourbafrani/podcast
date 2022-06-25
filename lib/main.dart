import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:podcast/languages.dart';
import 'package:podcast/view/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translations: Languages(),
      locale: Get.deviceLocale,
      fallbackLocale: const Locale('en', 'US'),
      home: const MainScreen(),
    );
  }
}
