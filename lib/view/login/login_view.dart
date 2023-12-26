import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvvm1/resources/components/round_button.dart';

import '../../utils/utils.dart';
import '../../viewmodels/controllers/login_view_model.dart';


class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {

  final loginViewModelController =  Get.put(LoginViewModel());
  final _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
      automaticallyImplyLeading: false,
        title: Center(child: Text('Login'.tr)),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Form(
              key: _formKey,

                child: Column(
              children: [

                TextFormField(
                  controller: loginViewModelController.emailController.value,
                  focusNode: loginViewModelController.emailFocusNode.value,
                  validator: (value){
                    if(value!.isEmpty){
                      Utils.toastMessage('Enter Email');
                      Utils.SnackBar('Email', 'Enter Email');
                    }
                  },
                  onFieldSubmitted: (value){
                    Utils.fieldfocusChange(context, loginViewModelController.emailFocusNode.value, loginViewModelController.passwordFocusNode.value);

                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'email_hint'.tr,
                  ),

                ),
                SizedBox(height: 20,),
                TextFormField(
                  controller: loginViewModelController.passwordController.value,
                  focusNode: loginViewModelController.passwordFocusNode.value,
                  validator: (value){
                    if(value!.isEmpty){
                      Utils.toastMessage('Enter Password');
                      Utils.SnackBar('Password', 'Password Box Empty');
                    }
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Password_hint'.tr,
                  ),
                ),

              ],
            )),


            SizedBox(height: 20,),

           Obx(() =>  RoundButton(title: 'Login'.tr,  width: 120,
             loading: loginViewModelController.loading.value,
             onPress: (){

               if(_formKey.currentState!= null && _formKey.currentState!.validate()){
                 loginViewModelController.loginApi();

               }
             } ,))


          ],
        ),
      )
    );
  }
}
