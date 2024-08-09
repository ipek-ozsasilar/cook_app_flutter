//ui
import 'package:cook_app/ui/color_class.dart';
import 'package:cook_app/ui/shape_class.dart';
import 'package:cook_app/ui/size_class.dart';
//flutter
import 'package:flutter/material.dart';

//Action Green Container Widget
class actionGreenContainer extends StatelessWidget {
  const actionGreenContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.actionContainerHeightAndWidth,
      width: size.actionContainerHeightAndWidth,
      decoration: BoxDecoration(
        color: colorClass.actionContainer,
        shape: shapeClass.actionContainerShape,
      ),
    );
  }
}