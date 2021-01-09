import 'package:corona_indonesia/pages/corona_page.dart';
import 'package:corona_indonesia/pages/news_page.dart';
import 'package:corona_indonesia/pages/rumah_sakit.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

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

  List pages = [CoronaPage(), NewsPage(), RumahSakit()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: onTabTapped,
        items: [
          BottomNavigationBarItem(
              icon: Icon(MdiIcons.homeOutline), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(MdiIcons.newspaperVariant), label: 'Berita'),
          BottomNavigationBarItem(
              icon: Icon(MdiIcons.hospitalBuilding), label: 'Rumah Sakit'),
        ],
      ),
    );
  }
}
