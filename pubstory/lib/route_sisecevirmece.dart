import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pubstory/versus_textbox.dart';

class SpinTheBottle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Spin the Bottle"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 20),
              color: Colors.pink,
              child: Text(
                "Next Stage : min/sec",
                textAlign: TextAlign.start,
                style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                )),
              ),
            ),
          ),
          Expanded(
              flex: 2,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.pink,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.account_circle,
                            size: 75,
                            color: Colors.white,
                          ),
                          SizedBox(height: 5),
                          Text(
                            "Username",
                            style: GoogleFonts.ubuntu(
                                textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            )),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.pink,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.account_circle,
                            size: 75,
                            color: Colors.white,
                          ),
                          SizedBox(height: 5),
                          Text(
                            "Username",
                            style: GoogleFonts.ubuntu(
                                textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            )),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )),
          Expanded(
            flex: 8,
            child: VersusTextBox(),
          ),
        ],
      ),
    );
  }
}
