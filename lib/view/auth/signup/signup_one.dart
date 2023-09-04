import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:tinytennis/utils/constants/commonButton.dart';
import 'package:tinytennis/utils/constants/commonText.dart';
import 'package:tinytennis/utils/constants/common_EditText.dart';
import 'package:tinytennis/view/auth/signup/signup_complete.dart';

class SignUpFirst extends StatefulWidget {
  const SignUpFirst({Key? key}) : super(key: key);

  @override
  State<SignUpFirst> createState() => _SignUpFirstState();
}

class _SignUpFirstState extends State<SignUpFirst> {
  TextEditingController text = TextEditingController();

  var _formKey = GlobalKey<FormState>();
  var isLoading = false;

  void _submit() {
    final isValid = _formKey.currentState?.validate();
    if (!isValid!) {
      return;
    }
    _formKey.currentState?.save();
    Get.to(SignUPComplete());
    // Perform further actions upon successful form submission
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(4.h),
          child: Form(
            key: _formKey, // Add this line to attach the GlobalKey to the Form
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(onPressed: () {}, icon: Icon(Icons.close))
                  ],
                ),
                SizedBox(height: 3.h,),
                CommonText(title: 'SIGN UP', textSize: 25.sp,),
                SizedBox(height: 6.h,),
                EditText(
                  textController: text,
                  textInputType: TextInputType.text,
                  hint: "Select a Home Studio",
                  formvalidate: (value) {
                    if (value.isEmpty) {
                      return 'Required!';
                    }
                    return null;
                  },
                ),
                Spacer(),
                CommonButton(
                  width: double.infinity,
                  title: "Sign Up",
                  onpress: _submit,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

