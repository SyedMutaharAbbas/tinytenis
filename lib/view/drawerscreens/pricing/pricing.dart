import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:tinytennis/utils/constants/color.dart';
import 'package:tinytennis/utils/constants/commonAppbar.dart';
import 'package:tinytennis/utils/constants/commonButton.dart';
import 'package:tinytennis/utils/constants/commonText.dart';

class PricingScreen extends StatefulWidget {
  const PricingScreen({Key? key}) : super(key: key);

  @override
  State<PricingScreen> createState() => _PricingScreenState();
}

class _PricingScreenState extends State<PricingScreen> {
  String selectedName = 'Malibu'; // Track the selected dropdown item

  final List<String> dropdownItems = ['Malibu', 'Mali', 'Malib']; // Add more names

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(10.h),
        child: CommonAppBar(title: "PRICING"),
      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal :3.h),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 1.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Card(
                    color: Color(0xffF1F1F1),
                    child: Container(
                      height: 5.h,
                      width: 13.8.h,
                      padding: EdgeInsets.all(3.w),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          value: selectedName,
                          onChanged: (newValue) {
                            setState(() {
                              selectedName = newValue!;
                            });
                          },
                          items: dropdownItems.map((String item) {
                            return DropdownMenuItem<String>(
                              value: item,
                              child: Text(item),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              CommonText(title: "MONTHLY PACKAGES",textSize: 12.sp,fontWeight: FontWeight.bold,),
              SizedBox(height: 2.h,),
              SizedBox(
                height: 4*8.h,
                child: ListView.separated(
                    itemCount: 4,
                    physics: NeverScrollableScrollPhysics(),
                    separatorBuilder: (BuildContext context, int index) => Divider(),
                    itemBuilder: (BuildContext context, int index) {
                      return  Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Single Classes"),
                          Row(
                            children: [
                              Text("\$38.00"),
                              SizedBox(width: 5.w,),
                              SizedBox(
                                  height: 6.h,
                                  child: CommonButton(title: "Buy", onpress: (){}))
                            ],
                          )
                        ],
                      );
                    }
                ),
              ),
              CommonText(title: "CLASS PACKS",textSize: 12.sp,fontWeight: FontWeight.bold,),
              SizedBox(height: 2.h,),
              SizedBox(
                height: 4*8.h,
                child: ListView.separated(
                    itemCount: 4,
                    physics: NeverScrollableScrollPhysics(),
                    separatorBuilder: (BuildContext context, int index) => Divider(),
                    itemBuilder: (BuildContext context, int index) {
                      return  Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Single Classes"),
                          Row(
                            children: [
                              Text("\$38.00"),
                              SizedBox(width: 5.w,),
                              SizedBox(
                                  height: 6.h,
                                  child: CommonButton(title: "Buy", onpress: (){}))
                            ],
                          )
                        ],
                      );
                    }
                ),
              ),
              CommonText(title: "AUTO PLAYS",textSize: 12.sp,fontWeight: FontWeight.bold,),
              SizedBox(height: 2.h,),
              SizedBox(
                height: 4*8.h,
                child: ListView.separated(
                    itemCount: 4,
                    physics: NeverScrollableScrollPhysics(),
                    separatorBuilder: (BuildContext context, int index) => Divider(),
                    itemBuilder: (BuildContext context, int index) {
                      return  Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Single Classes"),
                          Row(
                            children: [
                              Text("\$38.00"),
                              SizedBox(width: 5.w,),
                              SizedBox(
                                  height: 6.h,
                                  child: CommonButton(title: "Buy", onpress: (){}))
                            ],
                          )
                        ],
                      );
                    }
                ),
              ),
              // Other content for the body
            ],
          ),
        ),
      ),
    );
  }
}
