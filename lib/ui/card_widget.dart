//widgets
import 'package:cook_app/Widgets/main_screen.dart';
import 'package:cook_app/Widgets/second_page.dart';
//ui
import 'package:cook_app/ui/color_class.dart';
import 'package:cook_app/ui/icon_class.dart';
import 'package:cook_app/ui/navigator_function.dart';
import 'package:cook_app/ui/padding_class.dart';
import 'package:cook_app/ui/shape_class.dart';
import 'package:cook_app/ui/size_class.dart';
import 'package:cook_app/ui/text_widget.dart';
//flutter
import 'package:flutter/material.dart';

//card component widget
class firstPageBottomCard extends StatelessWidget {
  final double elevationCard = 9;
  const firstPageBottomCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.cardAndBottomAppBarHeight,
      width: size.cardWidth,
      child: Card(
        elevation: elevationCard,
        shape: shapeClass.cardCircularShape,
        color: colorClass.cardColor,
        child: Padding(
          padding: padding.firstPageCardHorizontal,
          child: Row(
            children: [
              textWidget(
                  text: "Get Started",
                  textSize: 20,
                  feedBack: textWeight.kalin),
              Spacer(),
              IconButton(
                style: IconButton.styleFrom(
                    backgroundColor: colorClass.iconBackGroundColor),
                onPressed: () {
                  navigateToSecondPage(context, secondPage());
                },
                icon: IconClass.chevronRightIcon,
                color: colorClass.whiteCardColor,
                iconSize: size.IconSize,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
