
import 'package:flutter/material.dart';
import 'package:tinytennis/utils/constants/color.dart';
import 'package:tinytennis/view/bottomscreens/account/account.dart';
import 'package:tinytennis/view/bottomscreens/book/book.dart';
import 'package:tinytennis/view/bottomscreens/class/class.dart';
import 'package:tinytennis/view/bottomscreens/home/homepage.dart';
import 'package:tinytennis/view/bottomscreens/t2gear/t2gear.dart';



class BottomNavigation extends StatefulWidget {
  final int? Index;

  BottomNavigation({
    Key? key,
    required this.Index}): super(key: key);

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  final GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();
  int currentIndex = 2;
  String text = '0';
  bool select = true;
  final _bottomnavigationGlobalkey = GlobalKey();

  final List<Widget> _pages = [
    HomePage(),
    BookScreen(),
    ClassScreen(),
    SizedBox(),
    SizedBox()
    // AccountScreen(),
    // T2Gear(),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    currentIndex= widget.Index!;
  }

  void _onItemTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColor.app_color,
        fixedColor: AppColor.app_color,
        showUnselectedLabels: true,
        unselectedItemColor: AppColor.greyColor,
        unselectedLabelStyle: TextStyle(color: AppColor.greyColor),
        currentIndex: currentIndex,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month_outlined),
            label: 'Book',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.access_time_outlined),
            label: 'Classes',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Account',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: 'T2 Gear',
          ),
        ],
      ),
    );
  }
}
