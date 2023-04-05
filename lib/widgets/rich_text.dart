import 'package:flutter/material.dart';

class WidgetRichText extends StatelessWidget {
  const WidgetRichText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: const TextSpan(text: 'Hello', style: TextStyle(color: Colors.indigo, fontSize: 25, decoration: TextDecoration.underline,),
          children: [
            TextSpan(text: 'World', style: TextStyle(color: Colors.deepOrange)),
            TextSpan(text: 'Big', style: TextStyle(color: Colors.green)),
            TextSpan(text: 'World', style: TextStyle(color: Colors.green)),
          ]
        ));
  }
}
