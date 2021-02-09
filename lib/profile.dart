

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vr_market/Colors/Colors.dart';
import 'package:vr_market/CustomWidgets.dart';
import 'package:vr_market/menu.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  MyColors myColors = MyColors();
  var _groupValue = -1;
  String _selectedItem;

  void _setGroupValue(int value){
      setState(() {
        _groupValue = value;
      });
  }

  void _currentItem(String value){
    setState(() {
      _selectedItem = value;
    });
  }

  List <String> states = ['Abia', 'Adamawa', 'Akwa', 'Anambra', 'Bauchi', 'Benue',
                          'Lagos', 'Akwa Ibom', 'Gombe', 'Imo', 'Jigawa', 'Kaduna',
                          'Kogi', 'Nassarawa', 'Niger', 'Edo', 'Ondo', 'Delta',
                          'Ogun', 'Oyo'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back, color: Color(myColors.primary()), size: 30.0,),
        elevation: 0,
        backgroundColor: myColors.backgroundColor(),
        title: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                  child: CustomWidgets.textWidget('Edit Profile', 28.0, Color(myColors.primary()))
              ),
              Container(
                padding: EdgeInsets.only(left: 185.0),
                  child: Icon(Icons.check, color: Color(myColors.primary()), size: 30.0,)
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 10.0, left: 12.0, right: 16.0),
          child: Column(
            children: [
//        work on these first two widgets to enable them change pic from the phones gallery
              Padding(
                padding: EdgeInsets.only(top: 30.0),
                child: CircleAvatar(
                  radius: 60.0,
                  backgroundImage: AssetImage('assets/day.jpg'),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: CustomWidgets.textWidget('Change Profile Photo', 22.0, Color(myColors.primary())),
              ),
              Form(
                child: Column(
                  children: [
                    Container(
                      child: Padding(
                        padding: EdgeInsets.only(top: 30.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.account_circle),
                            hintText: 'Name',
                            hintStyle: TextStyle(
                              fontSize: 14.0,
                              letterSpacing: 0.7,
                            )
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: EdgeInsets.only(top: 40.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.email_outlined),
                            hintText: 'Email Address',
                            hintStyle: TextStyle(
                              fontSize: 14.0,
                              letterSpacing: 0.7,
                            )
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: EdgeInsets.only(top: 40.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.phone_android),
                            hintText: 'Phone',
                            hintStyle: TextStyle(
                              fontSize: 14.0,
                              letterSpacing: 0.7,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 25.0),
                      child: Row(
                        children: [
                          Radio(
                            value: 0,
                            groupValue: _groupValue,
                            onChanged: _setGroupValue,
                          ),
                          CustomWidgets.textWidget('Male', 16.0, null, null, 0.7),
                          Radio(
                            value: 1,
                            groupValue: _groupValue,
                            onChanged: _setGroupValue,
                          ),
                          CustomWidgets.textWidget('Female', 16.0, null, null, 0.7),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 10.0),
                      child: DropdownButton(
                        isExpanded: true,
                        dropdownColor: myColors.backgroundColor(),
                        hint: Text('    Select State'),
                        value: _selectedItem,
                        onChanged: _currentItem,
                        items: states.map((String state) {
                          return DropdownMenuItem<String>(
                            value: state,
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0, right:10.0),
                                  child: Icon(Icons.location_on_outlined),
                                ),
                                Text(state),
                              ],
                            ),
                          );
                        } ).toList(),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 35.0),
                      margin: EdgeInsets.only(bottom: 20.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.home_outlined),
                          hintText: 'Address',
                          hintStyle: TextStyle(
                            fontSize: 14,
                            letterSpacing: 0.7,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
