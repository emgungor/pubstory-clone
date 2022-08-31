import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Countdown extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 20),
      color: Colors.pink,
      child: Text(
        "Sonraki Aşamaya : min/sec",
        textAlign: TextAlign.start,
        style: GoogleFonts.roboto(
            textStyle: TextStyle(
          color: Colors.white,
          fontSize: 16,
        )),
      ),
    );
  }
}

TextStyle kTextStyleBlack = TextStyle(fontSize: 22, color: Colors.black);
TextStyle kTitleStyleBlack = TextStyle(fontSize: 36, color: Colors.black);
TextStyle kTextStyleWhite = TextStyle(fontSize: 22, color: Colors.white);
TextStyle kTitleStyleWhite = TextStyle(fontSize: 36, color: Colors.white);
