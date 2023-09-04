import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:tinytennis/utils/constants/color.dart';
import 'package:tinytennis/utils/constants/commonButton.dart';
import 'package:tinytennis/utils/constants/commonText.dart';
import 'package:tinytennis/utils/constants/image.dart';
import 'package:tinytennis/view/bottomnavbar/bottomnavigationbar.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  bool _agreed = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
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
                        CommonText(title: "Welcome Back, Ashar",color: AppColor.color_white,textSize: 25.sp,),
                        SizedBox(height: 2.h,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("\t\t"),
                            Text("Release of Liability",style: TextStyle(color: AppColor.color_white),),
                            IconButton(onPressed: (){}, icon: Icon(Icons.close,color: AppColor.color_white,))
                          ],
                        )
                      ],
                    ),
                  ),
                  Positioned(
                      left: 2.w,
                      top: 4.w,
                      child: IconButton(onPressed: (){}, icon: Image.asset(Images.category)))
                ],
              ),
              Container(
                child: Padding(
                  padding: EdgeInsets.all(2.h),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Text(
                          'Lorem Ipsum is simply dummy text of the printing and typesetting '
                              'industry. Lorem Ipsum has been the industry\'s standard dummy text '
                              'ever since the 1500s, when an unknown printer took a galley of type '
                              'and scrambled it to make a type specimen book. It has survived not '
                              'only five centuries, but also the leap into electronic typesetting, '
                              'remaining essentially unchanged. It was popularised in the 1960s with '
                              'the release of Letraset sheets containing Lorem Ipsum passages, and '
                              'more recently with desktop publishing software like Aldus PageMaker '
                              'including versions of Lorem Ipsum.'
                          '\n\n'
                              'Lorem Ipsum is simply dummy text of the printing and typesetting '
                              'industry. Lorem Ipsum has been the industry\'s standard dummy text '
                              'ever since the 1500s, when an unknown printer took a galley of type '
                              'and scrambled it to make a type specimen book. It has survived not '
                              'only five centuries, but also the leap into electronic typesetting, '
                              'remaining essentially unchanged. It was popularised in the 1960s with '
                              'the release of Letraset sheets containing Lorem Ipsum passages, and '
                          ,
                          textAlign: TextAlign.justify,
                        ),
                        Row(
                          children: [
                            Checkbox(
                              value: _agreed,
                              activeColor: AppColor.app_color,
                              onChanged: (newValue) {
                                setState(() {
                                  _agreed = newValue!;
                                });
                              },
                            ),
                            Text(
                              'Click on the Checkbox if you',
                              style: TextStyle(fontSize: 12.sp),
                            ), // To push the TextButton to the right
                            TextButton(
                              onPressed: _agreed
                                  ? () {
                                // Navigate or perform an action after agreement
                              }
                                  : null,
                              child: Text(
                                'agree',
                                style: TextStyle(fontSize: 12.sp, color: AppColor.app_color),
                              ),
                            ),
                          ],
                        ),
                        CommonButton(width: double.infinity,title: "Save", onpress: (){Get.to(BottomNavigation(Index: 0,));})
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
