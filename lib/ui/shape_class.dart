//flutter
import 'package:flutter/material.dart';

//shape class
class shapeClass {
  static final actionContainerShape = BoxShape.circle;
  static final cardCircularShape =RoundedRectangleBorder(borderRadius: BorderRadius.circular(30));
  static final addButtonShape =RoundedRectangleBorder(borderRadius: BorderRadius.circular(10));
  static final actionButtonShape = CircleBorder();
  static final bottomAppBarShape = CircularNotchedRectangle();
  static final textFieldShape =OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(50)));
}
