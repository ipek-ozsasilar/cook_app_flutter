//widgets
import 'package:cook_app/Widgets/lastPage.dart';
import 'package:cook_app/Widgets/main_screen.dart';
//ui
import 'package:cook_app/ui/custom_color_class.dart';
import 'package:cook_app/ui/icon_label_widget.dart';
import 'package:cook_app/ui/padding_class.dart';
import 'package:cook_app/ui/size_class.dart';
import 'package:cook_app/ui/text_widget.dart';
//flutter
import 'package:flutter/material.dart';

//Lisstile Card Widget
class listTileCardWidget extends StatelessWidget {
  final String butonText = "order";
  final String money = "£15.00";
  final String path;
  final double cardElevation = 7;
  final BoxFit fit = BoxFit.cover;
  final String BoldsText;
  const listTileCardWidget({
    super.key,
    required this.path,
    required this.BoldsText,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: SizedBox(
          height: size.listTileLeadingHeightWidth,
          width: size.listTileLeadingHeightWidth,
          child: Card(
            elevation: cardElevation,
            child: Image.asset(
              path,
              fit: fit,
            ),
          ),
        ),
        title: Padding(
          padding: padding.lisTileTitlePadding,
          child: textWidget(
              text: BoldsText, textSize: 15, feedBack: textWeight.kalin),
        ),
        subtitle: Row(
          children: [
            iconLabel(icon: Icons.star, iconColor: Colors.yellow, text: "4.5"),
            textWidget(text: money, textSize: 13, feedBack: textWeight.kalin),
          ],
        ),
        trailing: ElevatedButton(
          onPressed: () {},
          child: Text(butonText),
          style: ElevatedButton.styleFrom(
            backgroundColor: customColor.orderButtonColor,
          ),
        ),
      ),
    );
  }
}
