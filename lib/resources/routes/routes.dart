import 'package:get/get.dart';
import 'package:mvvm1/resources/routes/routes_name.dart';
import 'package:mvvm1/view/splash_screen.dart';

import '../../view/login/login_view.dart';



class AppRoutes{

  static appRoutes() => [

    GetPage(
      name: RouteName.splashScreen,
      page: ()=> SplashScreen() ,
      transitionDuration: Duration(milliseconds: 250),
      transition: Transition.leftToRight,

    ),
    GetPage(
      name: RouteName.loginView,
      page: ()=> LoginView() ,
      transitionDuration: Duration(milliseconds: 250),
      transition: Transition.leftToRight,

    ),


  ];


}