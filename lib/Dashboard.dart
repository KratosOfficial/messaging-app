import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:messagingapp/Common/Themes.dart';
import 'package:messagingapp/Pages/Call_Pages.dart';
import 'package:messagingapp/Pages/Inbox_Pages.dart';
import 'package:messagingapp/Pages/Settings_Pages.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int selectedIndex = 0;

  Widget getFragment() {
    if (selectedIndex == 0) {
      return Inbox_Pages();
    } else if (selectedIndex == 1) {
      return Call_Pages();
    } else if (selectedIndex == 2) {
      return Settings_Pages();
    }
    return Inbox_Pages();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getFragment(),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.red,
        elevation: 0,
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/icons/inbox.svg",
                width: 30,
              ),
              label: "",
              activeIcon: SvgPicture.asset(
                "assets/icons/inbox_active.svg",
                width: 30,
                color: MyTheme.blue,
              )),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/call.svg",
              width: 30,
            ),
            label: "",
            activeIcon: SvgPicture.asset(
              "assets/icons/call_active.svg",
              width: 30,
              color: MyTheme.blue,
            ),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/settings.svg",
              width: 30,
            ),
            label: "",
            activeIcon: SvgPicture.asset(
              "assets/icons/settings_active.svg",
              width: 30,
              color: MyTheme.blue,
            ),
          ),
        ],
        onTap: (val) {
          selectedIndex = val;
          setState(() {});
        },
        currentIndex: selectedIndex,
      ),
    );
  }
}
