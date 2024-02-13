import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  String? text;
  TextStyle? textStyle;
  AppText({super.key, required this.text, this.textStyle});

  @override
  Widget build(BuildContext context) {
    return Text(text!, style: textStyle);
  }
}
