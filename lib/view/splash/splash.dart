import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:tinytennis/utils/constants/image.dart';
import 'package:tinytennis/view/onboard/onboard.dart';



class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(milliseconds: 1500), (){

      // iniScreen==0 || iniScreen==null? Get.to(OnBoard()): Get.to(Welcome());
      Get.to(OnBoard());
    });
  }




  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:Center(child: Image.asset(Images.applogo,height: 50.h,width: 50.w,)),

      ),
    );
  }
}
