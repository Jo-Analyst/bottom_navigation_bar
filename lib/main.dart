import 'package:bottom_navigation_bar/template/screen_main.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: 'BottomNavigationBar', home: ScreenMain(), debugShowCheckedModeBanner: false,);
  }
}