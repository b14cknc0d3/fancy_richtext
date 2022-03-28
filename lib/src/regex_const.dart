class RegexConstant {
  static RegExp colorRegExp = RegExp(r'\/\/(.*?)\/\/');
  static RegExp boldRegExp = RegExp(r'\*\*(.*?)\*\*');
  static RegExp italicRegExp = RegExp(r'\*(.*?)\*');
  static RegExp underlineRegExp = RegExp(r'_(.*?)_');
  static RegExp strikethroughRegExp = RegExp(r'~(.*?)~');
  static RegExp headerOneRegExp = RegExp(r'#(.*?)#');
  static RegExp headerTwoRegExp = RegExp(r'##(.*?)##');
  static RegExp headerThreeRegExp = RegExp(r'###(.*?)###');
  static RegExp headerFourRegExp = RegExp(r'####(.*?)####');
  static RegExp headerFiveRegExp = RegExp(r'#####(.*?)#####');
  static RegExp headerSixRegExp = RegExp(r'######(.*?)######');
  static RegExp boldItalicRegExp = RegExp(r'\*\*\*(.*?)\*\*\*');
}
