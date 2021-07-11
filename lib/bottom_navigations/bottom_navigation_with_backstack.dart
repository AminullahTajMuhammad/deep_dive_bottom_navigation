import 'package:deep_dive_bottom_navigation/screens/home.dart';
import 'package:deep_dive_bottom_navigation/screens/profile.dart';
import 'package:deep_dive_bottom_navigation/screens/settings.dart';
import 'package:flutter/material.dart';

class BottomNavWithBackStack extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _BottomNavWithBackStack();

}

class _BottomNavWithBackStack extends State<BottomNavWithBackStack> {
  int selectedIndex = 0;
  bool isHome = true;

  final _screens = [
    HomePage(),
    ProfilePage(),
    SettingsPage()
  ];

  initScreen() {
    return Scaffold(
      body: _screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xffEEEEEE),
        currentIndex: selectedIndex,
        onTap: (int index) {
          setState(() {
            if(index == 0) {
              isHome = true;
            } else {
              isHome = false;
              selectedIndex = index;
            }
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            title: Text("Home"),
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.location_city,
              ),
              title: Text("Tours")
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.info,
              ),
              title: Text("About")
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: initScreen(),
      onWillPop: () async {
        if(isHome) {
          return true;
        } else {
          isHome = true;
          setState(() {
            selectedIndex = 0;
          });
          return false;
        }
      },
    );
  }

}