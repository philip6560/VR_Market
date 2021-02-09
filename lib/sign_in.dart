import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vr_market/Colors/Colors.dart';
import 'package:vr_market/customIcons/my_flutter_app_icons.dart';
import 'package:vr_market/CustomWidgets.dart';



class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {

  final _formKey = GlobalKey<FormState>();
  bool hidePasswordState = true;
  IconData hidePasswordIcon = MyCustomIcons.eye_slash_regular;
  Image crossedEye = Image.asset('assets/eye-slash-regular.png', height: 5.0, width: 5.0,);
  MyColors myColors = MyColors();
  String header = 'Log In.';
  String subHeader = 'You rock!';
  String initialTextFormField_1 = 'Email';
  String initialTextFormField_2 = 'Password';
  String newUser = 'New User? Create account';
  String forgotPassword = 'Forgot Password?';
  String logIn = 'LOG IN';

  String success(){
      dynamic success = CustomWidgets.textWidget('Success', 5.0, Colors.green);
      return success;
  }


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
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(left: 1.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 270.0, top: 90.0,),
                  child: CustomWidgets.textWidget(header, 40.0, Color(myColors.primary()), FontWeight.w700, 1.0),
                ),Container(
                  margin: EdgeInsets.only(right: 314.0, top: 9.0),
                  child: CustomWidgets.textWidget(subHeader, 16.0, Color(myColors.primary()), FontWeight.w300, 1.0),
                ),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 45.0, right: 20.0),
                        width: 360.0,
                        child: TextFormField(
                          validator: (value){
                            Pattern pattern = r'^([A-Za-z0-9])+\@[a-z]+\.[a-z]+(\.[a-z]+)?$';
                            RegExp re = RegExp(pattern);
                            if(re.hasMatch(value)){
                              return 'success';
                            }
                            else{
                              return 'wrong input';
                            }
                          },
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
                        width: 360.0,
                        margin: EdgeInsets.only(top: 60.0, right: 20.0),
                        child: TextFormField(
                          obscureText: hidePasswordState,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.lock),
                            suffixIcon:IconButton(
                              onPressed: (){hidePasswordState ?
                              enable() :
                              disable();},
                              iconSize: 19.0,
                              icon: Icon(hidePasswordIcon),
                            ),
                            hintText: initialTextFormField_2,
                            hintStyle: TextStyle(
                              height: 1.8,
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
                          onPressed: (){
                            _formKey.currentState.validate();
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 135.0),
                            child: Text(
                              logIn,
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
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 30.0, right: 18.0),
                  child: CustomWidgets.linkButton('/signInHelp', context, forgotPassword, Color(myColors.primary()), FontWeight.w300, 16.0, 1.0),
                ),
                Container(
                  margin: EdgeInsets.only(right: 18.0),
                  child: CustomWidgets.linkButton('/signUp', context, newUser, Color(myColors.primary()), FontWeight.w300, 16.0, 1.0),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

//
//onPressed: (){
//setState(() {
//hidePasswordState = false;
//hidePasswordIcon = hidePasswordState == true? MyCustomIcons.eye_slash_regular : Icons.remove_red_eye_outlined;
//});
//},
//iconSize: 19.0,
//icon: Icon(hidePasswordIcon),