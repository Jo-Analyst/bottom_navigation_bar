import 'package:bottom_navigation_bar/template/home.dart';
import 'package:bottom_navigation_bar/template/profile.dart';
import 'package:bottom_navigation_bar/template/search.dart';
import 'package:bottom_navigation_bar/template/settings.dart';
import 'package:flutter/material.dart';

class ScreenMain extends StatefulWidget {
  const ScreenMain({super.key});

  @override
  State<ScreenMain> createState() => _ScreenMainState();
}

class _ScreenMainState extends State<ScreenMain> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BottomNavigationBar"),
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: const [
          Home(),
          Search(),
          Profile(),
          Setting()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        // backgroundColor: Colors.blue.shade900,
        fixedColor: Colors.blue,
        // unselectedItemColor: Colors.amber,
        onTap: (index) => setState(() {
          _currentIndex = index;
        }),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Início",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Pesquisa",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Perfil",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Cofiguração",
          ),
        ],
      ),
    );
  }
}
