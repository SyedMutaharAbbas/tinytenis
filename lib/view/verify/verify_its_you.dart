import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:tinytennis/utils/constants/color.dart';
import 'package:tinytennis/utils/constants/commonText.dart';
import 'package:tinytennis/utils/constants/const_methods.dart';
import 'package:tinytennis/view/auth/signup/signup_one.dart';

import 'verify.dart';

enum radiotile { isnull,ismail, isphone }

class VerifyItsYou extends StatefulWidget {
  const VerifyItsYou({Key? key}) : super(key: key);

  @override
  State<VerifyItsYou> createState() => _VerifyItsYouState();
}

class _VerifyItsYouState extends State<VerifyItsYou> {
  radiotile? _chk = radiotile.isnull;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back, color: Colors.black),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(Icons.close, color: Colors.black),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(4.h),
        child: Column(
          children: [
            SizedBox(height: 10.h,),
            CommonText(
              title: "VERIFY IT'S YOU",
              textSize: 24.sp,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(height: 1.h),
            SizedBox(
              width: 50.w,
              child: CommonText(
                title: 'Please select an option below to receive a sign-in code.',
                textSize: 11.sp,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 5.h),
            RadioListTile<radiotile>(
              title: Text("Send Me an Email",style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w600),),
              subtitle: Text("mail@gmail.com",style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.w400),),
              value: radiotile.ismail,
              groupValue: _chk,
              activeColor: AppColor.app_color,
              onChanged: (value) {
                setState(() {
                  _chk = value;
                });
              },
            ),
            SizedBox(height: 3.h),
            RadioListTile<radiotile>(
              title: Text("Send Me a Email",style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w600),),
              subtitle: Text("(***)****-1234",style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.w400),),
              value: radiotile.isphone,
              groupValue: _chk,
              activeColor: AppColor.app_color,
              onChanged: (value) {
                setState(() {
                  _chk = value;
                });
              },
            ),
            Spacer(),
            TextButton(onPressed: (){Get.to(VerifyScreen());}, child: Text("I already have a code",style: TextStyle(decoration: TextDecoration.underline,color: Colors.grey),)),
            Padding(
              padding: EdgeInsets.only(bottom: 10.sp),
              child: SizedBox(
                height: 7.h,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: _chk != radiotile.isnull
                      ? (){
                    Get.to(SignUpFirst());
                  }
                      : (){showSnackbar(context,"Please Select any option");},
                  child: _chk != radiotile.isnull ? Text("Continue") : Text("Continue"),
                  style: ElevatedButton.styleFrom(
                    primary: _chk != radiotile.isnull
                        ? AppColor.app_color
                        : Colors.grey,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(1.5.w),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


