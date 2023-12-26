import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:mvvm1/resources/getx_localization/languages.dart';
import 'package:mvvm1/resources/routes/routes.dart';
import 'package:mvvm1/view/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'GETX_MVVM SERIES',
      translations: Languages(),
      locale: Locale('en' , 'US'),
      fallbackLocale: Locale('en' , 'US'),
      getPages: AppRoutes.appRoutes(),


      home: SplashScreen()
    );
  }
}

