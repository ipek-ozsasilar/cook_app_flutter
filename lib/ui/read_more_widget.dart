//widgets
import 'package:cook_app/Widgets/main_screen.dart';
//ui
import 'package:cook_app/ui/color_class.dart';
//material
import 'package:flutter/material.dart';
//readmore
import 'package:readmore/readmore.dart';

//Read More Text Widget
class readMoreTextWidget extends StatelessWidget {
  final String readMoreText =
      "If you've ever let an avocado hang out too long on the countertop, you know that they can most certainly ripen. The easiest and best way to ripen an avocado is to let it sit in a sunny spot on the counter. It can take a few days, depending on how much ripening needs to take place. To speed along the process, try placing an avocado in a paper bag on the countertop. This traps the ethylene gas that the avocado produces causing it to ripen more quickly. You can place other ethylene gas-producing fruits, such as apples or bananas, in the bag with the avocado to help it ripen even more faster. ";
  final TextStyle readMoreStyle = TextStyle(
    color: colorClass.buttonTextOrangeColor,
  );
  final String trimCollapsed = "Read More";
  final String trimExpanded = "Show Less";
  readMoreTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ReadMoreText(
      readMoreText,
      lessStyle: readMoreStyle,
      moreStyle: readMoreStyle,
      trimCollapsedText: trimCollapsed,
      trimExpandedText: trimExpanded,
    );
  }
}
