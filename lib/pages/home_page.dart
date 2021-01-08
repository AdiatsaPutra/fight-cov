import 'package:corona_indonesia/pages/corona_page.dart';
import 'package:corona_indonesia/pages/rumah_sakit.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;

  void onTabTapped(value) {
    setState(() {
      currentIndex = value;
    });
  }

  List pages = [CoronaPage(), RumahSakit()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: onTabTapped,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.local_hospital), label: ''),
          ]),
    );
  }
}
