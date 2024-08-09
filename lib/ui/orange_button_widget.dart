//widgets
import 'package:cook_app/Widgets/main_screen.dart';
//ui
import 'package:cook_app/ui/color_class.dart';
import 'package:cook_app/ui/padding_class.dart';
import 'package:cook_app/ui/size_class.dart';
//flutter
import 'package:flutter/material.dart';

//Orange Button Widget
class orangeButton extends StatefulWidget {
  const orangeButton({super.key});

  @override
  State<orangeButton> createState() => _orangeButtonState();
}

class _orangeButtonState extends State<orangeButton> {
  BorderRadius orangeButtonBorderRadius = BorderRadius.circular(30);
  int sayac = 1;

  void sayacChange(String whichButton) {
    if (whichButton == "first") {
      setState(() {
        sayac = sayac + 1;
      });
    } else {
      setState(() {
        sayac = sayac - 1;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding.orangeButtonPaddingVertical,
      child: Container(
        height: size.orangeButtonHeight,
        width: sayac > 9
            ? size.orangeButtonAndImageHeightWidht
            : size.orangeButtonSmallNine,
        decoration: BoxDecoration(
          color: colorClass.buttonTextOrangeColor,
          borderRadius: orangeButtonBorderRadius,
        ),
        child: Row(
          children: [
            orangeIconButton(Icons.add),
            Text(sayac.toString()),
            orangeIconButton(Icons.remove),
          ],
        ),
      ),
    );
  }

  //Orange Icon ButtoN Function
  IconButton orangeIconButton(IconData icon) => IconButton(
      onPressed: () {
        sayacChange(icon == Icons.add ? "first" : "second");
      },
      icon: Icon(
        icon,
        size: size.starAndOrangeIconSize,
      ));
}
