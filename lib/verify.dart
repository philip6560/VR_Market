import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vr_market/Colors/Colors.dart';
import 'package:vr_market/CustomWidgets.dart';

class VerifyScreen extends StatefulWidget {
  @override
  _VerifyScreenState createState() => _VerifyScreenState();
}

class _VerifyScreenState extends State<VerifyScreen> {

  Future onPressed;
  String header = 'Enter Verification Code';
  MyColors myColors = MyColors();
  String confirmPin = 'CONFIRM PIN';
  String newUser = 'Return to Dashboard';
  String cancelRequest = 'Cancel request';




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myColors.backgroundColor(),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 120.0),
                child: Image(
                  color: Color(myColors.primary()),
                  width: 55.0,
                  height: 55.0,
                  image: AssetImage('assets/lock-solid.png'),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 36.0),
                child: CustomWidgets.textWidget(header, 30.0, Color(myColors.primary()), FontWeight.w700, 1.0),
              ),
              Container(
                child: Row(
                  children: [
                    CustomWidgets.inputBoxField(),
                    CustomWidgets.inputBoxField(),
                    CustomWidgets.inputBoxField(),
                    CustomWidgets.inputBoxField(),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 70.0),
                child: FlatButton(
                  splashColor: Color(myColors.light()),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                  color: Color(myColors.primary()),
                  onPressed: (){},
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 125.0),
                    child: Text(
                      confirmPin,
                      style: TextStyle(
                        fontSize: 14.5,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.0,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30.0),
                child: CustomWidgets.linkButton('/signIn', context, cancelRequest, Color(myColors.primary()), FontWeight.w300, 16.0, 1.0),
              ),
              Container(
                child: CustomWidgets.linkButton('/signUp', context, newUser, Color(myColors.primary()), FontWeight.w300, 16.0, 1.0),
              ),
            ],
          ),
        ],
      ),

    );
  }
}
