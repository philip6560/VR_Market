import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:vr_market/Colors/Colors.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';



class SplashScreen extends StatefulWidget {

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  Duration duration;
  MyColors myColors = MyColors();
  String appName = 'VR Market';


  void transit() async{

    duration = await Future.delayed(Duration(seconds: 3));

    Navigator.pushReplacementNamed(context, '/welcome');
  }


  @override
  void initState() {
    super.initState();
    transit();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(myColors.primary()),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 180.0, 0.0, 0.0),
              child: Material(
                borderRadius: BorderRadius.all(Radius.circular(80.0)),
                      elevation: 0.0,
                      child: Padding(
                        padding: const EdgeInsets.all(24.0),
                        child: Image.asset('assets/shopping-cart-solid.png', height: 69.0, width: 69.0,color: Color(myColors.primary()),),
                      ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.00,),
              child: Text(
                appName,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 35.0,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 1.0,
                ),
              ),
            ),
              Padding(
                padding: const EdgeInsets.only(top: 325.0),
                child: Container(
                 child: Column(
                   children: [
                     SpinKitRing(
                       color: Color(myColors.light()),
                       size: 50.0,
                     ),
                     SizedBox(height: 10.0,),
                     Text(
                         'E-Commerce Solution',
                         style: TextStyle(
                           color: Colors.white,
                           fontSize: 30.0,
                           fontWeight: FontWeight.w600,
                         )
                     ),
                     SizedBox(height: 5.0,),
                     Text(
                         'Template by HWP Labs',
                         style: TextStyle(
                           color: Colors.white,
                           fontSize: 20.0,
                           fontWeight: FontWeight.w300,
                         )
                     )
                   ],
                 ),
                ),
              )
          ],
        ),

      ),

    );
  }
}
