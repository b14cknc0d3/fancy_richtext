import 'package:fancy_richtext/src/regex_const.dart';
import 'package:flutter/material.dart';

class GetTextStyle {
  TextStyle getTextStyle(BuildContext context, String text) {
    if (RegexConstant.headerSixRegExp.hasMatch(text)) {
      return Theme.of(context).textTheme.headline6!;
    } else if (RegexConstant.headerFiveRegExp.hasMatch(text)) {
      return Theme.of(context).textTheme.headline5!;
    } else if (RegexConstant.headerFourRegExp.hasMatch(text)) {
      return Theme.of(context).textTheme.headline4!;
    } else if (RegexConstant.headerThreeRegExp.hasMatch(text)) {
      return Theme.of(context).textTheme.headline3!;
    } else if (RegexConstant.headerTwoRegExp.hasMatch(text)) {
      return Theme.of(context).textTheme.headline2!;
    } else if (RegexConstant.headerOneRegExp.hasMatch(text)) {
      return Theme.of(context).textTheme.headline1!;
    } else if (RegexConstant.boldItalicRegExp.hasMatch(text)) {
      return Theme.of(context).textTheme.bodyText1!;
    } else if (RegexConstant.italicRegExp.hasMatch(text)) {
      return Theme.of(context).textTheme.bodyText1!;
    } else if (RegexConstant.boldRegExp.hasMatch(text)) {
      return Theme.of(context).textTheme.bodyText1!;
    } else {
      return Theme.of(context).textTheme.bodyText1!;
    }
  }
}
