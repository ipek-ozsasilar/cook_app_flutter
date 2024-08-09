//ui
import 'package:cook_app/ui/color_class.dart';
import 'package:cook_app/ui/custom_color_class.dart';
import 'package:cook_app/ui/padding_class.dart';
import 'package:cook_app/ui/size_class.dart';
import 'package:cook_app/ui/text_widget.dart';
//flutter
import 'package:flutter/material.dart';

//Bigcontainercard Widget
class bigContainerCard extends StatelessWidget {
  final String click = "Click here to see more";
  final String TextBold;
  final String path;
  const bigContainerCard({
    super.key,
    required this.bigContainerBorderRadius,
    required this.TextBold,
    required this.path,
  });

  final BorderRadius bigContainerBorderRadius; //? nulll kontrolu

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: padding.bigContainerPadding,
        child: Column(
          children: [
            SizedBox(
              height: size.bigCardSizeHeight,
              width: size.orangeButtonAndImageHeightWidht,
              child: Card(
                color: customColor.textCardGreyColor,
                child: Image.asset(path),
              ),
            ),
            Padding(
              padding: padding.vegetableMenuPadding,
              child: textWidget(
                  text: TextBold, textSize: 20, feedBack: textWeight.kalin),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(click),
            ),
          ],
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: bigContainerBorderRadius,
        color: colorClass.whiteCardColor,
      ),
    );
  }
}
