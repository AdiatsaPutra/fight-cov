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

  List pages = [CoronaPage(), RumahSakit()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFFF73C4F),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            children: [
              Icon(
                MdiIcons.phone,
                color: Colors.white,
                size: 30,
              ),
              Text(
                'Call',
                style: GoogleFonts.poppins(
                    fontSize: 11,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        onPressed: () {},
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: onTabTapped,
        fixedColor: Color(0xFFF73C4F),
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
            icon: Icon(MdiIcons.hospitalBuilding),
            label: 'Rumah Sakit',
          ),
        ],
      ),
    );
  }
}
