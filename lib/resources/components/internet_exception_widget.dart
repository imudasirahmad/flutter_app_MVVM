

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvvm1/resources/colors/app_colors.dart';

import '../../utils/utils.dart';

class InternetExcepetionWidget extends StatefulWidget {
  const InternetExcepetionWidget({super.key});

  @override
  State<InternetExcepetionWidget> createState() => _InternetExcepetionWidgetState();
}

class _InternetExcepetionWidgetState extends State<InternetExcepetionWidget> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric( vertical: 300 ),
        child: Column(
          children: [
            Icon(Icons.cloud_off ,color: AppColor.redColor, size: 60,),
            Padding(
              padding: const EdgeInsets.only(top: 10 ),
              child: Text('internet_exception'.tr ,),
            ),
            SizedBox(height: height * .03,),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 170),
                  child: InkWell(
                    onTap: (){
                      Utils.toastMessage("Check Internet ") ;
                      //showSnackBar(context);
                      //Utils.toastMessage(message = "Retry"),
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColor.primaryButtonColor
                      ),
                      //alignment: AlignmentDirectional
                      height: 40,
                      width: 60,
                      child: Center(child: Text('Retry')),
                    ),
                  ),
                ),

              ],
            )
            //SizedBox(height: height * .15,),


          ],
        ),
      ),
    );
  }
}
