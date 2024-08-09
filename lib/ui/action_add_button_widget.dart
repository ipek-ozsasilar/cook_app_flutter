//widgets
import 'package:cook_app/Widgets/lastPage.dart';
//ui
import 'package:cook_app/ui/color_class.dart';
import 'package:cook_app/ui/icon_class.dart';
import 'package:cook_app/ui/navigator_function.dart';
import 'package:cook_app/ui/shape_class.dart';
//flutter
import 'package:flutter/material.dart';

//Action Add Button Widget
class actionAddButton extends StatelessWidget {
  const actionAddButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: colorClass.buttonTextOrangeColor,
      onPressed: () {
        navigateToSecondPage(context, lastPage());
      },
      shape: shapeClass.actionButtonShape,
      child: IconClass.addIcon,
    );
  }
}