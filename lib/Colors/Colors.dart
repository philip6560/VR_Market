import 'package:flutter/material.dart';

class MyColors{
  

  static const _dark = '#007bb8';
  static const _light = '#75c5f0';
  static const _primary = '#0093dd';
  static const _accent = '#d81b60';
  static const _white = Colors.white;

  // construct a color from a hex code string of the form #RRGGBB
  _hexToColor(String code){
    code = code.substring(1, 7);
    int val = code.length == 6 ? int.parse(code, radix: 16): int.parse(code) ;
    val = val + 0xff000000;
    return val;
  }

//  returns int Color code which is to be passed in Color()
  dark() => _hexToColor(_dark);
  light() => _hexToColor(_light);
  primary() => _hexToColor(_primary);
  accent() => _hexToColor(_accent);
  backgroundColor() => _white;
}