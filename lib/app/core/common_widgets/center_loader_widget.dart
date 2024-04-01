import 'package:flutter/material.dart';

import '../../utils/constant/color_constants.dart';
import 'spinkit/spin_kit_fading_circle.dart';

class CenterLoader extends StatelessWidget {
  final double height, width;

  const CenterLoader({
    super.key,
    this.height = double.infinity,
    this.width = double.infinity,
  });

  @override
  SizedBox build(BuildContext context) => SizedBox(
        width: width,
        height: height,
        child: const Align(
          alignment: Alignment.center,
          child: CircularProgressIndicator.adaptive(),
        ),
      );
}

class SpinKitLoader extends StatelessWidget {
  final Color color;
  const SpinKitLoader({super.key, this.color = ColorConstants.primaryColor});

  @override
  Widget build(BuildContext context) => SpinKitFadingCircle(color: color);
}

class BackgroundFadingSpinKitLoader extends StatelessWidget {
  const BackgroundFadingSpinKitLoader({super.key});

  @override
  Align build(BuildContext context) => Align(
        alignment: Alignment.center,
        child: Material(
          elevation: 10,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 25, horizontal: 35),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SpinKitLoader(),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
}

class LoadingWidget extends StatelessWidget {
  final double? height, width;
  const LoadingWidget({super.key, this.height, this.width});

  @override
  SizedBox build(BuildContext context) => SizedBox(
        height: height,
        width: width,
        child: const BackgroundFadingSpinKitLoader(),
      );
}
