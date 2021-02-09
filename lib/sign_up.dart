import 'package:flutter/material.dart';
import 'package:vr_market/Colors/Colors.dart';
import 'package:vr_market/customIcons/my_flutter_app_icons.dart';
import 'package:vr_market/CustomWidgets.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  String Header = "Let's get to know you.";
  String subHeader = 'Create an account and start stacking your coins';
  String labelTextFormField_1 = 'Name';
  String labelTextFormField_2 = 'Email';
  String labelTextFormField_3 = 'Password';
  bool hidePasswordState = true;
  IconData hidePasswordIcon = MyCustomIcons.eye_slash_regular;
  String submitDetails = 'SUBMIT';
  MyColors myColors = MyColors();

  enable(){
    setState(() {
    hidePasswordState = false;
    hidePasswordIcon = Icons.remove_red_eye_outlined;
    });
  }

  disable(){
    setState(() {
      hidePasswordState = true;
      hidePasswordIcon = MyCustomIcons.eye_slash_regular;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myColors.backgroundColor(),
      appBar: AppBar(
        backgroundColor: myColors.backgroundColor(),
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          iconSize: 35.0,
          color: Color(myColors.primary()),
          onPressed: (){
            setState(() {
              Navigator.pushReplacementNamed(context, '/welcome');
            });
          },
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 20.0, left: 5.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(right: 80.0, bottom: 12.0, left: 16.0),
              child: CustomWidgets.textWidget(Header, 40.0, Color(myColors.primary()), FontWeight.w500),
            ),
            Container(
              margin: EdgeInsets.only(right: 130.0, bottom: 22.0, left: 16.0),
              child: CustomWidgets.textWidget(subHeader, 16.0, Color(myColors.primary()), FontWeight.w300, 1.0),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 30.0, right: 5.0),
              width: 380.0,
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: labelTextFormField_1,
                  prefixIcon: Icon(Icons.account_circle),
                  labelStyle: TextStyle(
                    fontSize: 14.0,
                    letterSpacing: 0.7,
                  ),
                  ),
                ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 30.0, right: 5.0),
              width: 380.0,
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: labelTextFormField_2,
                  prefixIcon: Icon(Icons.email_outlined),
                  labelStyle: TextStyle(
                    fontSize: 14.0,
                    letterSpacing: 0.7,
                  ),
                  ),
                ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 30.0, right: 5.0),
              width: 380.0,
              child: TextFormField(
                obscureText: hidePasswordState,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: IconButton(
                    onPressed: (){hidePasswordState ?
                    enable() :
                    disable();},
                    iconSize: 19.0,
                    icon: Icon(hidePasswordIcon),
                  ),
                  labelText: labelTextFormField_3,
                  labelStyle: TextStyle(
                    fontSize: 14.0,
                    letterSpacing: 0.7,
                  ),
                  ),
                ),
            ),
            Container(
              margin: EdgeInsets.only(right: 5.0),
              child: FlatButton(
                splashColor: Color(myColors.light()),
                color: Color(myColors.primary()),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3.0)),
                onPressed: (){},
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 148.0),
                  child: Text(
                    submitDetails,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.5,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.0,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
