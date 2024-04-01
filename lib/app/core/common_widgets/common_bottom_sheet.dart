import 'package:flutter/material.dart';

import '../../utils/constant/color_constants.dart';

class CommonBottomSheet extends StatelessWidget {
  const CommonBottomSheet(
      {super.key,
      this.children,
      required this.onClose,
      required this.title,
      this.child});
  final GestureTapCallback onClose;
  final List<Widget>? children;
  final String title;
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Wrap(children: [
      Container(
          color: ColorConstants.whiteColor,
          padding: EdgeInsets.only(
            top: 17.55,
          ),
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            Padding(
                padding: EdgeInsets.only(
                  left: 8,
                ),
                child: ListTile(
                    title: Text(title.toUpperCase(),
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18)),
                    trailing: GestureDetector(
                      onTap: onClose,
                      child: Icon(Icons.close_rounded,
                          size: 22.0, color: ColorConstants.primaryColor),
                    ))),
            Divider(
              height: 20.5,
              indent: 20,
              endIndent: 20,
              thickness: 2,
            ),
            child ??
                ListView.separated(
                    padding: EdgeInsets.only(bottom: 10),
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) => children![index],
                    separatorBuilder: (context, index) => Divider(
                          height: 20.5,
                          indent: 20,
                          endIndent: 20,
                          thickness: 1,
                        ),
                    itemCount: children?.length ?? 0)
          ]))
    ]);
  }
}

class CommonBottomSheetListTile extends StatelessWidget {
  const CommonBottomSheetListTile(
      {super.key,
      required this.text,
      this.tileIcon,
      required this.onTap,
      this.leading});
  final Widget? leading;
  final String text;
  final IconData? tileIcon;
  final GestureTapCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 8,
      ),
      child: ListTile(
        leading: leading,
        onTap: onTap,
        title: Text(text,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
        trailing: Icon(tileIcon ?? Icons.arrow_forward_ios_rounded,
            color: ColorConstants.primaryColor, size: 15.0),
      ),
    );
  }
}
