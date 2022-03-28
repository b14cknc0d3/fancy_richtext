import 'package:fancy_richtext/src/regex_const.dart';

class ElementType {
  static bool boldItalic(text) => RegexConstant.boldItalicRegExp.hasMatch(text);
  static bool bold(text) => RegexConstant.boldRegExp.hasMatch(text);
  static bool italic(text) => RegexConstant.italicRegExp.hasMatch(text);
  static bool underline(text) => RegexConstant.underlineRegExp.hasMatch(text);
  static bool strikethrough(text) =>
      RegexConstant.strikethroughRegExp.hasMatch(text);
  static bool headerSix(text) => RegexConstant.headerSixRegExp.hasMatch(text);
  static bool headerFive(text) => RegexConstant.headerFiveRegExp.hasMatch(text);
  static bool headerFour(text) => RegexConstant.headerFourRegExp.hasMatch(text);
  static bool headerThree(text) =>
      RegexConstant.headerThreeRegExp.hasMatch(text);
  static bool headerTwo(text) => RegexConstant.headerTwoRegExp.hasMatch(text);
  static bool headerOne(text) => RegexConstant.headerOneRegExp.hasMatch(text);
}
