import 'package:flutter/material.dart';
import 'package:flutter_app/Widgets/label_text_form_field.dart';
import 'package:pin_input_text_field/pin_input_text_field.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: _mainBody(),
    );
  }

  Widget _otpLogin(){
    return AlertDialog(
      title: Text("OTP confirmation"),
      content: SingleChildScrollView(
        child: ListBody(
          children: <Widget>[
            PinInputTextField(
          pinLength: 4,
          autoFocus: true,
          textInputAction: TextInputAction.go,
          onSubmit: (pin) {
            debugPrint('submit pin:$pin');
          },
        )
          ],
        ),
      ),
      actions: <Widget>[
        FlatButton(
          child: Text("Submit"),
          color: Colors.indigo,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          onPressed: (){},
        )
      ],
    );
  }

  Widget _mainBody() {
    return Column(
      children: <Widget>[
        AppBar(
          title: Text("Guardian App"),
          backgroundColor: Colors.indigo,
          elevation: 0,
        ),
        SizedBox(height: 40),
        Text(
          "Welcome to Guardian app",
          style: TextStyle(
              color: Colors.indigo,
              fontSize: 30,
              fontWeight: FontWeight.bold,
              fontFamily: "RobotoMono"),
        ),
        SizedBox(
          height: 100,
        ),
        LabelTextField(
          hintText: "Enter username",
          labelText: "Username",
        ),
        SizedBox(
          height: 20,
        ),
        LabelTextField(
          hintText: "Enter mobile number",
          labelText: "mobile number",
          keyboardType: TextInputType.number,
        ),
        SizedBox(
          height: 50,
        ),
        Center(
          child: FlatButton(
            child: Text(
              "Register now",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context){
                  return _otpLogin();
                }
              );
            },
            color: Colors.indigo,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          ),
        )
      ],
    );
  }
}
