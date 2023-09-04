import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:tinytennis/utils/constants/commonText.dart';

import '../../utils/constants/commonButton.dart';
import '../../utils/constants/const_methods.dart';

class VerifyScreen extends StatefulWidget {
  const VerifyScreen({Key? key}) : super(key: key);

  @override
  State<VerifyScreen> createState() => _VerifyScreenState();
}

class _VerifyScreenState extends State<VerifyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back,color: Colors.black,)),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.close,color: Colors.black,))
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 3.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 30.h,),
            CommonText(title: "Verify",textSize: 22.sp,),
            SizedBox(height: 3.h,),
            SizedBox(
              width: 70.w,
              child: Text('If your child will not be participating in any'
                'further sessions please Discontinue my'
                'enrolment….you must cancel before your last'
                ' scheduled class.',style: TextStyle(fontSize: 12.sp,color: Colors.grey),textAlign: TextAlign.center,),
            ),
            SizedBox(height: 1.h,),
            Spacer(),
            CommonButton(title: 'Cancel',onpress: (){


            },width: double.infinity,)
          ],
        ),
      ),
    );
  }
}
