import 'dart:ui';

import 'package:fancy_richtext/src/regex_const.dart';

class GetFontStyle {
  /// The [FontStyle] for text [TextStyle].
  /// By using [RegExp]
  ///
  ///
  static getFontStyle(String text) {
    if (RegexConstant.boldItalicRegExp.hasMatch(text)) {
      return FontStyle.italic;
    } else if (RegexConstant.italicRegExp.hasMatch(text)) {
      return FontStyle.italic;
    } else {
      return FontStyle.normal;
    }
  }
}
