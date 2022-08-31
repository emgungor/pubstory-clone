import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pubstory/constants.dart';
import 'package:pubstory/quest_database.dart';

class VersusTextBox extends StatefulWidget {
  @override
  State<VersusTextBox> createState() => _VersusTextBoxState();
}

class _VersusTextBoxState extends State<VersusTextBox> {
  List<Widget> choices = [];
  QuestDataBase test_01 = QuestDataBase();

  void buttonFunction(bool pickedButton) {
    if (test_01.questFinish() == true) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          // return object of type Dialog
          return AlertDialog(
            title: new Text("Alert Dialog title"),
            content: new Text("Alert Dialog body"),
            actions: <Widget>[
              // usually buttons at the bottom of the dialog
              new ElevatedButton(
                child: new Text("Close"),
                onPressed: () {
                  Navigator.of(context).pop();
                  setState(() {
                    test_01.questRestart();
                    choices = [];
                  });
                },
              ),
            ],
          );
        },
      );
    } else {
      setState(() {
        test_01.getQuestAnswer() == pickedButton
            ? choices.add(Icon(Icons.add_alert_outlined))
            : choices.add(Icon(Icons.add_alert));
        test_01.nextQuest();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.all(10),
            color: Colors.white,
            child: Center(
              child: Text(
                test_01.getQuestLog(),
                textAlign: TextAlign.center,
                style: GoogleFonts.roboto(textStyle: kTextStyleBlack),
              ),
            ),
          ),
        ),
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 6),
                child: scoreButton(),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 6),
                child: failButton(),
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
      ],
    );
  }

  OutlinedButton scoreButton() {
    return OutlinedButton(
      onPressed: () {
        buttonFunction(true);
      },
      child: Text("Score!"),
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
        fixedSize: MaterialStateProperty.all(Size.fromHeight(50)),
        foregroundColor: MaterialStateProperty.all(Colors.white),
        backgroundColor: MaterialStateProperty.all(Colors.pink),
        overlayColor: MaterialStateProperty.all(Colors.pink[400]),
      ),
    );
  }

  OutlinedButton failButton() {
    return OutlinedButton(
      onPressed: () {
        buttonFunction(false);
      },
      child: Text("Fail"),
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
        fixedSize: MaterialStateProperty.all(Size.fromHeight(50)),
      ),
    );
  }
}
