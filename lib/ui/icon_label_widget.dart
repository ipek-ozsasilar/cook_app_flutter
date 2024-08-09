//widgets
import 'package:cook_app/Widgets/main_screen.dart';
//ui
import 'package:cook_app/ui/color_class.dart';
import 'package:cook_app/ui/padding_class.dart';
import 'package:cook_app/ui/size_class.dart';
//flutter
import 'package:flutter/material.dart';

class iconLabel extends StatelessWidget {
  IconData icon;
  Color iconColor;
  String text;
  iconLabel({
    super.key,
    required this.icon,
    required this.iconColor,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding.iconLabelPadding,
      child: OutlinedButton.icon(
        onPressed: null,
        icon: Icon(
          icon,
          color: iconColor,
          size: size.readMoreBottomIconSize,
        ),
        label: Text(
          text,
          style: TextStyle(
            color: colorClass.iconLabelTextColor,
          ),
        ),
        style: OutlinedButton.styleFrom(
          side: BorderSide.none,
        ),
      ),
    );
  }
}
