//ui
import 'package:cook_app/ui/icon_class.dart';
import 'package:cook_app/ui/shape_class.dart';
//flutter
import 'package:flutter/material.dart';

//Textfield Widget
class secondPageTextfield extends StatelessWidget {
  final TextInputType KeyboardType = TextInputType.text;
  final String hinttext = "Search Any Recipes...";
  const secondPageTextfield({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: KeyboardType,
      decoration: InputDecoration(
        prefixIcon: IconClass.textFieldPrefixIcon,
        suffixIcon: IconClass.textfieldRightIcon,
        hintText: hinttext,
        border: shapeClass.textFieldShape,
      ),
    );
  }
}
