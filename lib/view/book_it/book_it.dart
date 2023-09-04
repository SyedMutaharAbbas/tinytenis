import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:tinytennis/utils/constants/color.dart';
import 'package:tinytennis/utils/constants/commonButton.dart';
import 'package:tinytennis/utils/constants/commonText.dart';
import 'package:tinytennis/utils/constants/const_methods.dart';

import '../../utils/constants/common_EditText.dart';

class BookIT extends StatelessWidget {
  const BookIT({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(3.h),
          child: Column(
            children: [
              Align(
                  alignment: Alignment.topRight,
                  child: IconButton(onPressed: (){
                    Get.back();
                  }, icon: Icon(Icons.close,size: 30.sp,))),
              SizedBox(height: 20.h,),
              CommonText(title: "LET'S BOOK IT.",color: AppColor.app_color,textSize: 25.sp,),
              Divider(color: Colors.black,),
              CommonText(title: "T2 Advanced"),
              SizedBox(height: 1.h,),
              CommonText(title: "8 Classes",textSize: 14.sp,fontWeight: FontWeight.w400,),
              SizedBox(height: 1.h,),
              CommonText(title: "July 27, September 9",textSize: 14.sp,fontWeight: FontWeight.w400,),
              SizedBox(height: 1.h,),
              CommonText(title: "9:00 am - 10:00 am",textSize: 14.sp,fontWeight: FontWeight.w400,),
              SizedBox(height: 1.h,),
              CommonText(title: "Lanark Park",textSize: 14.sp,fontWeight: FontWeight.w400,),
              SizedBox(height: 1.h,),
              Divider(color: Colors.black,),
              SizedBox(height: 1.h,),
              CommonText(title: "Lanark Park",textSize: 14.sp,fontWeight: FontWeight.w500,),
              SizedBox(height: 1.h,),
              CommonText(title: "21816 Lanark St,",textSize: 11.sp,fontWeight: FontWeight.w400,),
              SizedBox(height: 1.h,),
              CommonText(title: "Canoga Park, CA 91304",textSize: 11.sp,fontWeight: FontWeight.w400,),
              Spacer(),
              CommonButton(title: "BOOK IT", onpress: (){
                Widget bottomSheetContent = Padding(
                  padding: EdgeInsets.all(2.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CommonText(title: "New Client First Class",textSize: 14.sp,color: Colors.black,),
                              SizedBox(height: 1.h,),
                              CommonText(title: "*All Sales are final",textSize: 11.sp,color: Colors.grey,)
                            ],
                          ),
                          CommonText(title: "\$20.00",textSize: 14.sp,),
                        ],
                      ),
                      SizedBox(height: 3.h,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CommonText(title: "Have a promo code?",textSize: 10.sp,),
                          SizedBox(
                              height: 2.h,
                              child: VerticalDivider(color: Colors.black,)),
                          CommonText(title: "Have a gift card?",textSize: 10.sp,),
                        ],
                      ),
                      SizedBox(height: 3.h,),
                      CommonButton(title: "PURCHASE", onpress: (){
                        Navigator.of(context).pop();
                        // Show the new bottom sheet
                        Widget bottomSheetContent = SingleChildScrollView(
                          child: Padding(
                            padding: EdgeInsets.all(2.h),
                            child: Column(
                              children: [
                                EditText(hint: "Enter Card Holder Name", formvalidate: (value){},lable: "Card Holder Name",),
                                EditText(hint: "Enter Card Number", formvalidate: (value){},lable: "Credit Card Number",),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                        width: 20.h,
                                        child: EditText(hint: "Exp Month", formvalidate: (value){},lable: "Month",)),
                                    Padding(
                                      padding: EdgeInsets.only(top: 3.w),
                                      child: SizedBox(
                                          width: 20.h,
                                          child: EditText(hint: "Exp Year", formvalidate: (value){},lable: "Year")),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 5.h,),
                                CommonButton(width: double.infinity,title: "UPDATE", onpress: (){})
                              ],
                            ),
                          ),
                        );
                        BottomSheetUtils.showCustomBottomSheet(context, bottomSheetContent,"Update Billing Info");
                      },width: double.infinity,),
                      SizedBox(height: 1.h,),
                      CommonText(title: "You will be charged \$ 20.00",textSize: 10.sp,color: Colors.grey,),
                    ],
                  ),
                );
                BottomSheetUtils.showCustomBottomSheet(context, bottomSheetContent,"Confrim Purchase");

              },width: double.infinity,)
            ],
          ),
        ),
      ),
    );
  }
}
