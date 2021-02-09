import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vr_market/Colors/Colors.dart';
import 'package:vr_market/customIcons/my_flutter_app_icons.dart';
import 'package:vr_market/CustomWidgets.dart';


class SignInHelpScreen extends StatefulWidget {
  @override
  _SignInHelpScreenState createState() => _SignInHelpScreenState();
}

class _SignInHelpScreenState extends State<SignInHelpScreen> {


  Image crossedEye = Image.asset('assets/eye-slash-regular.png', height: 5.0, width: 5.0,);
  MyColors myColors = MyColors();
  String header = 'Reset Password.';
  String subHeader = 'Enter your email address below to reset password';
  String initialTextFormField_1 = 'Email';
  String newUser = 'New User? Create account';
  String returnToLogin = 'Return To Login';
  String resetPassword = 'CONFIRM RESET';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myColors.backgroundColor(),
      body: Container(
        margin: EdgeInsets.only(left: 1.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(right: 130.0, top: 90.0, left: 16.0),
              child: CustomWidgets.textWidget(header, 40.0, Color(myColors.primary()), FontWeight.w700, 1.0),
            ),Container(
              margin: EdgeInsets.only(right: 100.0, top: 9.0, left: 19.0),
              child: CustomWidgets.textWidget(subHeader, 16.0, Color(myColors.primary()), FontWeight.w300, 1.0),
            ),
            Container(
              margin: EdgeInsets.only(top: 45.0, right: 20.0),
              width: 360.0,
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email_outlined),
                   hintText: initialTextFormField_1,
                    hintStyle: TextStyle(
                      height: 1.7,
                      fontWeight: FontWeight.w300,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 60.0, right: 18.0),
              child: FlatButton(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                splashColor: Color(myColors.light()),
                color: Color(myColors.primary()),
                onPressed: (){},
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 105.0),
                  child: Text(
                    resetPassword,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.5,
                      letterSpacing: 1.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30.0, right: 18.0),
              child: CustomWidgets.linkButton('/signIn', context, returnToLogin, Color(myColors.primary()), FontWeight.w300, 16.0, 1.0),
            ),
            Container(
              margin: EdgeInsets.only(right: 18.0),
              child: CustomWidgets.linkButton('/signUp', context, newUser, Color(myColors.primary()), FontWeight.w300, 16.0, 1.0),
            ),
          ],
        ),
      ),
    );
  }
}
