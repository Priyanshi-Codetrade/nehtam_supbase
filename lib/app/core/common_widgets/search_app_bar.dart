import 'package:flutter/material.dart';

import '../../utils/constant/color_constants.dart';

class SearchInnerScreenAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  final TextEditingController controller;
  final Function()? cancelButton;
  const SearchInnerScreenAppBar(
      {super.key, required this.controller, this.cancelButton});

  @override
  AppBar build(BuildContext context) => AppBar(
        elevation: 1,
        actions: <Widget>[Container()],
        backgroundColor: Colors.white70,
        leading: Card(
          margin: const EdgeInsets.all(12),
          elevation: 2,
          color: ColorConstants.primaryColor,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(25))),
          child: IconButton(
            icon: const Icon(Icons.arrow_back_outlined,
                size: 18, color: ColorConstants.secondaryColor),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        title: Card(
          elevation: 4,
          child: SizedBox(
            height: 40,
            child: TextFormField(
              controller: controller,
              decoration: InputDecoration(
                hintText: '',
                hintStyle: const TextStyle(fontSize: 14),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Colors.white),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Colors.white),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Colors.white),
                ),
                disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Colors.white),
                ),
                prefixIcon: const SizedBox(
                  height: 20,
                  width: 20,
                  child: Icon(Icons.search, color: Colors.grey, size: 20),
                ),
                suffixIcon: SizedBox(
                  height: 20,
                  width: 20,
                  child: IconButton(
                    icon: const Icon(Icons.close,
                        color: ColorConstants.primaryColor, size: 20),
                    onPressed: cancelButton,
                  ),
                ),
              ),
            ),
          ),
        ),
      );

  @override
  Size get preferredSize =>
      const Size.fromHeight(kToolbarHeight); // Default AppBar height
}
