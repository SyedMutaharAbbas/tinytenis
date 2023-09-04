import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:tinytennis/utils/constants/color.dart';
import 'package:tinytennis/utils/constants/commonAppbar.dart';
import 'package:tinytennis/utils/constants/commonText.dart';
import 'package:tinytennis/utils/constants/commonoutlinesButton.dart';
import 'package:tinytennis/utils/constants/image.dart';
import 'package:tinytennis/view/drawerscreens/pricing/pricing.dart';
import 'package:tinytennis/view/drawerscreens/purchase/purchase.dart';

class T2Gear extends StatefulWidget {
  const T2Gear({Key? key}) : super(key: key);

  @override
  State<T2Gear> createState() => _T2GearState();
}

class _T2GearState extends State<T2Gear> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: CommonText(title: "JOHN",textSize: 24.sp,color: Colors.black,fontWeight: FontWeight.bold,), // Replace with user's name
              accountEmail: CommonOutlinedButton(title: 'account',onpress: (){},width: 40.w,), // Replace with user's email
              decoration: BoxDecoration(
                color: Colors.white, // Customize header color
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal :4.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextButton(onPressed: (){}, child: CommonText(title: "Schedule",textSize: 16.sp,)),
                  TextButton(onPressed: (){}, child: CommonText(title: "Bookings",textSize: 16.sp,)),
                  Divider(),
                  TextButton(onPressed: (){
                    Get.to(PricingScreen(),transition: Transition.leftToRight,duration: Duration(milliseconds: 500));
                  }, child: CommonText(title: "Pricing",textSize: 12.sp,)),
                  TextButton(onPressed: (){
                    Get.to(PurchaseScreen(),transition: Transition.leftToRight,duration: Duration(milliseconds: 500));
                  }, child: CommonText(title: "Purchase",textSize: 12.sp,)),
                  TextButton(onPressed: (){}, child: CommonText(title: "Policies",textSize: 12.sp,)),
                  TextButton(onPressed: (){}, child: CommonText(title: "Gift Cards",textSize: 12.sp,)),
                  TextButton(onPressed: (){}, child: CommonText(title: "FAQs",textSize: 12.sp,)),
                  SizedBox(height: 5.h,),
                  TextButton(onPressed: (){}, child: CommonText(title: "Log Out",color: Colors.red,textSize: 12.sp,)),
                  TextButton(onPressed: (){}, child: CommonText(title: "Need helps?",textSize: 12.sp,)),
                ],
              ),
            ),
            // Add more ListTile items as needed
          ],
        ),
      ),
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(10.h),
          child: CommonAppBar(title: "T2 GEAR",onpress: (){ _scaffoldKey.currentState?.openDrawer();},)),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 2.h),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 1.h,),
              CommonText(title: "T2 TENNISES RACKETS",textSize: 12.sp,fontWeight: FontWeight.bold,),
              SizedBox(height: 3.h,),
              SizedBox(
                height: 2*29.h,
                child: Container(
                  width: double.infinity,
                  child: GridView.builder(
                    itemCount: 3,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 5,
                      mainAxisSpacing: 5,
                      childAspectRatio: 0.75,
                    ),
                    itemBuilder: (BuildContext context, int index) {

                      return Stack(
                        children: [
                          Container(
                            height: 40.h,
                            width: 47.w,
                            padding: EdgeInsets.all(2.w),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3.w),
                              color: AppColor.color_white,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(
                                  child: Image.asset(
                                    Images.rack,
                                    height: 16.h,
                                    width: double.infinity,
                                  ),
                                ),
                                SizedBox(height: 0.3.h),
                                Text(
                                  "T2 RACKETS",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.sp,
                                  ),
                                ),
                                SizedBox(height: 0.5.h),
                                Text(
                                  'Lorem ipsum is a dummy text we'
                                  'can use it easily',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 8.sp,
                                  ),
                                ),
                                SizedBox(height: 0.5.h),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    CommonText(title: "\$000.00",color: AppColor.app_color,),
                                    Container(
                                      height: 4.h,
                                      width: 4.h,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: AppColor.app_color
                                      ),
                                      child: Icon(Icons.add_shopping_cart,color: Colors.white,size: 15.sp,),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          Positioned(
                            right: 0.5.h,
                            top: 1.h,
                            child: IconButton(
                              onPressed: () {},
                              icon: Container(
                                height: 4.h,
                                width: 4.h,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white
                                ),
                                child: Center(
                                  child: Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                  ),
                                ),
                              )
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ),
              SizedBox(height: 3.h,),
              CommonText(title: "T2 T-SHIRTS",textSize: 12.sp,fontWeight: FontWeight.bold,),
              SizedBox(height: 3.h,),
              SizedBox(
                height: 2*29.h,
                child: Container(
                  width: double.infinity,
                  child: GridView.builder(
                    itemCount: 3,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 5,
                      mainAxisSpacing: 5,
                      childAspectRatio: 0.75,
                    ),
                    itemBuilder: (BuildContext context, int index) {

                      return Stack(
                        children: [
                          Container(
                            height: 40.h,
                            width: 47.w,
                            padding: EdgeInsets.all(2.w),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3.w),
                              color: AppColor.color_white,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(
                                  child: Image.asset(
                                    Images.shirt,
                                    height: 16.h,
                                    width: double.infinity,
                                  ),
                                ),
                                SizedBox(height: 0.3.h),
                                Text(
                                  "T2 T-SHIRTS",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.sp,
                                  ),
                                ),
                                SizedBox(height: 0.5.h),
                                Text(
                                  'Lorem ipsum is a dummy text we'
                                      'can use it easily',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 8.sp,
                                  ),
                                ),
                                SizedBox(height: 0.5.h),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    CommonText(title: "\$000.00",color: AppColor.app_color,),
                                    Container(
                                      height: 4.h,
                                      width: 4.h,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: AppColor.app_color
                                      ),
                                      child: Icon(Icons.add_shopping_cart,color: Colors.white,size: 15.sp,),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          Positioned(
                            right: 0.5.h,
                            top: 1.h,
                            child: IconButton(
                                onPressed: () {},
                                icon: Container(
                                  height: 4.h,
                                  width: 4.h,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white
                                  ),
                                  child: Center(
                                    child: Icon(
                                      Icons.favorite,
                                      color: Colors.red,
                                    ),
                                  ),
                                )
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ),
              SizedBox(height: 3.h,),
              CommonText(title: "T2 TENNISES RACKETS",textSize: 12.sp,fontWeight: FontWeight.bold,),
              SizedBox(height: 3.h,),
              SizedBox(
                height: 2*29.h,
                child: Container(
                  width: double.infinity,
                  child: GridView.builder(
                    itemCount: 3,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 5,
                      mainAxisSpacing: 5,
                      childAspectRatio: 0.75,
                    ),
                    itemBuilder: (BuildContext context, int index) {

                      return Stack(
                        children: [
                          Container(
                            height: 40.h,
                            width: 47.w,
                            padding: EdgeInsets.all(2.w),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3.w),
                              color: AppColor.color_white,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(
                                  child: Image.asset(
                                    Images.tennis,
                                    height: 16.h,
                                    width: double.infinity,
                                  ),
                                ),
                                SizedBox(height: 0.3.h),
                                Text(
                                  "T2 RACKETS",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.sp,
                                  ),
                                ),
                                SizedBox(height: 0.5.h),
                                Text(
                                  'Lorem ipsum is a dummy text we'
                                      'can use it easily',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 8.sp,
                                  ),
                                ),
                                SizedBox(height: 0.5.h),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    CommonText(title: "\$000.00",color: AppColor.app_color,),
                                    Container(
                                      height: 4.h,
                                      width: 4.h,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: AppColor.app_color
                                      ),
                                      child: Icon(Icons.add_shopping_cart,color: Colors.white,size: 15.sp,),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          Positioned(
                            right: 0.5.h,
                            top: 1.h,
                            child: IconButton(
                                onPressed: () {},
                                icon: Container(
                                  height: 4.h,
                                  width: 4.h,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white
                                  ),
                                  child: Center(
                                    child: Icon(
                                      Icons.favorite,
                                      color: Colors.red,
                                    ),
                                  ),
                                )
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ),
              SizedBox(height: 1.h,),
            ],
          ),
        ),
      ),
    );
  }
}
