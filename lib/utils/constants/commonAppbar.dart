import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import 'color.dart';
import 'image.dart';

class CommonAppBar extends StatelessWidget {
  final String title;
  final Function()? onpress;
  final bool? centertitle;
  final Widget? icon;
  const CommonAppBar({
    required this.title,
    this.icon,
    this.onpress,
    this.centertitle,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColor.app_color,
      elevation: 0,
      centerTitle: true,
      leading: IconButton(onPressed: onpress, icon: Image.asset(Images.category)),
      title: Text(title,style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.w500,fontFamily: "Poppins"),),
    );
  }
}
