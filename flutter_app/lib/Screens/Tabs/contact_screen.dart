import 'package:flutter/material.dart';

class ContactScreen extends StatefulWidget {
  @override
  _ContactScreenState createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _ContactBody(),
    );
  }

  Widget _ContactBody() {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            color: Colors.grey,
            height: 60,
            child: Center(
              child: Text(
                "Add Emergency Contact",
                style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Row(
            // crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.group_add,size: 100,),
                onPressed: null,
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          ListTile(
            title: Text("Amith perera"),
            trailing: Icon(Icons.add),
          ),
          ListTile(
            title: Text("Anith Dias"),
            trailing: Icon(Icons.add),
          ),
          ListTile(
            title: Text("Charini Silva"),
            trailing: Icon(Icons.add),
          ),
          ListTile(
            title: Text("Dinesha K"),
            trailing: Icon(Icons.add),
          ),
          ListTile(
            title: Text("Kanchana L"),
            trailing: Icon(Icons.add),
          ),
          ListTile(
            title: Text("Senora H"),
            trailing: Icon(Icons.add),
          ),
          ListTile(
            title: Text("Srimali O"),
            trailing: Icon(Icons.add),
          ),
        
        ],
      ),
    );
  }
}
