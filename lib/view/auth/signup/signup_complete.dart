import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:tinytennis/utils/constants/commonButton.dart';
import 'package:tinytennis/utils/constants/commonText.dart';
import 'package:tinytennis/utils/constants/common_EditText.dart';
import 'package:tinytennis/view/welcome/welcome.dart';

class SignUPComplete extends StatefulWidget {
  const SignUPComplete({Key? key}) : super(key: key);

  @override
  State<SignUPComplete> createState() => _SignUPCompleteState();
}

class _SignUPCompleteState extends State<SignUPComplete> {
  TextEditingController name = TextEditingController();
  TextEditingController fname = TextEditingController();
  TextEditingController lname = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController age = TextEditingController();
  TextEditingController gender = TextEditingController();
  TextEditingController text = TextEditingController();
  TextEditingController phone = TextEditingController();

  var _formKey = GlobalKey<FormState>();
  var isLoading = false;

  void _submit() {
    final isValid = _formKey.currentState?.validate();
    if (!isValid!) {
      return;
    }
    _formKey.currentState?.save();
    Get.to(Welcome());
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
            child: SingleChildScrollView(
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
                    textController: name,
                    textInputType: TextInputType.text,
                    hint: "Name",
                    formvalidate: (value) {
                      if (value.isEmpty) {
                        return 'Required Name!';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 0.5.h,),
                  EditText(
                    textController: fname,
                    textInputType: TextInputType.text,
                    hint: "First Name",
                    formvalidate: (value) {
                      if (value.isEmpty) {
                        return 'Required First Name!';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 0.5.h,),
                  EditText(
                    textController: lname,
                    textInputType: TextInputType.text,
                    hint: "Last Name",
                    formvalidate: (value) {
                      if (value.isEmpty) {
                        return 'Required Last Name!';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 0.5.h,),
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
                  SizedBox(height: 0.5.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 19.h,
                        child: EditText(
                          textController: age,
                          textInputType: TextInputType.text,
                          hint: "Age",
                          formvalidate: (value) {
                            if (value.isEmpty) {
                              return 'Required Age!';
                            }
                            return null;
                          },
                        ),
                      ),
                      SizedBox(
                        width: 19.h,
                        child: EditText(
                          textController: gender,
                          textInputType: TextInputType.text,
                          hint: "Gender",
                          formvalidate: (value) {
                            if (value.isEmpty) {
                              return 'Required Gender!';
                            }
                            return null;
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 0.5.h,),
                  EditText(
                    textController: text,
                    textInputType: TextInputType.text,
                    hint: "How did you hear about us",
                    formvalidate: (value) {}
                  ),
                  SizedBox(height: 0.5.h,),
                  EditText(
                    textController: phone,
                    textInputType: TextInputType.text,
                    hint: "Mobile Number",
                    formvalidate: (value) {},
                  ),
                  SizedBox(height: 12.h,),
                  CommonButton(
                    width: double.infinity,
                    title: "Complete Sign Up",
                    onpress: _submit,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
