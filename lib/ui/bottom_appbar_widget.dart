//widgets
import 'package:cook_app/Widgets/second_page.dart';
//ui
import 'package:cook_app/ui/button_icon_widget.dart';
import 'package:cook_app/ui/custom_color_class.dart';
import 'package:cook_app/ui/shape_class.dart';
import 'package:cook_app/ui/size_class.dart';
//flutter
import 'package:flutter/material.dart';

//Bottomappbar Widget
class bottomAppBar extends StatelessWidget {
  const bottomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color:customColor.bottomAppBarColor,
      height: size.cardAndBottomAppBarHeight,
      notchMargin: size.notchMarginSize,
      shape: shapeClass.bottomAppBarShape,
      child: Row(children: [
        bottomIconButton(bottomIcon: Icons.home),
        bottomIconButton(bottomIcon: Icons.search),
        bottomIconButton(bottomIcon: Icons.archive),
        bottomIconButton(bottomIcon: Icons.account_box_outlined),
      ]),
    );
  }
}