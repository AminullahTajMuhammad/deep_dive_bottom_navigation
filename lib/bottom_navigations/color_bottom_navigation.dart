import 'package:deep_dive_bottom_navigation/components/destination_view.dart';
import 'package:deep_dive_bottom_navigation/utils/destination.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ColorBottomNavigation extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ColorBottomNavigation();
}

class _ColorBottomNavigation extends State<ColorBottomNavigation> {
  int _currentIndex = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        child: IndexedStack(
          index: _currentIndex,
          children: allDestinations.map<Widget>((Destination destination) {
            return DestinationView(destination: destination);
          }).toList(),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        backgroundColor: allDestinations[_currentIndex].color,
        selectedItemColor: Colors.white,
        items: allDestinations.map((Destination destination) {
          return BottomNavigationBarItem(
              icon: Icon(destination.icon),
              backgroundColor: destination.color,
              title: Text(destination.title)
          );
        }).toList(),
      ),
    );
  }
}