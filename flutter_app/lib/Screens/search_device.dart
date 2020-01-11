import 'package:flutter/material.dart';
import 'package:flutter_app/Screens/instruction_screen.dart';

class SearchDevice extends StatefulWidget {
  @override
  _SearchDeviceState createState() => _SearchDeviceState();
}

class _SearchDeviceState extends State<SearchDevice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Guardian app"),
        backgroundColor: Colors.indigo,
      ),
      body: _search_body(),
    );
  }

  Widget _search_body() {
    return Container(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: MediaQuery.of(context).size.height / 8,
          ),
          Center(
            child: Text(
              "Search a device",
              style: TextStyle(
                  color: Colors.indigo,
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 16,
          ),
          Center(
            child: IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                Navigator.push(context,MaterialPageRoute(
                  builder: (context)=>InstructionScreen()
                ));
              },
              iconSize: 250,
              color: Colors.indigo,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 16,
          ),
          Center(
              child: ButtonTheme(
                minWidth: MediaQuery.of(context).size.width / 2,
            child: FlatButton(
              child: Text(
                "Connect wrist band",
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.teal,
              onPressed: () {
                Navigator.push(context,MaterialPageRoute(
                  builder: (context)=>InstructionScreen()
                ));
              },
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
            ),
          )),
          SizedBox(
            height: MediaQuery.of(context).size.height / 30,
          ),
          Center(
              child: ButtonTheme(
            minWidth: MediaQuery.of(context).size.width / 2,
            child: FlatButton(
              child: Text(
                "Skip this step",
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.red,
              onPressed: () {
                Navigator.push(context,MaterialPageRoute(
                  builder: (context)=>InstructionScreen()
                ));
              },
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
            ),
          ))
        ],
      ),
    );
  }
}
