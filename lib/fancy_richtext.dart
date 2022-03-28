import 'package:fancy_richtext/src/get_text_span.dart';
import 'package:flutter/material.dart';

class FuncyRichText extends StatelessWidget {
  final String text;
  const FuncyRichText({Key? key, required this.text}) : super(key: key);

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
