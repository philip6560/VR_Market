
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vr_market/Colors/Colors.dart';
import 'package:vr_market/menu.dart';


class CustomWidgets{

  static MyColors myColors = MyColors();

  CustomWidgets._();


  static Text textWidget (String text, double fontSize, [Color color, FontWeight fontWeight, double letterSpacing]){
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        color: color,
        fontWeight: fontWeight,
        letterSpacing: letterSpacing,
      ),
    );
  }

  static FlatButton linkButton (String routeName, BuildContext context, String text, Color color, FontWeight fontWeight, double fontSize, double letterSpacing){
    return FlatButton(
      padding: EdgeInsets.all(0.0),
      minWidth: 0.0,
      height: 0.0,
      highlightColor: Colors.white,
      splashColor: Color(MyColors().light()),
      onPressed: (){
        Navigator.pushReplacementNamed(context, routeName);
      },
      child: Text(
        text,
        style: TextStyle(
          color: color,
          fontSize: fontSize,
          fontWeight: fontWeight,
          letterSpacing: letterSpacing,
        ),
      ),
    );
  }

  static inputBoxField(){
    return Container(
      margin: EdgeInsets.only(top: 30.0, left: 10.0, right: 10.0),
      width: 55.0,
      height: 55.0,
      child: TextFormField(
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(7.0)),
        ),
      ),
    );
  }

  static iconButton(IconData icon, BuildContext context, String routeName, [double size]){
    return Container(
      width: 46.0,
      child: IconButton(
        onPressed: (){
          Navigator.pushNamed(context, routeName);
        },
        iconSize: size,
        icon: Icon(icon),
      ),
    );
  }

  static leftCategoryItem(Image productImage, String productName, String productPrice, String productBrand, EdgeInsetsGeometry productPadding){
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(0.0),
        margin: EdgeInsets.only(top: 3.0),
        height: 245.0,
        width: 195.0,
        child: FlatButton(
          padding: EdgeInsets.only(right: 9.0, left: 6.0),
          child: Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2.0)),
            elevation: 1.0,
            margin: EdgeInsets.all(0.0),
            child: Column(
              children: [
                Padding(
                  padding: productPadding,
                  child: productImage,
                ),
                Container(
                  width: 200.0,
                  height: 20.0,
                  child: ListTile(
                    title: Text(productName),
                    subtitle: Text(productPrice),
                  ),
                ),
                ListTile(
                  subtitle: Text(productBrand),)
              ],
            ),
          ),
        ),
      ),
    );
  }


  static rightCategoryItem(Image productImage, String productName, String productPrice, String productBrand, EdgeInsetsGeometry productPadding){
    return Expanded(
      child: Container(
        height: 245.0,
        width: 195.0,
        margin: EdgeInsets.only(top: 3.0),
        child: FlatButton(
          padding: EdgeInsets.only(right: 6.0, left: 9.0 ),
          child: Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2.0)),
            margin: EdgeInsets.all(0.0),
            elevation: 1.0,
            child: Column(
              children: [
                Padding(
                  padding: productPadding,
                  child: productImage,
                ),
                Container(
                  width: 200.0,
                  height: 20.0,
                  child: ListTile(
                    title: Text(productName),
                    subtitle: Text(productPrice),
                  ),
                ),
                ListTile(
                  subtitle: Text(productBrand),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }


}