import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pubstory/constants.dart';

class HPageContainers extends StatelessWidget {
  final Color? color;
  final IconData? icon;
  final String? text;
  final void Function()? onPress;

  HPageContainers({this.color, this.icon, this.text, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        padding: EdgeInsets.all(8),
        margin: EdgeInsets.all(8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0), color: color),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 75,
              color: Colors.black,
            ),
            SizedBox(height: 15),
            Text(
              text!,
              textAlign: TextAlign.center,
              style: GoogleFonts.roboto(textStyle: kTextStyleBlack),
            ),
          ],
        ),
      ),
    );
  }
}
