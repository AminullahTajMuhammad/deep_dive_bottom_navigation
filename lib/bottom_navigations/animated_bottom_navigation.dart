import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:deep_dive_bottom_navigation/screens/home.dart';
import 'package:deep_dive_bottom_navigation/screens/profile.dart';
import 'package:deep_dive_bottom_navigation/screens/settings.dart';
import 'package:flutter/material.dart';

class AnimatedBottomNavigation extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AnimatedBottomNavigationState();
}

class _AnimatedBottomNavigationState extends State<AnimatedBottomNavigation> {

  int selectedIndex = 0;
  final _screens = [
    HomePage(),
    ProfilePage(),
    SettingsPage(),
    SettingsPage(),
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
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: selectedIndex,
        backgroundColor: Color(0xffEEEEEE),
        onItemSelected: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        items: [
          BottomNavyBarItem(
            icon: Icon(
              Icons.home,
            ),
            title: Text("Home"),
          ),
          BottomNavyBarItem(
              icon: Icon(
                Icons.person,
              ),
              title: Text("Profile")
          ),
          BottomNavyBarItem(
              icon: Icon(
                Icons.location_city,
              ),
              title: Text("Tours")
          ),
          BottomNavyBarItem(
              icon: Icon(
                Icons.info,
              ),
              title: Text("Settings")
          ),
        ],
      ),
    );
  }
}