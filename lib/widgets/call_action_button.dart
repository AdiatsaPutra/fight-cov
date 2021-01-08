import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CallAction extends StatelessWidget {
  final String text;
  final Color color;
  final Function onTap;

  CallAction({@required this.text, @required this.color, @required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: 130,
        height: 39,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(30)),
        child: Center(
          child: Text(
            text,
            style: GoogleFonts.poppins(
                color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      onTap: onTap,
    );
  }
}
