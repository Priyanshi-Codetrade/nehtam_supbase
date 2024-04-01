import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomSvgImage extends StatelessWidget {
  const CustomSvgImage({
    super.key,
    required this.image,
    this.textColor = const Color(0XFF000000),
    this.count,
    this.height = 22.0,
    this.width = 22.0,
  });
  final String image;
  final Color textColor;
  final int? count;
  final double? height, width;

  @override
  Widget build(BuildContext context) {
    return count != null
        ? Stack(
            children: [
              SvgPicture.asset(image,
                  width: width,
                  height: height,
                  colorFilter: ColorFilter.mode(
                    textColor,
                    BlendMode.srcIn,
                  )),
              Positioned(
                right: 15,
                top: 8.15,
                child: Text(
                  textAlign: TextAlign.center,
                  count.toString(),
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 8,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          )
        : SvgPicture.asset(image,
            width: width,
            height: height,
            colorFilter: ColorFilter.mode(
              textColor,
              BlendMode.srcIn,
            ));
  }
}
