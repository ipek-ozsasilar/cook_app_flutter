//ui
import 'package:cook_app/ui/text_widget.dart';
import 'package:cook_app/ui/action_add_button_widget.dart';
import 'package:cook_app/ui/aligment_class.dart';
import 'package:cook_app/ui/bottom_appbar_widget.dart';
import 'package:cook_app/ui/color_class.dart';
import 'package:cook_app/ui/icon_label_widget.dart';
import 'package:cook_app/ui/listTile_widget.dart';
import 'package:cook_app/ui/orange_button_widget.dart';
import 'package:cook_app/ui/padding_class.dart';
import 'package:cook_app/ui/read_more_widget.dart';
import 'package:cook_app/ui/size_class.dart';
//readmore
import "package:readmore/readmore.dart";
//Widgets
import 'package:cook_app/Widgets/main_screen.dart';
import 'package:cook_app/Widgets/second_page.dart';
//flutter
import 'package:flutter/material.dart';

class lastPage extends StatefulWidget {
  const lastPage({super.key});

  @override
  State<lastPage> createState() => _lastPageState();
}

class _lastPageState extends State<lastPage> {
  //Iconlabel Object List
  final List<iconLabel> iconLabelObjects = [
    iconLabel(icon: Icons.star, iconColor: Colors.yellow, text: "4.5"),
    iconLabel(icon: Icons.fireplace, iconColor: Colors.red, text: "100 kcal"),
    iconLabel(icon: Icons.timer, iconColor: Colors.pink, text: "5-10 min"),
  ];
  //Lisstile Card Object List
  final List<listTileCardWidget> listTileCardObjets = [
    listTileCardWidget(
        path: "assets/images/yemekk.png", BoldsText: "Noodles Spacy "),
    listTileCardWidget(
        path: "assets/images/yemekk.png", BoldsText: "Noodles Spacy "),
    listTileCardWidget(
        path: "assets/images/yemekk.png", BoldsText: "Noodles Spacy "),
    listTileCardWidget(
        path: "assets/images/yemekk.png", BoldsText: "Noodles Spacy "),
    listTileCardWidget(
        path: "assets/images/yemekk.png", BoldsText: "Noodles Spacy "),
  ];
  final BoxFit fit = BoxFit.cover;
  final path = "assets/images/lastPage.png";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Align(
          alignment: aligments.appbarLeadingAligment,
          child: appbarButton(Icons.chevron_left),
        ),
        toolbarHeight: size.lastPageToolbarAndImageHeight,
        title: SizedBox(
            height: size.lastPageToolbarAndImageHeight,
            child: Image.asset(
              path,
              fit: fit,
            )),
        actions: [
          Align(
              alignment: aligments.appbarActionsAligment,
              child: appbarButton(Icons.favorite)),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: padding.genericAndTextFieldHorizontalPadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  //Orange Button Component
                  child: orangeButton(),
                ),
                textWidget(
                    text: "Avacado salad",
                    textSize: 20,
                    feedBack: textWeight.kalin),
                Padding(
                  padding: padding.orangeButtonPaddingVertical,
                  child: readMoreTextWidget(),
                ),
                Row(
                  //Icon Label Button Component
                  children: [
                    ...iconLabelObjects,
                  ],
                ),
                Padding(
                  padding: padding.orangeButtonPaddingVertical,
                  child: textWidget(
                      text: "Ingredients",
                      textSize: 20,
                      feedBack: textWeight.kalin),
                ),
                //Listtile Card Component
                ...listTileCardObjets,
              ],
            ),
          ),
        ],
      ),
      //Floating Action Button Component
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: actionAddButton(),
      bottomNavigationBar: bottomAppBar(),
    );
  }

  //Appbar Button Widget
  IconButton appbarButton(IconData icon) {
    return IconButton(
        onPressed: () {
          Navigator.pop(
              context,
              MaterialPageRoute(
                builder: (context) => secondPage(),
              ));
        },
        icon: Icon(icon, color: colorClass.lastPageIconColor));
  }
}
