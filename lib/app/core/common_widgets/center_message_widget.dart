import 'package:flutter/material.dart';

class CenterMessageWidget extends StatelessWidget {
  final String text;
  final double height, width;

  const CenterMessageWidget(
    this.text, {
    super.key,
    this.height = double.infinity,
    this.width = double.infinity,
  });

  @override
  SizedBox build(BuildContext context) => SizedBox(
        width: width,
        height: height,
        child: Align(
          alignment: Alignment.center,
          child: Text(text, textAlign: TextAlign.center),
        ),
      );
}

class FailureWidget extends StatelessWidget {
  final String msg;
  final double height, width;
  const FailureWidget(
    this.msg, {
    super.key,
    this.height = double.infinity,
    this.width = double.infinity,
  });

  @override
  CenterMessageWidget build(BuildContext context) => CenterMessageWidget(
        msg,
        height: height,
        width: width,
      );
}
