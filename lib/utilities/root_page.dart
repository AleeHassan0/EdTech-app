import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:ui_4/utilities/courses.dart';
import 'package:ui_4/utilities/settings.dart';
import '../screens/profile.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {

  int _bottomNavIndex=0;  //initially selected index

  //list of the pages
  List<Widget>_widgetOptions(){
    return [
      const Courses(),
      const Profile(),
      const Settings(),

    ];
  }

  //list of the pages icons
  List<IconData>iconList=[
    CupertinoIcons.book_fill,
    CupertinoIcons.person,
    CupertinoIcons.settings,

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold (
body: IndexedStack(
  index: _bottomNavIndex,
  children: _widgetOptions(),
),
      bottomNavigationBar: AnimatedBottomNavigationBar(
        activeColor: Color(0xffE3562A),
        inactiveColor:Colors.black.withOpacity(0.5),
        icons:iconList,
        activeIndex:_bottomNavIndex,
        gapLocation:GapLocation.none,
        onTap: (index ) {
          setState(() {
            _bottomNavIndex=index;
          });
        },
      )

    );
  }
}
