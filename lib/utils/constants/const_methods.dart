
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:tinytennis/utils/constants/commonButton.dart';

import 'color.dart';

void showSnackbar(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: SizedBox(
        width: double.infinity,
        child: Text(
          message,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 14.0,
            color: Colors.white,
          ),
        ),
      ),
      backgroundColor: AppColor.app_color,
      duration: const Duration(seconds: 2),
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
    ),
  );
}


Future<void> showAlertDialog(BuildContext context,String title, String message,String btntext, Function() onpress) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: true, // Dialog won't close on outside tap
    builder: (BuildContext context) {
      return AlertDialog(
        title: Center(child: Text(title,style: const TextStyle(color: Colors.red),)),
        content: Container(
            width: 20.w,
            child: Text(message,textAlign: TextAlign.center,)),
        actions: <Widget>[
          CommonButton(title: btntext, onpress: onpress,width: double.infinity,)
        ],
      );
    },
  );
}

class BottomSheetUtils {
  static void showCustomBottomSheet(BuildContext context, Widget content,String title) {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top : Radius.circular(20.w)),
      ),
      builder: (BuildContext context) {
        return SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Common app bar at the top
              Container(
                width: double.infinity,
                height: 6.h,
                padding: EdgeInsets.all(2.w),
                decoration: BoxDecoration(
                  color: AppColor.app_color, // Customize the app bar color
                  borderRadius: BorderRadius.vertical(top: Radius.circular(2.w)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(width: 48.0),
                    Text(
                      title,
                      style: TextStyle(color: Colors.white, fontSize: 18.0),
                    ),
                    IconButton(
                      icon: Icon(Icons.close),
                      onPressed: () => Navigator.pop(context),
                      color: Colors.white,
                    ),// To balance close button
                  ],
                ),
              ),
              // Custom content area
              Container(
                color: Colors.white, // Customize the content area background color
                child: content,
              ),
            ],
          ),
        );
      },
    );
  }
}


GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

class AppDrawer extends StatelessWidget {// Callback to handle item selection

  AppDrawer({Key? key });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      key: _scaffoldKey, // Set the GlobalKey to the Drawer
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("John Doe"), // Replace with user's name
            accountEmail: Text("johndoe@example.com"), // Replace with user's email
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage("assets/profile_image.png"), // Replace with user's profile image
            ),
            decoration: BoxDecoration(
              color: Colors.blue, // Customize header color
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Home"),
            onTap: () {
              // Handle item selection here
              // Close the drawer if needed
              Navigator.pop(context);
              // Perform action for "Home" item
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Settings"),
            onTap: () {
              // Handle item selection here
              // Close the drawer if needed
              Navigator.pop(context);
              // Perform action for "Settings" item
            },
          ),
          // Add more ListTile items as needed
        ],
      ),
    );
  }
}
