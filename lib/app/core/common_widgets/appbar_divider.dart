
import 'package:flutter/material.dart';

class AppbarDivider extends StatelessWidget implements PreferredSizeWidget {
  const AppbarDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 27),
      child:  Divider(thickness: 2,
      color: Colors.grey.withOpacity(0.4),),
    );
  }
    @override
  Size get preferredSize => const Size.fromHeight(12);
}