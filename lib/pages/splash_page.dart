part of 'pages.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 3,
      navigateAfterSeconds: Wrapper(),
      title: Text(
        'Fight Cov',
        style: GoogleFonts.poppins(
            color: Colors.black.withOpacity(0.3),
            fontSize: 30,
            fontWeight: FontWeight.bold),
      ),
      image: Image.asset('assets/char1.png'),
      backgroundColor: Colors.white,
      photoSize: 100.0,
      useLoader: false,
    );
  }
}
