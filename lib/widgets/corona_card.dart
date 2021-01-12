import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CoronaCard extends StatelessWidget {
  final String text;
  final String data;
  final Color color;

  const CoronaCard({this.text, this.data, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 350,
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
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
