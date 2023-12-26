
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:mvvm1/resources/colors/app_colors.dart';

class Utils{

  static void fieldfocusChange(BuildContext context , FocusNode current , FocusNode nextFocus){

    current.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);

  }

  static toastMessage (String message){
    Fluttertoast.showToast(
      msg: message,
      backgroundColor: AppColor.blackColor,
      gravity: ToastGravity.BOTTOM,

    );

  }
  static toastMessageCenter (String message){
    Fluttertoast.showToast(
      msg: message,
      backgroundColor: AppColor.blackColor,
      textColor: AppColor.whiteColor,
      gravity: ToastGravity.CENTER,
      toastLength: Toast.LENGTH_LONG,


    );

  }

  static SnackBar(String title ,  String message ){
    Get.snackbar(
      title,
      message,
    );

  }
}