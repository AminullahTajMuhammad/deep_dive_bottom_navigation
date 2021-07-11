import 'package:flutter/material.dart';

class Destination {
  const Destination(this.title, this.icon, this.color);
  final String title;
  final IconData icon;
  final MaterialColor color;
}

const List<Destination> allDestinations = <Destination>[
  Destination('Home', Icons.home, Colors.teal),
  Destination('Profile', Icons.business, Colors.cyan),
  Destination('Setting', Icons.school, Colors.orange),
];