import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:tinytennis/utils/constants/color.dart';
import 'package:tinytennis/utils/constants/commonButton.dart';
import 'package:tinytennis/utils/constants/commonText.dart';
import 'package:tinytennis/utils/constants/common_EditText.dart';
import 'package:tinytennis/utils/constants/commonoutlinesButton.dart';
import 'package:tinytennis/utils/constants/image.dart';
import 'package:tinytennis/view/drawerscreens/pricing/pricing.dart';
import 'package:tinytennis/view/drawerscreens/purchase/purchase.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {

  TextEditingController name = TextEditingController();
  TextEditingController fname = TextEditingController();
  TextEditingController lname = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController age = TextEditingController();
  TextEditingController gender = TextEditingController();
  TextEditingController text = TextEditingController();
  TextEditingController phone = TextEditingController();
  
  bool profile=true;
  bool billing=false;
  bool enrol=false;

  bool _check = false;
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          key: _scaffoldKey,
          drawer: Drawer(
            backgroundColor: Colors.white,
            child: Column(
              children: [
                UserAccountsDrawerHeader(
                  accountName: CommonText(title: "JOHN",textSize: 24.sp,color: Colors.black,fontWeight: FontWeight.bold,), // Replace with user's name
                  accountEmail: CommonOutlinedButton(title: 'account',onpress: (){},width: 30.w,), // Replace with user's email
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
          backgroundColor: AppColor.scaff,
          body: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
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
                              Text("ACCOUNT",style: TextStyle(color: Colors.white,fontSize: 18.sp,fontWeight: FontWeight.w500),)
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 5.h,),
                    Visibility(
                      visible: profile,
                      child: Padding(
                        padding: EdgeInsets.all(2.h),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              EditText(
                                textController: name,
                                textInputType: TextInputType.text,
                                hint: "Name",
                                formvalidate: (value) {
                                  if (value.isEmpty) {
                                    return 'Required Name!';
                                  }
                                  return null;
                                },
                              ),
                              SizedBox(height: 0.5.h,),
                              EditText(
                                textController: fname,
                                textInputType: TextInputType.text,
                                hint: "First Name",
                                formvalidate: (value) {
                                  if (value.isEmpty) {
                                    return 'Required First Name!';
                                  }
                                  return null;
                                },
                              ),
                              SizedBox(height: 0.5.h,),
                              EditText(
                                textController: lname,
                                textInputType: TextInputType.text,
                                hint: "Last Name",
                                formvalidate: (value) {
                                  if (value.isEmpty) {
                                    return 'Required Last Name!';
                                  }
                                  return null;
                                },
                              ),
                              SizedBox(height: 0.5.h,),
                              EditText(
                                textController: email,
                                textInputType: TextInputType.emailAddress,
                                hint: 'Email Address', formvalidate: (value) {
                                if(value.isEmpty){
                                  return 'Email Required!';
                                }
                                else if (
                                !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                    .hasMatch(value)) {
                                  return 'Enter a valid email!';
                                }
                                return null;
                              },),
                              SizedBox(height: 0.5.h,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    width: 19.h,
                                    child: EditText(
                                      textController: age,
                                      textInputType: TextInputType.text,
                                      hint: "Age",
                                      formvalidate: (value) {
                                        if (value.isEmpty) {
                                          return 'Required Age!';
                                        }
                                        return null;
                                      },
                                    ),
                                  ),
                                  SizedBox(
                                    width: 19.h,
                                    child: EditText(
                                      textController: gender,
                                      textInputType: TextInputType.text,
                                      hint: "Gender",
                                      formvalidate: (value) {
                                        if (value.isEmpty) {
                                          return 'Required Gender!';
                                        }
                                        return null;
                                      },
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 0.5.h,),
                              EditText(
                                  textController: text,
                                  textInputType: TextInputType.text,
                                  hint: "How did you hear about us",
                                  formvalidate: (value) {}
                              ),
                              SizedBox(height: 0.5.h,),
                              EditText(
                                textController: phone,
                                textInputType: TextInputType.text,
                                hint: "Mobile Number",
                                formvalidate: (value) {},
                              ),
                              SizedBox(height: 17.h,),
                              Center(child: TextButton(onPressed: (){}, child: Text("Delete Your Account",style: TextStyle(color: Colors.red,decoration: TextDecoration.underline),)))
                            ],
                          ),
                        ),
                      ),
                    ),
                    Visibility(
                      visible: billing,
                      child: SingleChildScrollView(
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
                                        child: EditText(hint: "Exp Year", formvalidate: (value){},lable: "Year",)),
                                  ),
                                ],
                              ),
                              SizedBox(height: 36.h,),
                              CommonButton(width: double.infinity,title: "UPDATE", onpress: (){})
                            ],
                          ),
                        ),
                      ),
                    ),
                    Visibility(
                      visible: enrol,
                      child: SizedBox(
                        height: 70.h,
                        child: ListView.separated(
                            itemCount: 3,
                            separatorBuilder: (BuildContext context, int index) => Divider(),
                            itemBuilder: (BuildContext context, int index) {
                              // var deal=Deal[index];
                              // var initialPrice = deal.price;
                              // var price = initialPrice * deal.quantity;
                              return Row(
                                children: [
                                  Checkbox(
                                    value: _check,
                                    activeColor: AppColor.app_color,
                                    onChanged: (newValue) {
                                      setState(() {
                                        _check = newValue!;
                                      });
                                    },
                                  ),
                                  Container(
                                    height: 6.h,
                                    width: 6.h,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: AppColor.app_color
                                    ),
                                  ),
                                  SizedBox(width: 0.5.h,),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("9:00 am to 10:00 am",style: TextStyle(fontSize: 10.sp),),
                                      SizedBox(height: 0.2.h,),
                                      CommonText(title: "T2 Advance"),
                                      SizedBox(height: 0.3.h,),
                                      Text("July 27- September 9",style: TextStyle(fontSize: 10.sp)),
                                      SizedBox(height: 0.3.h,),
                                      Text("Lenark Park",style: TextStyle(fontSize: 10.sp))
                                    ],
                                  ),
                                  SizedBox(width: 2.h,),
                                  IconButton(onPressed: (){}, icon: Icon(Icons.info)),
                                  Padding(
                                    padding: EdgeInsets.only(top: 1.h),
                                    child: SizedBox(
                                        height: 6.5.h,
                                        child: CommonButton(title: "Cancel", onpress: (){},color: AppColor.redColor,)),
                                  )
                                ],
                              );
                            }
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 4.h,
                top: 6.h,
                child: Row(
                  children: [
                    InkWell(
                      onTap: (){
                        setState(() {
                          profile=true;
                          billing=false;
                          enrol=false;
                        });
                      },
                      child: Container(
                        height: 8.h,
                        width: 28.w,
                        decoration: BoxDecoration(
                            color: profile ? AppColor.color_white : AppColor.btn_color,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(1.h),
                              bottomLeft: Radius.circular(1.h),
                            )
                        ),
                        child: Center(child: Text("PROFILE",style: TextStyle( color: profile ? AppColor.color_black : AppColor.color_white,),)),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        setState(() {
                          profile=false;
                          billing=true;
                          enrol=false;
                        });
                      },
                      child: Container(
                        height: 8.h,
                        width: 28.w,
                            color: billing ? AppColor.color_white : AppColor.btn_color,
                        child: Center(child: Text("BILLING",style: TextStyle( color: billing ? AppColor.color_black : AppColor.color_white,),)),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        setState(() {
                          profile=false;
                          billing=false;
                          enrol=true;
                        });
                      },
                      child: Container(
                        height: 8.h,
                        width: 28.w,
                        decoration: BoxDecoration(
                            color: enrol ? AppColor.color_white : AppColor.btn_color,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(1.h),
                              bottomRight: Radius.circular(1.h),
                            )
                        ),
                        child: Center(child: Text("ENROLMENT",style: TextStyle( color: enrol ? AppColor.color_black : AppColor.color_white,),)),
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
