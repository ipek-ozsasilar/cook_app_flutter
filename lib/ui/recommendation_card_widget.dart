//ui
import 'package:cook_app/ui/custom_color_class.dart';
import 'package:cook_app/ui/icon_class.dart';
import 'package:cook_app/ui/padding_class.dart';
import 'package:cook_app/ui/shape_class.dart';
import 'package:cook_app/ui/size_class.dart';
import 'package:cook_app/ui/text_widget.dart';
//flutter
import 'package:flutter/material.dart';

//Recommendationcard Widget
class recommendationCard extends StatelessWidget {
  final double money;
  final String cardText;
  final String path;
  final String greyText;
  const recommendationCard({
    super.key,
    required this.path,
    required this.cardText,
    required this.greyText,
    required this.money,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: customColor.textCardGreyColor,
      child: Padding(
        padding: padding.recommendationCardPadding,
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  path,
                  height: size.orangeButtonAndImageHeightWidht,
                  width: size.orangeButtonAndImageHeightWidht,
                ),
                Padding(
                  padding: padding.favoriteIconPadding,
                  child: IconAndSizeClass.favoriteIcon,
                ),
              ],
            ),
            textWidget(
                text: cardText, textSize: 15, feedBack: textWeight.kalin),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  textWidget(
                      text: greyText, textSize: 12, feedBack: textWeight.ince),
                  Spacer(),
                  IconAndSizeClass.starIcon,
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  textWidget(
                      text: "£${money}",
                      textSize: 15,
                      feedBack: textWeight.kalin),
                  Spacer(),
                  addButton(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  //Addbutton Widget
  IconButton addButton() {
    return IconButton(
      style: IconButton.styleFrom(
        backgroundColor: customColor.addButtonColor,
        shape: shapeClass.addButtonShape,
      ),
      onPressed: () {},
      icon: IconClass.addIcon,
    );
  }
}
