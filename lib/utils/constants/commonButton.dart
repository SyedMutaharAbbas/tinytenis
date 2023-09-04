

import 'package:flutter/material.dart';

import 'package:sizer/sizer.dart';

import 'color.dart';

class CommonButton extends StatelessWidget {

  final String title;
  final double? width;
  final Function() onpress;
  final Color? color;
  final Color? textcolor;
  const CommonButton({
    Key? key,
    required this.title,
    this.width,
    required this.onpress,
    this.color=AppColor.app_color,
    this.textcolor=AppColor.color_white
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.only(bottom: 10.sp),
        child: Container(
           height: 7.h,
        width: width,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: color,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(1.5.w),
              ),),
            onPressed: onpress,
            child: Text(title,style: TextStyle(color:textcolor,fontWeight: FontWeight.w500,fontSize: 12.sp),),
            
          )
        ),
      ),
    );
  }
}
