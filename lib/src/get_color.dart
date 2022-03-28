import 'package:flutter/material.dart';

class GetColor {
  /// The [Color] for text in the [TextStyle].
  /// By using [RegExp]

  static Color getColor(String text) {
    // text =
    //     RegexConstant.colorRegExp.allMatches(text).toList()[0].group(1) ?? "";
    bool hex = text.startsWith("#");
    if (hex) {
      return fromHex(text);
    } else if (text.isNotEmpty) {
      return getColorFromColorTag(text);
    } else {
      return Colors.black;
    }
  }

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  static Color getColorFromColorTag(String text) {
    switch (text) {
      case "red":
        return Colors.red;
      case "green":
        return Colors.green;
      case "blue":
        return Colors.blue;
      case "yellow":
        return Colors.yellow;
      case "orange":
        return Colors.orange;
      case "purple":
        return Colors.purple;
      case "pink":
        return Colors.pink;
      case "brown":
        return Colors.brown;
      case "grey":
        return Colors.grey;
      case "black":
        return Colors.black;
      case "white":
        return Colors.white;
      case "cyan":
        return Colors.cyan;

      default:
        return Colors.white;
    }
  }
}
