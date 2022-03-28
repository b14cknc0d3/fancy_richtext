import 'package:fancy_richtext/src/element_type.dart';
import 'package:fancy_richtext/src/regex_const.dart';

class GetCleanedText {
  static String getCleanedText(String text) {
    String cc = text.replaceAll(RegExp(r'\/\/(.*?)\/\/'), "");
    cc = cc.replaceAll(RegExp(r'\<__\>'), " ");
    if (ElementType.boldItalic(cc)) {
      return RegexConstant.boldItalicRegExp
          .allMatches(cc)
          .toList()[0]
          .group(1)!;
    } else if (ElementType.bold(cc)) {
      String x = RegexConstant.boldRegExp.allMatches(cc).toList()[0].group(1)!;

      return x;
    } else if (ElementType.italic(cc)) {
      return RegexConstant.italicRegExp.allMatches(cc).toList()[0].group(1)!;
    } else if (ElementType.underline(cc)) {
      return RegexConstant.underlineRegExp.allMatches(cc).toList()[0].group(1)!;
    } else if (ElementType.strikethrough(cc)) {
      return RegexConstant.strikethroughRegExp
          .allMatches(cc)
          .toList()[0]
          .group(1)!;
    } else if (ElementType.headerSix(cc)) {
      return RegexConstant.headerSixRegExp.allMatches(cc).toList()[0].group(1)!;
    } else if (ElementType.headerFive(cc)) {
      return RegexConstant.headerFiveRegExp
          .allMatches(cc)
          .toList()[0]
          .group(1)!;
    } else if (ElementType.headerFour(cc)) {
      return RegexConstant.headerFourRegExp
          .allMatches(cc)
          .toList()[0]
          .group(1)!;
    } else if (ElementType.headerThree(cc)) {
      return RegexConstant.headerThreeRegExp
          .allMatches(cc)
          .toList()[0]
          .group(1)!;
    } else if (ElementType.headerTwo(cc)) {
      return RegexConstant.headerTwoRegExp.allMatches(cc).toList()[0].group(1)!;
    } else if (ElementType.headerOne(cc)) {
      return RegexConstant.headerOneRegExp.allMatches(cc).toList()[0].group(1)!;
    } else {
      return cc;
    }
  }
}
