import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvvm1/resources/assets/image_assets.dart';
import 'package:mvvm1/resources/colors/app_colors.dart';
import 'package:mvvm1/resources/components/general_exceptions.dart';
import 'package:mvvm1/resources/components/internet_exception_widget.dart';
import 'package:mvvm1/resources/components/round_button.dart';
import 'package:mvvm1/viewmodels/services/splash_services.dart';

import '../utils/utils.dart';



class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  SplashServices splashService = SplashServices();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    splashService.isLogin();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryColor.withOpacity(1.0),
      body: Center(child: Text('welcome_back'.tr),),

    );

































    //return InternetExcepetionWidget();
    //return GeneralExceptionWidget();
    // return Scaffold(
    //   body: Column(
    //     mainAxisAlignment: MainAxisAlignment.center,
    //     crossAxisAlignment: CrossAxisAlignment.center,
    //     children: [
    //       Center(child: RoundButton(title: 'Login', onPress: (){} , width: 120, height: 40,))
    //     ],
    //   ),
    // );




















    // return Scaffold(
    //   floatingActionButton: FloatingActionButton(onPressed: (){
    //     Utils.toastMessageCenter('Mudasir is Doing Great');
    //   },),
    //   body: Column(
    //     mainAxisAlignment: MainAxisAlignment.center,
    //     crossAxisAlignment: CrossAxisAlignment.center,
    //     children: [
    //
    //       Center(child: Image(image: AssetImage(ImageAssets.splashScreen)))
    //       //TextButton(onPressed: (){}, child: Center(child: Text('ok')))
    //
    //     ],
    //   ),
    // );
  }
}
