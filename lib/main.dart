import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:podcast/consts/app_colors.dart';
import 'package:podcast/languages.dart';
import 'package:podcast/theme.dart';
import 'package:podcast/view/main_screen.dart';

void main() {
  // SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
  //   statusBarColor: AppColors.colorLightScaffold,
  //   statusBarIconBrightness: Brightness.dark,
  //   systemNavigationBarColor: AppColors.colorLightScaffold,
  //   systemNavigationBarIconBrightness: Brightness.dark,
  // ));

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
      theme: Themes.lightTheme,
      darkTheme: Themes.darkTheme,
      home: MainScreen(),
    );
  }
}
