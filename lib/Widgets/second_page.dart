//Widgets
import 'package:cook_app/Widgets/lastPage.dart';
import 'package:cook_app/Widgets/main_screen.dart';
//ui
import 'package:cook_app/ui/action_add_button_widget.dart';
import 'package:cook_app/ui/action_container_widget.dart';
import 'package:cook_app/ui/big_container_card_widget.dart';
import 'package:cook_app/ui/bottom_appbar_widget.dart';
import 'package:cook_app/ui/color_class.dart';
import 'package:cook_app/ui/custom_color_class.dart';
import 'package:cook_app/ui/mini_card_widget.dart';
import 'package:cook_app/ui/padding_class.dart';
import 'package:cook_app/ui/recommendation_card_widget.dart';
import 'package:cook_app/ui/size_class.dart';
import 'package:cook_app/ui/text_field_widget.dart';
import 'package:cook_app/ui/text_widget.dart';
//flutter
import 'package:flutter/material.dart';

class secondPage extends StatefulWidget {
  const secondPage({super.key});

  @override
  State<secondPage> createState() => _secondPageState();
}

class _secondPageState extends State<secondPage> {
  //textWidget Object List
  final List<textWidget> textWidgetObjects = [
    textWidget(text: "Hello. Anne", textSize: 12, feedBack: textWeight.ince),
    textWidget(
        text: "What's On Your Cooking Agenda Today?",
        textSize: 20,
        feedBack: textWeight.kalin),
  ];
  //miniCard Object List
  final List<miniCardSizedbox> miniCardObjects = [
    miniCardSizedbox(path: "assets/images/tabaktaburger.jpg"),
    miniCardSizedbox(path: "assets/images/tabaktaburger.jpg"),
    miniCardSizedbox(path: "assets/images/tabaktaburger.jpg"),
    miniCardSizedbox(path: "assets/images/tabaktaburger.jpg"),
    miniCardSizedbox(path: "assets/images/tabaktaburger.jpg"),
    miniCardSizedbox(path: "assets/images/tabaktaburger.jpg"),
  ];
  //recommendationCard Object List
  final List<recommendationCard> recommendationCardObjects = [
    recommendationCard(path: "assets/images/chickenDoner.png",cardText: "Vegetable Burrito",greyText: "20min",money: 15),
    recommendationCard(path: "assets/images/chickenDoner.png",cardText: "Vegetable Burrito",greyText: "20min",money: 15),
    recommendationCard(path: "assets/images/tabaktaburger.jpg",cardText: "Chickpea Burger",greyText: "20min",money: 15),
    recommendationCard(path: "assets/images/chickenDoner.png",cardText: "Vegetable Burrito",greyText: "20min",money: 15),
  ];

  final bigContainerBorderRadius = BorderRadius.circular(30);
  final PageController _controllerPage = PageController(viewportFraction: 0.3);
  final PageController _bigCardController =
      PageController(viewportFraction: 0.5);
  final PageController _bigBigCardController =
      PageController(viewportFraction: 0.7);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: customColor.secondPageBackGround,
      appBar: AppBar(
        backgroundColor: colorClass.secondPageAppBarColor,
        toolbarHeight: size.appbarHeight,
        leading: Padding(
          padding: padding.actionContainerAndLeadingPadding,
          child: SizedBox(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ...textWidgetObjects,
            ],
          )),
        ),
        leadingWidth: size.LeadingWidth,
        actions: [
          Padding(
            padding: padding.actionContainerAndLeadingPadding,
            child: actionGreenContainer(),
          ),
        ],
      ),

      body: Padding(
        padding: padding.genericAndTextFieldHorizontalPadding,
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //textfield component
                secondPageTextfield(),
                Row(
                  children: [
                    Padding(
                      padding: padding.textVerticalPadding,
                      child: textWidget(
                          text: "Categories",
                          textSize: 20,
                          feedBack: textWeight.kalin),
                    ),
                    Spacer(),
                    Padding(
                      padding: padding.seeAllPadding,
                      child: _seeAllText(),
                    ),
                  ],
                ),

                //Minicard Pageview Component
                SizedBox(
                  height: 90, //?
                  child: PageView(
                    padEnds: false,
                    controller: _controllerPage,
                    children: [
                      ...miniCardObjects,
                    ],
                  ),
                ),
                Padding(
                  padding: padding.textVerticalPadding,
                  child: Row(
                    children: [
                      textWidget(
                          text: "Recommendation",
                          textSize: 20,
                          feedBack: textWeight.kalin),
                      Spacer(),
                      _seeAllText(),
                    ],
                  ),
                ),

                //Recommendation Card Component
                SizedBox(
                  width: size.recommendationCardWidth,
                  height: size.containerCardTextSize,
                  child: PageView(
                    controller: _bigCardController,
                    children: [
                      ...recommendationCardObjects,
                    ],
                    padEnds: false,
                  ),
                ),

                Padding(
                  padding: padding.textVerticalPadding,
                  child: Row(
                    children: [
                      textWidget(
                          text: "Recipes of The Week",
                          textSize: 20,
                          feedBack: textWeight.kalin),
                      Spacer(),
                      _seeAllText(),
                    ],
                  ),
                ),

                //Bigcontainercard Component
                SizedBox(
                  height: size.bigContainerSizeHeight,
                  child: PageView(
                    padEnds: false,
                    controller: _bigBigCardController,
                    children: [
                      Padding(
                        padding: padding.BigCardRightPadding,
                        child: bigContainerCard(
                            bigContainerBorderRadius: bigContainerBorderRadius,
                            TextBold: "Fish Menu",
                            path: "assets/images/yemekk.png"),
                      ),
                      Padding(
                        padding: padding.BigCardRightPadding,
                        child: bigContainerCard(
                            bigContainerBorderRadius: bigContainerBorderRadius,
                            TextBold: "Vegetable Menu",
                            path: "assets/images/yemek.png"),
                      ),
                      Padding(
                        padding: padding.BigCardRightPadding,
                        child: bigContainerCard(
                            bigContainerBorderRadius: bigContainerBorderRadius,
                            TextBold: "Vegetable Menu",
                            path: "assets/images/yemekk.png"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      //Floating Action Button Component
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: actionAddButton(),
      bottomNavigationBar: bottomAppBar(),
    );
  }

  //See All Text Function
  Text _seeAllText() {
    return Text(
      "See all",
      style: TextStyle(
        color: colorClass.buttonTextOrangeColor,
      ),
    );
  }
}
