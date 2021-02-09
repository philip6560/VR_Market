import 'package:flutter/material.dart';
import 'package:vr_market/Colors/Colors.dart';
import 'package:vr_market/CustomWidgets.dart';


class AboutScreen extends StatelessWidget {

  final MyColors myColors = MyColors();
  final String copyright = '© 2011-2020 HWP Labs.';
  final String contactUs = 'CONTACT US';
  final String logo = 'assets/shopping-cart-solid.png';
  final String version = 'Version 6.7.11.20';
  final String appName = 'VR Market';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myColors.backgroundColor(),
      body: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 275.0),
                  child: CustomWidgets.textWidget(appName, 31.0, Color(myColors.primary()), FontWeight.w700, 1.0),
                ),
                Container(
                  margin: EdgeInsets.only(top: 7.0),
                  child: CustomWidgets.textWidget(version, 20.0, Color(myColors.primary()), FontWeight.w300, 1.5),
                ),
                Container(
                  margin: EdgeInsets.only(top: 15.0),
                  child: Image.asset(logo, color: Color(myColors.primary()), width: 140.0, height: 150.0,),
                ),
                Container(
                  margin: EdgeInsets.only(top: 15.0),
                  child: CustomWidgets.textWidget(copyright, 20.0, Color(myColors.primary()), FontWeight.w300, 1.5),
                ),
                Container(
                  margin: EdgeInsets.only(top: 40.0),
                  child: FlatButton(
                    padding: EdgeInsets.all(0.0),
                    height: 0.0,
                    splashColor: Color(myColors.light()),
                    shape: Border(bottom: BorderSide(color: Color(myColors.primary()))),
                    onPressed: (){
                      Navigator.pushNamed(context, '/contactUs');
                    },
                    child: CustomWidgets.textWidget(contactUs, 21.0, Color(myColors.primary()), FontWeight.w600),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
