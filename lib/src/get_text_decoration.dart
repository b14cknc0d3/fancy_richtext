import 'package:fancy_richtext/src/regex_const.dart';
import 'package:flutter/material.dart';

class GetTextDecoration {
  static getTextDecoration(String text) {
    //remove space first
    String t = text.replaceAll(RegExp(r'\<__\>'), " ");
    if (RegexConstant.underlineRegExp.hasMatch(t)) {
      return TextDecoration.underline;
    } else if (RegexConstant.strikethroughRegExp.hasMatch(t)) {
      return TextDecoration.lineThrough;
    } else {
      return TextDecoration.none;
    }
  }
}
