//ui
import 'package:cook_app/ui/shape_class.dart';
//flutter
import 'package:flutter/material.dart';

//Minicard Widget
class miniCardSizedbox extends StatelessWidget {
  final double cardElevation = 5;
  final String path;
  const miniCardSizedbox({
    super.key,
    required this.path,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Card(
        child: Image.asset(
          path,
          fit: BoxFit.cover,
        ),
        shape: shapeClass.cardCircularShape,
        elevation: cardElevation,
      ),
    );
  }
}
