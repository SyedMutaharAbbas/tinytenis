import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:tinytennis/utils/constants/color.dart';
import 'package:tinytennis/utils/constants/commonButton.dart';
import 'package:tinytennis/utils/constants/commonText.dart';
import 'package:tinytennis/utils/constants/commonoutlinesButton.dart';
import 'package:tinytennis/utils/constants/image.dart';
import 'package:tinytennis/view/book_it/book_it.dart';
import 'package:tinytennis/view/drawerscreens/pricing/pricing.dart';
import 'package:tinytennis/view/drawerscreens/purchase/purchase.dart';
import 'package:tinytennis/view/verify/verify_its_you.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePAgeState();
}

class _HomePAgeState extends State<HomePage> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      key: _scaffoldKey,
      backgroundColor: AppColor.scaff,
      // drawer: Drawer(
      //   backgroundColor: Colors.white,
      //   child: Column(
      //     children: [
      //       UserAccountsDrawerHeader(
      //         accountName: CommonText(title: "JOHN",textSize: 24.sp,color: Colors.black,fontWeight: FontWeight.bold,), // Replace with user's name
      //         accountEmail: CommonOutlinedButton(title: 'account',onpress: (){Get.to(VerifyItsYou());},width: 40.w,), // Replace with user's email
      //         decoration: BoxDecoration(
      //           color: Colors.white, // Customize header color
      //         ),
      //       ),
      //       Padding(
      //         padding: EdgeInsets.symmetric(horizontal :4.w),
      //         child: Column(
      //           crossAxisAlignment: CrossAxisAlignment.start,
      //           children: [
      //             TextButton(onPressed: (){}, child: CommonText(title: "Schedule",textSize: 16.sp,)),
      //             TextButton(onPressed: (){Get.to(BookIT());}, child: CommonText(title: "Bookings",textSize: 16.sp,)),
      //             Divider(),
      //             TextButton(onPressed: (){
      //               Get.to(PricingScreen(),transition: Transition.leftToRight,duration: Duration(milliseconds: 500));
      //             }, child: CommonText(title: "Pricing",textSize: 12.sp,)),
      //             TextButton(onPressed: (){
      //               Get.to(PurchaseScreen(),transition: Transition.leftToRight,duration: Duration(milliseconds: 500));
      //             }, child: CommonText(title: "Purchase",textSize: 12.sp,)),
      //             TextButton(onPressed: (){}, child: CommonText(title: "Policies",textSize: 12.sp,)),
      //             TextButton(onPressed: (){}, child: CommonText(title: "Gift Cards",textSize: 12.sp,)),
      //             TextButton(onPressed: (){}, child: CommonText(title: "FAQs",textSize: 12.sp,)),
      //             SizedBox(height: 5.h,),
      //             TextButton(onPressed: (){}, child: CommonText(title: "Log Out",color: Colors.red,textSize: 12.sp,)),
      //             TextButton(onPressed: (){}, child: CommonText(title: "Need helps?",textSize: 12.sp,)),
      //           ],
      //         ),
      //       ),
      //       // Add more ListTile items as needed
      //     ],
      //   ),
      // ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 35.h,
                      width: double.infinity,
                      color: AppColor.app_color,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(Images.tlogo,scale: 2.sp,),
                          CommonText(title: "Welcome Back, John",color: AppColor.color_white,textSize: 25.sp,),
                          SizedBox(height: 2.h,),
                        ],
                      ),
                    ),
                    Positioned(
                        left: 2.w,
                        top: 4.w,
                        child: IconButton(onPressed: (){  _scaffoldKey.currentState?.openDrawer();}, icon: Image.asset(Images.category))),
                  ],
                ),
                SizedBox(height: 10.h,),
                CommonText(title: "UPCOMING CLASSES",fontWeight: FontWeight.bold,),
                SizedBox(height: 2.h,),
                Divider(),
                SizedBox(height: 5.h,),
                CommonText(title: "You have no upcoming classes",color: Colors.grey,textSize: 12.sp,),
                SizedBox(height: 15.h,),
                CommonButton(width: 80.w,title: 'BOOK A CLASS', onpress: () {  },)
              ],
            ),
            Positioned(
              top: 30.h,
              left: 1.3.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Card(
                    child: SizedBox(
                      height: 10.h,
                      width: 22.h,
                      child: Padding(
                        padding: EdgeInsets.all(1.h),
                        child: Column(
                          children: [
                            Text("0",style: TextStyle(color: AppColor.app_color,fontSize: 18.sp,fontWeight: FontWeight.bold),),
                            SizedBox(height: 1.h,),
                            Text("Classes Taken",style: TextStyle(fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
                    child: SizedBox(
                      height: 10.h,
                      width: 22.h,
                      child: Padding(
                        padding: EdgeInsets.all(1.h),
                        child: Column(
                          children: [
                            Text("0",style: TextStyle(color: AppColor.app_color,fontSize: 18.sp,fontWeight: FontWeight.bold),),
                            SizedBox(height: 1.h,),
                            Text("Classes Left",style: TextStyle(fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
