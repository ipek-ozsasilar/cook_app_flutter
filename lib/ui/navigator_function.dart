//flutter
import 'package:flutter/material.dart';

//navigator push fonksiyonu
void navigateToSecondPage(BuildContext context, Widget nextWidget) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => nextWidget,
    ),
  );
}