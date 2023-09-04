import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:tinytennis/utils/constants/commonButton.dart';
import 'package:tinytennis/utils/constants/common_EditText.dart';
import 'package:tinytennis/utils/constants/image.dart';
import 'package:tinytennis/view/verify/verify_its_you.dart';
import 'package:tinytennis/view/welcome/welcome.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController email=TextEditingController();

  var _formKey = GlobalKey<FormState>();
  var isLoading = false;

  void _submit() {
    final isValid = _formKey.currentState?.validate();
    if (!isValid!) {
      return;
    }
    _formKey.currentState?.save();
    Get.to(VerifyItsYou());
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Form(
          key: _formKey,
          child: Padding(
            padding: EdgeInsets.all(4.h),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 25.h,),
                  Image.asset(Images.applogo),
                  SizedBox(height: 5.h,),
                  EditText(
                    textController: email,
                    textInputType: TextInputType.emailAddress,
                    hint: 'Email Address', formvalidate: (value) {
                    if(value.isEmpty){
                      return 'Email Required!';
                    }
                    else if (
                        !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                            .hasMatch(value)) {
                      return 'Enter a valid email!';
                    }
                    return null;
                  },),
                  SizedBox(height: 7.h,),
                  CommonButton(width: double.infinity,title: 'Log In', onpress: () {_submit();},)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
