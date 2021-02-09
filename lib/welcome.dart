import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:vr_market/Colors/Colors.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {

  MyColors myColors = MyColors();
  String welcomeQuote = 'Welcome to VR Market';
  String quoteLine1 = 'We help you save and invest your';
  String quoteLine2 = 'money to achieve your financial';
  String quoteLine3 = 'goals';
  String getStarted = 'GET STARTED';
  String logIn = 'LOG IN';
  String logo = 'assets/shopping-cart-solid.png';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myColors.backgroundColor(),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 60.0),
              child: Image(
                height: 69.0,
                width: 69.0,
                color: Color(myColors.primary()),
                image: AssetImage(logo),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 26.0),
              child: Text(
                welcomeQuote,
                style: TextStyle(
                  color: Color(myColors.primary()),
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.0,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 60.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      quoteLine1,
                      style: TextStyle(
                        color: Color(myColors.primary()),
                        fontSize: 23.0,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.6,
                      ),
                    ),
                  ),
                  Text(
                    quoteLine2,
                    style: TextStyle(
                      color: Color(myColors.primary()),
                      fontSize: 23.0,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.4,
                    ),
                  ),
                  Text(
                    quoteLine3,
                    style: TextStyle(
                      color: Color(myColors.primary()),
                      fontSize: 23.0,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.4,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10.0),
              child: FlatButton(
                color: Color(myColors.primary()),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0), side: BorderSide(color: Color(myColors.primary()), width: 2.0,)),
                splashColor: Color(myColors.light()),
                onPressed: (){
                  setState(() {
                    Navigator.pushReplacementNamed(context, '/signUp');
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 100.0),
                  child: Text(
                    getStarted,
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                        color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 45.0),
              child: FlatButton(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0), side: BorderSide(color: Color(myColors.primary()), width: 2.0,)),
                splashColor: Color(myColors.light()),
                onPressed: () {
                  setState(() {
                    Navigator.pushReplacementNamed(context, '/signIn');
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 125.0,),
                  child: Text(
                    logIn,
                    style: TextStyle(
                      color: Color(myColors.primary()),
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ]
        ),
      ),
    );
  }
}
