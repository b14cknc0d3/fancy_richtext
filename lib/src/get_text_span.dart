import 'package:fancy_richtext/src/font_weight.dart';
import 'package:fancy_richtext/src/get_clean_text.dart';
import 'package:fancy_richtext/src/get_color.dart';
import 'package:fancy_richtext/src/get_text_decoration.dart';
import 'package:fancy_richtext/src/get_text_theme.dart';
import 'package:fancy_richtext/src/regex_const.dart';
import 'package:flutter/cupertino.dart';

class GetTextSpan {
  static TextSpan getTextSpan(BuildContext context, String text) {
    String? cleanColorCode = RegexConstant.colorRegExp.stringMatch(text);
    cleanColorCode = cleanColorCode?.replaceAll(RegExp(r'\/'), "").trim();

    return TextSpan(
      text: GetCleanedText.getCleanedText(text) + " ",
      style: GetTextStyle().getTextStyle(context, text).copyWith(
            decoration: GetTextDecoration.getTextDecoration(text),
            fontWeight: GetFontWeight.get(text),
            color: cleanColorCode == null
                ? null
                : GetColor.getColor(cleanColorCode),
          ),
    );
  }
}
