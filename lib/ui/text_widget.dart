//flutter
import 'package:flutter/material.dart';

//text widget
class textWidget extends StatelessWidget {
  final String text;
  final double textSize;
  final Enum feedBack;
  textWidget(
      {super.key,
      required this.text,
      required this.textSize,
      required this.feedBack});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: feedBack == textWeight.kalin
          ? Theme.of(context)
              .textTheme
              .headlineLarge
              ?.copyWith(fontWeight: FontWeight.w500, fontSize: textSize)
          : Theme.of(context).textTheme.labelMedium,
    );
  }
}

//text widgeta gonderılen parametreyı belırleyen enum
enum textWeight {
  kalin,
  ince,
}
