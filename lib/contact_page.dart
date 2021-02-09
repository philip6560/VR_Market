import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vr_market/CustomWidgets.dart';
import 'package:vr_market/Colors/Colors.dart';


class ContactScreen extends StatelessWidget {
  
  final MyColors myColors = MyColors();
  final String header = 'Contact Us';
  final String subHeader1 = 'We are available to support you all the way. Reach out to us.';
  final String addressLine1 = '1 Liberty Way, Ugbowo,';
  final String addressLine2 = 'BC 300283,';
  final String addressLine3 = 'Edo State.';
  final String phoneLines = '08169960927, 08117390237';
  final String emailAddress = 'contact@hwplabs.com';
  final String subHeader2 = 'Connect With Us on Social Media';



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: myColors.backgroundColor(),
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          iconSize: 35.0,
          color: Color(myColors.primary()),
          onPressed: (){
            Navigator.pop(context);
          },
        )
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(1.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 50.0, right: 230.0,),
                child: CustomWidgets.textWidget(header, 40.0, Color(myColors.primary()), FontWeight.w700, 1.0),
              ),
              Container(
                margin: EdgeInsets.only(top: 9.0, right: 70.0, left: 9.0),
                child: CustomWidgets.textWidget(subHeader1, 19.0, Color(myColors.primary()), FontWeight.w300, 0.3),
              ),
              Container(
                margin: EdgeInsets.only(top: 15.0, bottom: 35.0),
                child: Image.asset('assets/map.jpg', width: 418.0, height: 250.0,),
              ),
              Container(
                margin: EdgeInsets.only(right: 215.0,),
                child: CustomWidgets.textWidget(addressLine1, 20.0, Color(myColors.primary()), FontWeight.w400, 1.0),
              ),
              Container(
                margin: EdgeInsets.only(right: 316.0),
                child: CustomWidgets.textWidget(addressLine2, 20.0, Color(myColors.primary()), FontWeight.w400, 0.5),
              ),
              Container(
                margin: EdgeInsets.only(right: 326.0),
                child: CustomWidgets.textWidget(addressLine3, 20.0, Color(myColors.primary()), FontWeight.w400, 0.5),
              ),
              Container(
                margin: EdgeInsets.only(top: 35.0, right: 168.0, bottom: 25.0),
                child: CustomWidgets.textWidget(phoneLines, 20.0, Color(myColors.primary()), FontWeight.w400, 1.0),
              ),
              Container(
                margin: EdgeInsets.only(right: 214.0, bottom: 30.0),
                child: CustomWidgets.textWidget(emailAddress, 20.0, Color(myColors.primary()), FontWeight.w400, 1.2),
              ),
              Divider(indent: 7.5, endIndent: 7.5,),
              Container(
                margin: EdgeInsets.only(top: 45.0, right: 30.0),
                child: CustomWidgets.textWidget(subHeader2, 30.0, Color(myColors.primary()), FontWeight.w400, 0.1),
              ),
              Container( //Facebook
                margin: EdgeInsets.only(top: 30.0, left: 7.5, bottom: 20.0),
                child: Row(
                  children: [
                    Image.asset('assets/facebook-square-brands.png', width: 33.0, height: 33.0, color: Color(myColors.primary()),),
                    SizedBox(width: 284.0,),
                    CustomWidgets.linkButton('', context, 'Facebook', Color(myColors.primary()), FontWeight.w400, 20.0, 0.0),
                  ],
                ),
              ),
              Divider(indent: 7.5, endIndent: 7.5,),
              Container( //Twitter
                margin: EdgeInsets.only(top: 7.5, left: 7.5, bottom: 7.5),
                child: Row(
                  children: [
                    Image.asset('assets/twitter-brands.png', width: 33.0, height: 33.0, color: Color(myColors.primary()),),
                    SizedBox(width: 286.0,),
                    CustomWidgets.linkButton('', context, 'Twitter', Color(myColors.primary()), FontWeight.w400, 20.0, 0.0),
                  ],
                ),
              ),
              Divider(indent: 7.5, endIndent: 7.5,),
              Container( //Instagram
                margin: EdgeInsets.only(top: 7.5, left: 7.5, bottom: 7.5),
                child: Row(
                  children: [
                    Image.asset('assets/instagram-brands.png', width: 33.0, height: 33.0, color: Color(myColors.primary()),),
                    SizedBox(width: 287.0,),
                    CustomWidgets.linkButton('', context, 'Instagram', Color(myColors.primary()), FontWeight.w400, 20.0, 0.0),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
