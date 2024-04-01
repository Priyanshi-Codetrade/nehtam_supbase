import 'package:flutter/material.dart';

import '../../utils/constant/color_constants.dart';

class AppBarButton extends StatelessWidget {
  final GestureTapCallback onTap;
  final IconData icon;
  const AppBarButton({
    super.key,
    required this.onTap,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: IconButton(
        onPressed: onTap,
        icon: Icon(
          icon,
          color: ColorConstants.primaryColor,
        ),
        iconSize: 18,
        // constraints: const BoxConstraints(maxHeight: 30),
        style: IconButton.styleFrom(
          elevation: 5,
          shadowColor: Colors.grey.shade200,
          backgroundColor: Colors.white,
        ),
      ),
    );
  }
}
