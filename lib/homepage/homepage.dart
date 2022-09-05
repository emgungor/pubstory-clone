import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pubstory/constants.dart';

import 'package:pubstory/routes/route_spin_the_bottle.dart';
import 'package:pubstory/homepage/homepage_containers.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pub Story",
            style: GoogleFonts.permanentMarker(textStyle: kTitleStyleWhite)),
        centerTitle: true,
      ),
      body: CustomScrollView(
        slivers: [
          SliverGrid(
            delegate: SliverChildListDelegate(listeElemanlari()),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisExtent: 250,
            ),
          ),
        ],
      ),
    );
  }

  listeElemanlari() {
    return [
      HPageContainers(
        color: Colors.blueAccent,
        icon: (FontAwesomeIcons.wineBottle),
        text: "Spin the Bottle",
        onPress: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => SpinTheBottle()));
        },
      ),
      HPageContainers(
        color: Colors.amber,
        icon: (FontAwesomeIcons.burst),
        text: "Raise the Devil",
        onPress: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => SpinTheBottle()));
        },
      ),
      HPageContainers(
        color: Colors.red,
        icon: (FontAwesomeIcons.heart),
        text: "Double Date",
        onPress: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => SpinTheBottle()));
        },
      ),
      HPageContainers(
        color: Colors.purpleAccent,
        icon: (FontAwesomeIcons.faceDizzy),
        text: "Confessions",
        onPress: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => SpinTheBottle()));
        },
      ),
      HPageContainers(
        color: Colors.pink[600],
        icon: (FontAwesomeIcons.handcuffs),
        text: "Kinks",
        onPress: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => SpinTheBottle()));
        },
      ),
      HPageContainers(
        color: Colors.tealAccent,
        icon: (FontAwesomeIcons.clapperboard),
        text: "Cinephile",
        onPress: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => SpinTheBottle()));
        },
      ),
      HPageContainers(
        color: Colors.orange,
        icon: (FontAwesomeIcons.glasses),
        text: "Nerds",
        onPress: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => SpinTheBottle()));
        },
      ),
      HPageContainers(
        color: Colors.green,
        icon: (FontAwesomeIcons.moneyBill1),
        text: "Bets On!",
        onPress: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => SpinTheBottle()));
        },
      ),
    ];
  }
}
