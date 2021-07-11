import 'package:deep_dive_bottom_navigation/bottom_navigations/animated_bottom_navigation.dart';
import 'package:deep_dive_bottom_navigation/bottom_navigations/bottom_navigation_with_backstack.dart';
import 'package:deep_dive_bottom_navigation/bottom_navigations/color_bottom_navigation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedBottomNavigation(),
    );
  }
}
