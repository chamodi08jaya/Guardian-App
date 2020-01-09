import 'package:flutter/material.dart';
import 'Screens/main_screen.dart';

void main() {
  runApp(MaterialApp(
     title: "Tourist 2 Townie",
    theme: ThemeData(
        primaryColor: Colors.black,
        primarySwatch: Colors.amber),
    debugShowCheckedModeBanner: false,
    showPerformanceOverlay: false,
    home: MainScreen(),
  ));
}
