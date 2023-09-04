
import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:tinytennis/utils/constants/commonButton.dart';
import 'package:tinytennis/utils/constants/commonoutlinesButton.dart';
import 'package:tinytennis/utils/constants/image.dart';
import 'package:tinytennis/view/auth/login/login.dart';
import 'package:tinytennis/view/auth/signup/signup_one.dart';
import 'package:video_player/video_player.dart';


class OnBoard extends StatefulWidget {
  const OnBoard({
    Key? key}) : super(key: key);

  @override
  _OnBoardState createState() => _OnBoardState();
}

class _OnBoardState extends State<OnBoard> {
  // VideoPlayerController? _controller;
  // ChewieController? _chewieController;
  // bool isMuted = false; // Initial mute state
  // double? videoWidth;
  // double? videoHeight;
  //
  // @override
  // void initState() {
  //   super.initState();
  //   _chewieController = ChewieController(
  //     videoPlayerController: VideoPlayerController.asset(
  //       'assets/welcome.mp4',
  //     ),
  //     aspectRatio: 16 / 9,
  //     autoInitialize: true,
  //     autoPlay: true,
  //     looping: true,
  //     showControls: false,
  //     allowMuting: true, // Allow muting
  //     errorBuilder: (context, errorMessage) {
  //       return Center(
  //         child: Text(
  //           errorMessage,
  //           style: TextStyle(color: Colors.white),
  //         ),
  //       );
  //     },
  //   );
  //
  //   _chewieController!.addListener(() {
  //     setState(() {
  //       isMuted = _chewieController!.videoPlayerController!.value.volume == 0;
  //     });
  //   });
  //
  //   videoWidth = _chewieController?.videoPlayerController?.value?.size?.width ?? 0;
  //   videoHeight = _chewieController?.videoPlayerController?.value?.size?.height ?? 0;
  // }
  //
  // @override
  // void dispose() {
  //   super.dispose();
  //   _chewieController?.dispose();
  // }
  //
  // void _toggleMute() {
  //   setState(() {
  //     if (isMuted) {
  //       _chewieController!.setVolume(1); // Unmute
  //     } else {
  //       _chewieController!.setVolume(0); // Mute
  //     }
  //     isMuted = !isMuted; // Update the state
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            // SizedBox.expand(
            //   child: FittedBox(
            //     fit: BoxFit.cover,
            //     child: SizedBox(
            //       width: 80.w,
            //       height: 60.h,
            //       child: Chewie(
            //         controller: _chewieController!,
            //       ),
            //     ),
            //   ),
            // ),
            Padding(
              padding: EdgeInsets.all(4.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(onPressed: () {}, icon: Image.asset(Images.category)),
                  SizedBox(height: 30.h),
                  Center(child: Image.asset(Images.logowhite)),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CommonOutlinedButton(
                        width: 19.h,
                        title: 'Log In',
                        onpress: () {
                          // setState(() {
                          //   _chewieController!.setVolume(0);
                          // });
                          Get.to(LoginPage());
                        },
                      ),
                      CommonButton(
                        width: 19.h,
                        title: 'Sign Up',
                        onpress: () {
                          // setState(() {
                          //   _chewieController!.setVolume(0);
                          // });
                          Get.to(SignUpFirst());
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Positioned(
            //   top: 16.sp,
            //   right: 16,
            //   child: IconButton(
            //     icon: Icon(isMuted ? Icons.volume_off : Icons.volume_up,color: Colors.white,),
            //     onPressed: _toggleMute,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}


