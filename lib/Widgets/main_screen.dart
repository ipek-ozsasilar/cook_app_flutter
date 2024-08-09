//ui
import 'package:cook_app/ui/card_widget.dart';
import 'package:cook_app/ui/color_class.dart';
import 'package:cook_app/ui/padding_class.dart';
import 'package:cook_app/ui/size_class.dart';
import 'package:cook_app/ui/text_widget.dart';
//flutter
import 'package:flutter/material.dart';
//widgets
import 'package:cook_app/Widgets/second_page.dart';

class cookApp extends StatefulWidget {
  const cookApp({super.key});

  @override
  State<cookApp> createState() => _cookAppState();
}

class _cookAppState extends State<cookApp> {
  final String path = "assets/images/salad.png";
  final BoxFit fit = BoxFit.contain;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorClass.backgroundWhite,
      appBar: AppBar(),
      body: Column(
        children: [
          //Image component
          SizedBox(
            height: size.sizedboxHeightAndWidth,
            width: size.sizedboxHeightAndWidth,
            child: Image.asset(
              path,
              fit: fit,
            ),
          ),
          //text components
          textWidget(
              text: "Get the food", textSize: 40, feedBack: textWeight.kalin),
          textWidget(
              text: "recipe more easier! ",
              textSize: 40,
              feedBack: textWeight.kalin),
          Padding(
            padding: padding.screenPadding + EdgeInsets.symmetric(vertical: 30),
            child: textWidget(
                text:
                    "It Is A Long Established Fct That A Reader Will Be Distracted By The Readable Content Of A Page When Looking...",
                textSize: 12,
                feedBack: textWeight.ince),
          ),
          //card component
          firstPageBottomCard(),
        ],
      ),
    );
  }
}
