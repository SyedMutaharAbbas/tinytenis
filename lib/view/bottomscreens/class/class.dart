import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:tinytennis/utils/constants/color.dart';
import 'package:tinytennis/utils/constants/commonButton.dart';
import 'package:tinytennis/utils/constants/commonText.dart';
import 'package:tinytennis/utils/constants/commonoutlinesButton.dart';
import 'package:tinytennis/utils/constants/image.dart';
import 'package:tinytennis/view/drawerscreens/pricing/pricing.dart';
import 'package:tinytennis/view/drawerscreens/purchase/purchase.dart';

import '../../../utils/constants/const_methods.dart';

class ClassScreen extends StatefulWidget {
  const ClassScreen({Key? key}) : super(key: key);

  @override
  State<ClassScreen> createState() => _ClassScreenState();
}

class _ClassScreenState extends State<ClassScreen> {
  bool upcoming=true;
  bool past=false;
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          key: _scaffoldKey,
          // drawer: Drawer(
          //   backgroundColor: Colors.white,
          //   child: Column(
          //     children: [
          //       UserAccountsDrawerHeader(
          //         accountName: CommonText(title: "JOHN",textSize: 24.sp,color: Colors.black,fontWeight: FontWeight.bold,), // Replace with user's name
          //         accountEmail: CommonOutlinedButton(title: 'account',onpress: (){},width: 40.w,), // Replace with user's email
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
          //             TextButton(onPressed: (){}, child: CommonText(title: "Bookings",textSize: 16.sp,)),
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
          backgroundColor: AppColor.scaff,
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
                            IconButton(onPressed: (){ _scaffoldKey.currentState?.openDrawer();}, icon: Image.asset(Images.category)),
                            SizedBox(width: 10.h,),
                            Text("BOOKINGS",style: TextStyle(color: Colors.white,fontSize: 18.sp,fontWeight: FontWeight.w500),)
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 5.h,),
                  Visibility(
                    visible: upcoming,
                    child: Flexible(
                      child: ListView.separated(
                          itemCount: 7,
                          separatorBuilder: (BuildContext context, int index) => Divider(),
                          itemBuilder: (BuildContext context, int index) {
                            return  InkWell(
                              onTap: (){
                                Widget bottomSheetContent = Padding(
                                  padding: EdgeInsets.all(2.h),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              CommonText(title: "Orignal Date",textSize: 16.sp,color: Colors.grey,),
                                              SizedBox(height: 2.h,),
                                              CommonText(title: "July 9,2023",textSize: 9.sp,color: Colors.grey.withOpacity(0.7),)
                                            ],
                                          ),
                                          Icon(Icons.arrow_forward),
                                          Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              CommonText(title: "New Date",textSize: 16.sp,),
                                              SizedBox(height: 2.h,),
                                              CommonText(title: "August 9,2023",textSize: 9.sp,color: Colors.grey.withOpacity(0.7))
                                            ],
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 3.h,),
                                      CommonButton(title: "EXTEND TIME", onpress: (){},width: double.infinity,)
                                    ],
                                  ),
                                );
                                BottomSheetUtils.showCustomBottomSheet(context, bottomSheetContent,"Extend Time");
                              },
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 2.h,vertical: 1.h),
                                child: Row(
                                  children: [
                                    Container(
                                      height: 7.h,
                                      width: 7.h,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: AppColor.app_color
                                      ),
                                    ),
                                    SizedBox(width: 2.h,),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("9:00 am to 10:00 am",style: TextStyle(fontSize: 9.sp),),
                                        SizedBox(height: 0.2.h,),
                                        CommonText(title: "T2 Advance",textSize: 16.sp,),
                                        SizedBox(height: 0.3.h,),
                                        Text("July 27- September 9",style: TextStyle(fontSize: 9.sp)),
                                        SizedBox(height: 0.3.h,),
                                        Text("Lenark Park",style: TextStyle(fontSize: 9.sp))
                                      ],
                                    ),
                                    SizedBox(width: 3.h,),
                                    IconButton(onPressed: (){
                                      showAlertDialog(context, "WARNING",
                                      'Your lesson is after the 24hr cancellation policy '
                                      'and you will not be able to cancel and will be charge for'
                                      'the missed lesson ','CLOSE',(){});
                                    }, icon: Icon(Icons.info)),
                                    Padding(
                                      padding: EdgeInsets.only(top: 1.h),
                                      child: SizedBox(
                                          height: 6.5.h,
                                          child: CommonButton(title: "Cancel", onpress: (){
                                            showAlertDialog(context, "WARNING", "Are you sure you would like to Discontinue….if yes click Confirm.",'CONFIRM', () { });
                                          },color: AppColor.redColor,)),
                                    )
                                  ],
                                ),
                              ),
                            );
                          }
                      ),
                    ),
                  ),
                  Visibility(
                    visible: past,
                    child: Flexible(
                      child: ListView.separated(
                          itemCount: 3,
                          separatorBuilder: (BuildContext context, int index) => Divider(),
                          itemBuilder: (BuildContext context, int index) {
                            // var deal=Deal[index];
                            // var initialPrice = deal.price;
                            // var price = initialPrice * deal.quantity;
                            return Padding(
                              padding: EdgeInsets.symmetric(horizontal: 2.h,vertical: 1.h),
                              child: Row(
                                children: [
                                  Container(
                                    height: 7.h,
                                    width: 7.h,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: AppColor.app_color
                                    ),
                                  ),
                                  SizedBox(width: 2.h,),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("9:00 am to 10:00 am",style: TextStyle(fontSize: 9.sp),),
                                      SizedBox(height: 0.2.h,),
                                      CommonText(title: "T2 Advance",textSize: 16.sp,),
                                      SizedBox(height: 0.3.h,),
                                      Text("July 27- September 9",style: TextStyle(fontSize: 9.sp)),
                                      SizedBox(height: 0.3.h,),
                                      Text("Lenark Park",style: TextStyle(fontSize: 9.sp))
                                    ],
                                  ),
                                  SizedBox(width: 1.4.h,),
                                  IconButton(onPressed: (){}, icon: Icon(Icons.info)),
                                  Padding(
                                    padding: EdgeInsets.only(top: 1.h),
                                    child: SizedBox(
                                        height: 6.5.h,
                                        child: CommonButton(title: "Complete", onpress: (){},color: AppColor.btn_color,)),
                                  )
                                ],
                              ),
                            );
                          }
                      ),
                    ),
                  )
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
                          upcoming=true;
                          past=false;
                        });
                      },
                      child: Container(
                        height: 8.h,
                        width: 40.w,
                        decoration: BoxDecoration(
                            color: upcoming ? AppColor.color_white : AppColor.btn_color,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(1.h),
                              bottomLeft: Radius.circular(1.h),
                            )
                        ),
                        child: Center(child: Text("UPCOMING",style: TextStyle( color: upcoming ? AppColor.color_black : AppColor.color_white,),)),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        setState(() {
                          upcoming=false;
                          past=true;
                        });
                      },
                      child: Container(
                        height: 8.h,
                        width: 40.w,
                        decoration: BoxDecoration(
                            color: past ? AppColor.color_white : AppColor.btn_color,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(1.h),
                              bottomRight: Radius.circular(1.h),
                            )
                        ),
                        child: Center(child: Text("PAST",style: TextStyle( color: past ? AppColor.color_black : AppColor.color_white,),)),
                      ),
                    ),

                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
