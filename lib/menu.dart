import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vr_market/Colors/Colors.dart';
import 'package:vr_market/CustomWidgets.dart';


class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
      String title = 'VR Market';
      MyColors myColors = MyColors();
      String categoryHeader = 'Category';
      Map <String, String> categoryImages = {'TopImage': 'assets/advert.jpg',
                                              'Tv': 'assets/Tv.png',
                                              'Mobile': 'assets/Mobile.jpg',
                                              'Laptop':'assets/Laptop.png',
                                              'Sneaker': 'assets/Sneaker.png'};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 8.0),
                  child: CustomWidgets.textWidget(title, 25.0, myColors.backgroundColor(), FontWeight.w400, 0.0)
              ),
              Container(
                margin: EdgeInsets.only(left: 90.0,),
                child: CustomWidgets.iconButton(Icons.search, context, '', 24.0),
              ),
              Container(
                child: CustomWidgets.iconButton(Icons.shopping_cart, context, '', 24.0),
              ),
              Container(
                child: CustomWidgets.iconButton(Icons.account_circle, context, '', 24.0),
              ),
            ],
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all(0.0),
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color(myColors.primary()),
              ),
              padding: EdgeInsets.only(bottom: 0.0),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 21.0, right: 190.0),
                    child: CircleAvatar(
                        backgroundImage: AssetImage('assets/day.jpg'),
                        radius: 33.0,
                      ),
                  ),
                  Container(
                    child: ListTile(
                        title: CustomWidgets.textWidget('Scott Thomas', 22.0, myColors.backgroundColor()),
                        subtitle: CustomWidgets.textWidget('scott_t88@gmail.com', 14.0, myColors.backgroundColor()),
                        trailing: Icon(Icons.arrow_drop_down, color: myColors.backgroundColor(),),
                    ),
                  ),
                ],
              )
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: CustomWidgets.textWidget('Home', 17.5, null, FontWeight.w400),
            ),
            ListTile(
              leading: Icon(Icons.category),
              title: CustomWidgets.textWidget('Categories', 17.5, null, FontWeight.w400),
            ),
            ListTile(
              leading: Icon(Icons.shopping_cart),
              title: CustomWidgets.textWidget('My Cart', 17.5, null, FontWeight.w400),
            ),
            ListTile(
              leading: Icon(Icons.favorite),
              title: CustomWidgets.textWidget('My Wishlist', 17.5, null, FontWeight.w400),
            ),
            ListTile(
              leading: Icon(Icons.history),
              title: CustomWidgets.textWidget('Order History', 17.5, null, FontWeight.w400),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: CustomWidgets.textWidget('My Account', 17.5, null, FontWeight.w400),
            ),
            ListTile(
              leading: Icon(Icons.live_help),
              title: CustomWidgets.textWidget('Help Center', 17.5, null, FontWeight.w400),
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: CustomWidgets.textWidget('Logout', 17.5, null, FontWeight.w400),
            ),
            Divider(),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 25.0, right: 15.0, left: 16.0),
                  child: CustomWidgets.textWidget('Build Number', 15.0, null, FontWeight.w300),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25.0, left: 120.0),
                  child: CustomWidgets.textWidget('6.21.11.20', 15.0, null, FontWeight.w300),
                ),
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 18.0),
                child: FlatButton(
                  padding: EdgeInsets.all(0.0),
                  onPressed: (){
//                    Navigator.pushReplacementNamed(context, '/');
                  },
                  child: Image.asset(categoryImages['TopImage'],),
                ),
              ),
              Row(
                children: [
                  CustomWidgets.leftCategoryItem(Image.asset(categoryImages['Tv']), 'Name','Price', 'Brand', EdgeInsets.only(right: 10.0, left: 10.0, top:30.0, bottom:10.0 )),
                  CustomWidgets.rightCategoryItem(Image.asset(categoryImages['Mobile']), 'Name', 'Price','Brand', EdgeInsets.only(top: 15.0, bottom: 16.0)),
                ],
              ),
              SizedBox(height: 8.0,),
              Row(
                children: [
                  CustomWidgets.leftCategoryItem(Image.asset(categoryImages['Laptop']), 'Name', 'Price', 'Brand', EdgeInsets.only(right: 10.0, left: 10.0, top:30.0, bottom:10.0 )),
                  CustomWidgets.rightCategoryItem(Image.asset(categoryImages['Sneaker']), 'Name', 'Price', 'Brand', EdgeInsets.only(top: 45.0, bottom: 10.0)),
                ],
              ),
              SizedBox(height: 8.0,),
              Row(
                children: [
                  CustomWidgets.leftCategoryItem(Image.asset(categoryImages['Mobile']), 'Name', 'Price', 'Brand', EdgeInsets.only(top:15.0, bottom: 10.0)),
                  CustomWidgets.rightCategoryItem(Image.asset(categoryImages['Mobile']), 'Mobile', 'Price', 'Brand', EdgeInsets.only(top: 15.0, bottom: 10.0)),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
