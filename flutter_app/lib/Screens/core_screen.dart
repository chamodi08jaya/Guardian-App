import 'package:flutter/material.dart';
import 'Tabs/contact_screen.dart';
import 'Tabs/home_screen.dart';
import 'Tabs/option_screen.dart';

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
        HomeScreen(),
        ContactScreen(),
        OptionScreen(),
      ],
    );
  }
}
