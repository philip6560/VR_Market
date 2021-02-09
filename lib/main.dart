
import 'package:flutter/material.dart';
import 'package:vr_market/sign_up.dart';
import 'package:vr_market/splash.dart';
import 'package:vr_market/welcome.dart';
import 'package:vr_market/sign_in.dart';
import 'package:vr_market/verify.dart';
import 'package:vr_market/sign_in_help.dart';
import 'package:vr_market/about_page.dart';
import 'package:vr_market/contact_page.dart';
import 'package:vr_market/menu.dart';
import 'package:vr_market/profile.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  initialRoute: '/',
  routes: {
    '/': (context) => SplashScreen(),
    '/welcome': (context) => WelcomeScreen(),
    '/signIn': (context) => SignInScreen(),
    '/signUp': (context) => SignUpScreen(),
    '/verify': (context) => VerifyScreen(),
    '/signInHelp': (context) => SignInHelpScreen(),
    '/aboutUs': (context) => AboutScreen(),
    '/contactUs': (context) => ContactScreen(),
    '/menu' : (context) => Menu(),
    '/profile': (context) => Profile(),
  },
));


