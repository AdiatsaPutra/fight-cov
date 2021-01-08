import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class KeteranganGejala extends StatelessWidget {
  final String keterangan;

  KeteranganGejala({@required this.keterangan});

  @override
  Widget build(BuildContext context) {
    return Text(
      keterangan,
      style: GoogleFonts.poppins(
          color: Color(0xFF212121), fontSize: 12, fontWeight: FontWeight.bold),
    );
  }
}
