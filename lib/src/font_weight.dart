import 'package:fancy_richtext/src/regex_const.dart';
import 'package:flutter/cupertino.dart';

class GetFontWeight {
  /// The [FontWeight] for text in the [TextStyle].
  /// By using [RegExp]
  /// 
  static FontWeight get(String text) {
    if (RegexConstant.boldItalicRegExp.hasMatch(text)) {
      return FontWeight.bold;
    } else if (RegexConstant.boldRegExp.hasMatch(text)) {
      return FontWeight.bold;
    } else {
      return FontWeight.normal;
    }
  }
}
