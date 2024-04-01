import 'package:flutter/material.dart';

import '../../utils/constant/color_constants.dart';

class AppOutlinedButton extends StatelessWidget {
  final Widget child;
  final void Function() onPressed;
  final double width, height;
  final Color outlineColor;
  final Color? fillColor;

  const AppOutlinedButton(
    this.child, {
    super.key,
    required this.onPressed,
    this.outlineColor = ColorConstants.primaryColor,
    this.width = double.infinity,
    this.height = 35,
    this.fillColor,
  });

  @override
  OutlinedButton build(BuildContext context) => OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          maximumSize: Size(width, height),
          minimumSize: Size(width, height),
          side: BorderSide(color: outlineColor, width: 1),
          foregroundColor: outlineColor,
          backgroundColor: fillColor,
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
        ),
        child: child,
      );
}

class AppOutlinedSocialButtons extends StatelessWidget {
  final String title;
  final void Function() onPressed;
  final double width, height;
  final Color outlineColor;
  final String logoPath;

  const AppOutlinedSocialButtons({
    super.key,
    required this.title,
    required this.logoPath,
    required this.onPressed,
    this.outlineColor = ColorConstants.blackColor,
    this.width = double.infinity,
    this.height = 50,
  });

  @override
  OutlinedButton build(BuildContext context) => OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          maximumSize: Size(width, height),
          minimumSize: Size(width, height),
          side: BorderSide(color: outlineColor.withOpacity(0.4), width: 1),
          foregroundColor: outlineColor,
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
              child: Image(
                width: 20,
                height: 20,
                image: AssetImage(logoPath),
              ),
            ),
            Text(title)
          ],
        ),
      );
}

class AppOutlinedIconButton extends StatelessWidget {
  final Widget child, icon;
  final void Function() onPressed;
  final double width, height;
  final Color outlineColor;

  const AppOutlinedIconButton({
    super.key,
    required this.child,
    required this.icon,
    required this.onPressed,
    this.outlineColor = ColorConstants.primaryColor,
    this.width = 50,
    this.height = 35,
  });

  @override
  OutlinedButton build(BuildContext context) => OutlinedButton.icon(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          maximumSize: Size(width, height),
          minimumSize: Size(width, height),
          side: BorderSide(color: outlineColor, width: 1),
          foregroundColor: outlineColor,
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
        ),
        icon: icon,
        label: child,
      );
}
