import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _homeScreen(),
    );
  }

  Widget _homeScreen() {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            color: Colors.grey,
            height: 60,
            child: Center(
              child: Text(
                "Your Location",
                style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            color: Colors.grey,
            height: 60,
            child: Center(
              child: Text(
                "Your Location",
                style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Center(
            child: Icon(
              Icons.mms,
              size: 300,
              color: Colors.grey,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          InkWell(
            onTap: (){},
            child: Container(
            color: Colors.green,
            height: 60,
            width: MediaQuery.of(context).size.width/2,
            child: Center(
              child: Text(
                "Plan your trip",
                style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          )),
        ],
      ),
    );
  }
}
