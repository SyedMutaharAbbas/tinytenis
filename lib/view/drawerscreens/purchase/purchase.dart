import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:tinytennis/utils/constants/color.dart';
import 'package:tinytennis/utils/constants/image.dart';

class PurchaseScreen extends StatefulWidget {
  const PurchaseScreen({Key? key}) : super(key: key);

  @override
  State<PurchaseScreen> createState() => _PurchaseScreenState();
}

class _PurchaseScreenState extends State<PurchaseScreen> {
  bool active=true;
  bool history=false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: 10.h,
                  color: AppColor.app_color,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          IconButton(onPressed: (){}, icon: Image.asset(Images.category)),
                          SizedBox(width: 10.h,),
                          Text("PURCHASES",style: TextStyle(color: Colors.white,fontSize: 18.sp,fontWeight: FontWeight.w500),)
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Visibility(
                    visible: active,
                    child: Column(
                      children: [
                        Image.asset(Images.nopurchase),
                        SizedBox(height: 3.h,),
                        Text("NO PURCHASES",style: TextStyle(fontWeight: FontWeight.bold),),
                        SizedBox(height: 2.h,),
                        Text("You have not made any purchase",style: TextStyle(fontSize: 12.sp),),
                      ],
                    )),
                Visibility(
                    visible: history,
                    child: Column(
                      children: [
                        Image.asset(Images.nopurchase),
                        SizedBox(height: 3.h,),
                        Text("NO PURCHASES",style: TextStyle(fontWeight: FontWeight.bold),),
                        SizedBox(height: 2.h,),
                        Text("You have not made any purchase",style: TextStyle(fontSize: 12.sp),),
                      ],
                    )),
              ],
            ),
            Positioned(
              left: 5.h,
              top: 6.h,
              child: Row(
                children: [
                  InkWell(
                    onTap: (){
                      setState(() {
                        active=true;
                        history=false;
                      });
                    },
                    child: Container(
                      height: 8.h,
                      width: 40.w,
                      decoration: BoxDecoration(
                          color: active ? AppColor.color_white : AppColor.btn_color,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(1.h),
                            bottomLeft: Radius.circular(1.h),
                          )
                      ),
                      child: Center(child: Text("ACTIVE",style: TextStyle( color: active ? AppColor.color_black : AppColor.color_white,),)),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      setState(() {
                        active=false;
                        history=true;
                      });
                    },
                    child: Container(
                      height: 8.h,
                      width: 40.w,
                      decoration: BoxDecoration(
                          color: history ? AppColor.color_white : AppColor.btn_color,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(1.h),
                            bottomRight: Radius.circular(1.h),
                          )
                      ),
                      child: Center(child: Text("HISTORY",style: TextStyle( color: history ? AppColor.color_black : AppColor.color_white,),)),
                    ),
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
