//flutter
import 'package:flutter/material.dart';

//Button Icon Button Widget
class bottomIconButton extends StatelessWidget {
  final bottomIcon;
  const bottomIconButton({
    super.key,
    required this.bottomIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: IconButton(
            onPressed: () {},
            icon: Icon(
              bottomIcon,
            )));
  }
}
