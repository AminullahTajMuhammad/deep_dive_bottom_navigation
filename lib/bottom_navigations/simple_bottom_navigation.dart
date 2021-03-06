import 'package:deep_dive_bottom_navigation/screens/home.dart';
import 'package:deep_dive_bottom_navigation/screens/profile.dart';
import 'package:deep_dive_bottom_navigation/screens/settings.dart';
import 'package:flutter/material.dart';

class SimpleBottomNavigation extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SimpleBottomNavigationState();
}

class _SimpleBottomNavigationState extends State<SimpleBottomNavigation> {

  int selectedIndex = 0;
  final _screens = [
    HomePage(),
    ProfilePage(),
    SettingsPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: initScreen(),
    );
  }

  initScreen() {
    return Scaffold(
      body: _screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xffEEEEEE),
        currentIndex: selectedIndex,
        onTap: (int index) {
          setState(() {
            selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.location_city,
              ),
              label: "Profile"
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.info,
              ),
              label: "Settings"
          ),
        ],
      ),
    );
  }
}