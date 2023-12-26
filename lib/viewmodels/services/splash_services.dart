

import 'dart:async';

import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:mvvm1/view/login/login_view.dart';

import '../../resources/routes/routes_name.dart';

class SplashServices {

  void isLogin(){

    Timer(Duration(seconds: 3),
        () => Get.toNamed(RouteName.loginView)
    );

  }
}