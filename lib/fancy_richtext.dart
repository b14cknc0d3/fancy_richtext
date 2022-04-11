import 'package:fancy_richtext/src/get_text_span.dart';
import 'package:flutter/material.dart';

class FancyRichText extends StatelessWidget {
  final String text;
  const FancyRichText({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: text
            .split(" ")
            .map((e) => GetTextSpan.getTextSpan(context, e))
            .toList(),
      ),
    );
  }
}
