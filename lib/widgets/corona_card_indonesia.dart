import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CoronaCardIndoesia extends StatelessWidget {
  final String text;
  final String data;
  final Color color;

  const CoronaCardIndoesia({this.text, this.data, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 150,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(15)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: GoogleFonts.poppins(
                fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Text(
            data,
            style: GoogleFonts.poppins(
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
