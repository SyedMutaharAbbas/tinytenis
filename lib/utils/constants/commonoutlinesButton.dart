

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'color.dart';

class CommonOutlinedButton extends StatelessWidget {

  final String title;
  final double? width;
  final Function() onpress;
  final Color? color;
  final Color? textcolor;
  const CommonOutlinedButton({
    Key? key,
    this.width,
    required this.title,
    required this.onpress,
    this.color=AppColor.app_color,
    this.textcolor=AppColor.color_white
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 15),
        child: Container(
           height: 7.h,
        width: width,
          child: OutlinedButton(
            style: OutlinedButton.styleFrom(
                side: BorderSide(color: AppColor.app_color),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(1.5.w),
              ),),
            onPressed: onpress,
            child: Text(title,style: TextStyle(color:AppColor.app_color,fontWeight: FontWeight.w500,fontSize: 14.sp),),
            
          )
        ),
      ),
    );
  }
}
