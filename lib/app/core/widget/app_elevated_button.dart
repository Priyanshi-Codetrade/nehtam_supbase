import 'package:flutter/material.dart';

import '../../utils/constant/color_constants.dart';

class AppElevatedButton extends StatelessWidget {
  final String child;
  final void Function() onPressed;
  final double width, height, borderRadius;
  final Color color;

  const AppElevatedButton(
    this.child, {
    super.key,
    required this.onPressed,
    this.width = double.infinity,
    this.height = 50,
    this.color = ColorConstants.secondaryColor,
    this.borderRadius = 4,
  });

  @override
  ElevatedButton build(BuildContext context) => ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          maximumSize: Size(width, height),
          minimumSize: Size(width, height),
          //side: BorderSide(color: outlineColor, width: 1),
          backgroundColor: color,
          foregroundColor: ColorConstants.primaryColor,
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(borderRadius))),
        ),
        child: Text(
          child,
          style: const TextStyle(
            fontSize: 16,
          ),
        ),
      );
}
