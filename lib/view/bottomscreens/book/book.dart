import 'package:flutter/material.dart';
import 'package:flutter_advanced_calendar/flutter_advanced_calendar.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:tinytennis/utils/constants/color.dart';
import 'package:tinytennis/utils/constants/commonAppbar.dart';
import 'package:tinytennis/utils/constants/commonText.dart';
import 'package:tinytennis/utils/constants/commonoutlinesButton.dart';
import 'package:tinytennis/utils/constants/const_methods.dart';
import 'package:tinytennis/utils/constants/image.dart';
import 'package:tinytennis/view/drawerscreens/pricing/pricing.dart';
import 'package:tinytennis/view/drawerscreens/purchase/purchase.dart';

import '../../../utils/constants/commonButton.dart';

class BookScreen extends StatefulWidget {
  const BookScreen({Key? key}) : super(key: key);

  @override
  _BookScreenState createState() => _BookScreenState();
}

class _BookScreenState extends State<BookScreen> {
  final _calendarControllerToday = AdvancedCalendarController.today();

  final events = <DateTime>[
    DateTime.now(),
    DateTime(2022, 10, 10),
  ];
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  bool _isPressed = false;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      key: _scaffoldKey,
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(9.5.h),
            child: CommonAppBar(title: "Pricing",onpress: (){ _scaffoldKey.currentState?.openDrawer();},)),
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
        body: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: AdvancedCalendar(
                  controller: _calendarControllerToday,
                  events: events,
                  startWeekDay: 1,
                ),
              ),
              Expanded(
                child: ListView.separated(
                    itemCount: 3,
                    separatorBuilder: (BuildContext context, int index) => Divider(),
                    itemBuilder: (BuildContext context, int index) {
                      // var deal=Deal[index];
                      // var initialPrice = deal.price;
                      // var price = initialPrice * deal.quantity;
                      return Padding(
                        padding: EdgeInsets.symmetric(horizontal: 1.h,vertical: 1.h),
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
                            SizedBox(width: 5.h,),
                            IconButton(onPressed: (){}, icon: Icon(Icons.info)),
                            Padding(
                              padding: EdgeInsets.only(top: 1.h),
                              child: SizedBox(
                                  height: 5.h,
                                  child: ElevatedButton(
                                    onPressed: (){
                                      setState(() {
                                        _isPressed = !_isPressed;
                                      });
                                    },
                                    style: ElevatedButton.styleFrom(
                                      primary: _isPressed ? Colors.grey : AppColor.app_color, // Change color based on press state
                                    ),
                                    child: Text(
                                      _isPressed ? 'Waitlist' : 'Book it', // Change text based on press state
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  )),
                            )
                          ],
                        ),
                      );
                    }
                ),
              ),
            ],
          )

      );
  }
}


