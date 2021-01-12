part of 'pages.dart';

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
        fixedColor: Color(0xFFA694C4),
        selectedLabelStyle: GoogleFonts.poppins(
          fontSize: 12,
        ),
        unselectedLabelStyle: GoogleFonts.poppins(
          fontSize: 12,
        ),
        items: [
          BottomNavigationBarItem(
            icon: Icon(MdiIcons.homeOutline),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(MdiIcons.newspaperVariant),
            label: 'Berita',
          ),
          BottomNavigationBarItem(
            icon: Icon(MdiIcons.hospitalBuilding),
            label: 'Rumah Sakit',
          ),
        ],
      ),
    );
  }
}
