import 'package:flutter/material.dart';
import 'package:flutter_app/Screens/instruction_screen.dart';

class CoreScreen extends StatefulWidget {
  @override
  _CoreScreenState createState() => _CoreScreenState();
}

class _CoreScreenState extends State<CoreScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.indigo,
            title: Text("Guardian app"),
            bottom: TabBar(
              tabs: <Widget>[
                Tab(text: "Home"),
                Tab(text: "Contact"),
                Tab(text: "Option"),
              ],
            ),
          ),
          body: _coreBody(),
        ));
  }

  Widget _coreBody() {
    return TabBarView(
      children: <Widget>[
        // InstructionScreen(),
        Text("fndjf"),
        Text("fndjf"),
        Text("fndjf"),
      ],
    );
  }
}
