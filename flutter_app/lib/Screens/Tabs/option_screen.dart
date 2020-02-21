import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class OptionScreen extends StatefulWidget {
  @override
  _OptionScreenState createState() => _OptionScreenState();
}

class _OptionScreenState extends State<OptionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _optionsBody(),
    );
  }

   bool _enabled;

  Widget _optionsBody() {
    return Container(
      child: Column(
        children: <Widget>[
           SizedBox(
            height: MediaQuery.of(context).size.height/16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.camera_alt,
                  size: 70,
                ),
                onPressed: null,
              ),
              IconButton(
                icon: Icon(
                  Icons.cloud,
                  size: 70,
                ),
                onPressed: null,
              ),
              IconButton(
                icon: Icon(
                  Icons.done,
                  size: 70,
                ),
                onPressed: null,
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height/8,
          ),
          ListTile(
            leading: Text("Enable voice recording"),
            trailing: FlatButton(onPressed: (){}, child: Text("On / Off")),
          ),
          ListTile(
            leading: Text("Camera features"),
            trailing: FlatButton(onPressed: (){}, child: Text("On / Off")),
          ),
          ListTile(
            leading: Text("Store in cloud"),
            trailing: FlatButton(onPressed: (){}, child: Text("On / Off")),
          ),
          ListTile(
            leading: Text("Message content"),
            trailing: FlatButton(onPressed: (){}, child: Text("On / Off")),
          ),
          ListTile(
            title: Center(child: Text("Purchase Premium Version"),)
          )
        ],
      ),
    );
  }
}
