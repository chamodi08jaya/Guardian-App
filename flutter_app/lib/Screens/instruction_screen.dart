import 'package:flutter/material.dart';
import 'package:flutter_app/Screens/core_screen.dart';

class InstructionScreen extends StatefulWidget {
  @override
  _InstructionScreenState createState() => _InstructionScreenState();
}

class _InstructionScreenState extends State<InstructionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Guardian app"),
        backgroundColor: Colors.indigo,
      ),
      body: _instructionBody(),
    );
  }

  Widget _instructionBody() {
    return Column(
      children: <Widget>[
        SizedBox(
          height: MediaQuery.of(context).size.height / 10,
        ),
        Center(
          child: Text(
            "Instructions",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 15,
        ),
        Center(
          child: Text(
            "1.Use the smart device or long press the power button to send alerts",
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 25,
        ),
        Center(
          child: Text(
            "2.Toggle between sending Voice/Images alerts through option menu",
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 25,
        ),
        Center(
          child: Text(
            "3.Upgrade premium to use cloud storage",
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 15,
        ),
        Center(
            child: ButtonTheme(
          minWidth: MediaQuery.of(context).size.width / 2,
          child: FlatButton(
            child: Text(
              "Proceed",
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.green,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CoreScreen()));
            },
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          ),
        ))
      ],
    );
  }
}
